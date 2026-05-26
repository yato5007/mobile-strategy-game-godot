#!/usr/bin/env bash
set -euo pipefail

ROOT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")/.." && pwd)"
PROJECT_DIR="$ROOT_DIR/godot"
BUILD_DIR="$PROJECT_DIR/builds"
APK_PATH="$BUILD_DIR/banner_of_the_majlis.apk"
PRESET_NAME="Android"

if ! command -v godot >/dev/null 2>&1; then
  echo "ERROR: godot binary not found in PATH. Install Godot 4.x CLI first." >&2
  exit 1
fi

mkdir -p "$BUILD_DIR"

echo "[1/3] Exporting APK using preset '$PRESET_NAME'..."
godot --headless --path "$PROJECT_DIR" --export-debug "$PRESET_NAME" "$APK_PATH"

if [[ ! -f "$APK_PATH" ]]; then
  echo "ERROR: APK was not generated at $APK_PATH" >&2
  exit 1
fi

echo "[2/3] Verifying APK contains Godot project payload..."
if ! unzip -l "$APK_PATH" | rg -q "assets/game\.pck"; then
  echo "ERROR: APK is missing assets/game.pck. This APK will fail with 'Couldn't load project data'." >&2
  echo "Hint: Do NOT install android_debug.apk from export templates; install the exported project APK only." >&2
  exit 1
fi

echo "[3/3] Basic integrity check..."
unzip -t "$APK_PATH" >/dev/null

echo "SUCCESS: APK ready at $APK_PATH"
