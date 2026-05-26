#!/usr/bin/env bash
set -euo pipefail

ROOT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")/.." && pwd)"
PROJECT_DIR="$ROOT_DIR/godot"
BUILD_DIR="$PROJECT_DIR/builds"
APK_PATH="$BUILD_DIR/banner_of_the_majlis.apk"
PRESET_NAME="Android"
TEMPLATE_VERSION="4.4.1.stable"
ANDROID_SOURCE_ZIP="$HOME/.local/share/godot/export_templates/$TEMPLATE_VERSION/android_source.zip"

require_bin() {
  local bin="$1"
  if ! command -v "$bin" >/dev/null 2>&1; then
    echo "ERROR: required command '$bin' is not available in PATH." >&2
    exit 1
  fi
}

validate_apk_payload() {
  local apk="$1"
  echo "[verify] Checking APK payload..."

  if ! unzip -l "$apk" | rg -q "assets/game\.pck"; then
    echo "ERROR: APK is missing assets/game.pck. This will crash on startup with 'Couldn't load project data'." >&2
    return 1
  fi

  if unzip -l "$apk" | rg -q "android_debug\.apk$"; then
    echo "ERROR: APK appears to include/derive from template output unexpectedly." >&2
    return 1
  fi

  unzip -t "$apk" >/dev/null
  echo "[verify] APK integrity: OK"
}

build_with_godot_export() {
  echo "[build] Trying Godot direct export preset '$PRESET_NAME'..."
  godot --headless --path "$PROJECT_DIR" --export-debug "$PRESET_NAME" "$APK_PATH"
}

build_with_gradle_fallback() {
  local tmp_build
  tmp_build="$(mktemp -d)"
  trap 'rm -rf "$tmp_build"' RETURN

  echo "[build] Falling back to Android template Gradle build..."
  [[ -f "$ANDROID_SOURCE_ZIP" ]] || {
    echo "ERROR: Android source template not found: $ANDROID_SOURCE_ZIP" >&2
    return 1
  }

  unzip -qo "$ANDROID_SOURCE_ZIP" -d "$tmp_build"
  godot --headless --path "$PROJECT_DIR" --export-pack "$PRESET_NAME" "$tmp_build/assets/game.pck"

  (
    cd "$tmp_build"
    ./gradlew assembleDebug
  )

  cp "$tmp_build/build/outputs/apk/standard/debug/android_debug.apk" "$APK_PATH"
}

main() {
  require_bin godot
  require_bin unzip
  require_bin rg

  mkdir -p "$BUILD_DIR"
  rm -f "$APK_PATH"

  if ! build_with_godot_export; then
    echo "[warn] Direct export failed. Attempting fallback build path..."
    build_with_gradle_fallback
  fi

  [[ -f "$APK_PATH" ]] || {
    echo "ERROR: APK was not generated at $APK_PATH" >&2
    exit 1
  }

  validate_apk_payload "$APK_PATH"
  echo "SUCCESS: APK ready at $APK_PATH"
}

main "$@"
