#!/usr/bin/env bash
set -euo pipefail

ROOT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")/.." && pwd)"
PROJECT_DIR="$ROOT_DIR/godot"
BUILD_DIR="$PROJECT_DIR/builds"
APK_PATH="$BUILD_DIR/banner_of_the_majlis.apk"
PRESET_NAME="Android"
TEMPLATE_VERSION="${GODOT_TEMPLATE_VERSION:-4.4.1.stable}"
TEMPLATE_BASE="$HOME/.local/share/godot/export_templates"
ANDROID_SOURCE_ZIP="$TEMPLATE_BASE/$TEMPLATE_VERSION/android_source.zip"

require_bin() {
  local bin="$1"
  if ! command -v "$bin" >/dev/null 2>&1; then
    echo "ERROR: required command '$bin' is not available in PATH." >&2
    exit 1
  fi
}

find_android_source_zip() {
  if [[ -f "$ANDROID_SOURCE_ZIP" ]]; then
    echo "$ANDROID_SOURCE_ZIP"
    return 0
  fi

  local discovered
  discovered="$(find "$TEMPLATE_BASE" -maxdepth 2 -type f -name android_source.zip 2>/dev/null | sort -r | head -n 1 || true)"
  if [[ -n "$discovered" ]]; then
    echo "$discovered"
    return 0
  fi

  echo ""
}

validate_apk_payload() {
  local apk="$1"
  echo "[verify] Checking APK payload..."

  if ! unzip -l "$apk" | rg -q "assets/game\.pck"; then
    echo "ERROR: APK is missing assets/game.pck. This will crash on startup with 'Couldn't load project data'." >&2
    return 1
  fi

  unzip -t "$apk" >/dev/null
  echo "[verify] APK integrity: OK"

  if command -v apksigner >/dev/null 2>&1; then
    echo "[verify] Running apksigner verify..."
    apksigner verify --verbose "$apk" >/dev/null
    echo "[verify] APK signature: OK"
  fi
}

build_with_godot_export() {
  echo "[build] Trying Godot direct export preset '$PRESET_NAME'..."
  godot --headless --path "$PROJECT_DIR" --export-debug "$PRESET_NAME" "$APK_PATH"
}

build_with_gradle_fallback() {
  local tmp_build android_zip
  tmp_build="$(mktemp -d)"
  trap 'rm -rf "$tmp_build"' RETURN

  android_zip="$(find_android_source_zip)"
  if [[ -z "$android_zip" ]]; then
    echo "ERROR: Could not find android_source.zip in $TEMPLATE_BASE" >&2
    return 1
  fi

  echo "[build] Falling back to Android template Gradle build using: $android_zip"

  unzip -qo "$android_zip" -d "$tmp_build"
  godot --headless --path "$PROJECT_DIR" --export-pack "$PRESET_NAME" "$tmp_build/assets/game.pck"

  (
    cd "$tmp_build"
    ./gradlew --no-daemon assembleDebug
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
