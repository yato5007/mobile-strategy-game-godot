# BUILD_DELIVERABLES.md

## Current Status

| Item | Status | Notes |
|---|---|---|
| Godot 4.4.1 CLI | ✅ INSTALLED | v4.4.1.stable.official at /usr/local/bin/godot |
| Project validation | ✅ PASS | No errors on `--headless --quit` |
| Portrait config (360×640) | ✅ CONFIGURED | In project.godot |
| export_presets.cfg | ✅ CREATED | Android + iOS presets in godot/export_presets.cfg |
| Android SDK | ✅ INSTALLED | platform 35, build-tools 35.0.1 at /opt/android-sdk |
| Java 17 | ✅ INSTALLED | Required by Godot Android template |
| Android export templates | ✅ INSTALLED | 4.4.1.stable templates in ~/.local/share/godot/export_templates/ |
| Android APK | ✅ GENERATED + VERIFIED | 119MB at godot/builds/banner_of_the_majlis.apk (not in git — exceeds GH 100MB limit) |
| APK integrity | ✅ PASS | Zip test passes, required Android files present, SHA256 recorded in APK_VERIFICATION_REPORT.md, apksigner verifies v1/v2/v3 |
| iOS build | 📋 DOCUMENTED | Requires macOS + Apple Developer account |

## How to Run

```bash
# Godot binary installed at /usr/local/bin/godot
godot --path godot/ --headless --quit  # validate project
godot --path godot/                     # run game (requires display)
```

## APK Runtime Error Fix (Couldn't load project data at path "..")

If Android shows:
- `Couldn't load project data at path ".."`
- `Unable to setup the Godot engine`

then the installed APK is usually the **engine template APK** (for example `android_debug.apk`) and not the exported project APK that includes `assets/game.pck`.

Use the project build script instead:

```bash
./scripts/build_android_apk.sh
```

This script fails fast if `assets/game.pck` is missing, which prevents shipping a broken APK.

## How to Export APK

```bash
# Recommended one-command build + payload validation
./scripts/build_android_apk.sh
```

What this script does:
- tries Godot direct export from preset `Android`
- falls back to Gradle template build if direct export fails
- verifies `assets/game.pck` exists inside final APK
- verifies archive integrity with `unzip -t`

> Important: do not install template APKs directly from export templates.
> Install only `godot/builds/banner_of_the_majlis.apk`.

## APK File

The APK (`godot/builds/banner_of_the_majlis.apk`, 119MB) is NOT tracked in git because it exceeds GitHub's 100MB file size limit. It must be rebuilt locally after cloning or downloaded from the GitHub Release asset after upload. The APK exists in the original development environment at that path.

Integrity verification on 2026-05-26 passed after signing the existing APK with a local Android debug keystore. SHA256:

```text
f9b5bc5effed1c022fcb4bf051be0affbfde46829d7cce19d85442da1721cbe6  godot/builds/banner_of_the_majlis.apk
```

See `APK_VERIFICATION_REPORT.md` for the full verification record and release caveats.

## APK Build History

- 2026-05-25: First successful APK built via manual Gradle build (Java 17, Android SDK 35).
- 2026-05-26: Existing APK signed with local Android debug keystore and verified with `unzip`, `apksigner`, and `aapt`; no gameplay rebuild performed.

## iOS

Requires macOS with Xcode, Godot iOS export templates, and Apple Developer account.
```bash
godot --path godot/ --export-debug iOS --headless
```
Then open the exported Xcode project and build to device.

## Known Blocker

- **Godot display**: No display environment in headless Codespace. Running the editor requires a local machine with GUI.
  ```bash
  godot --path godot/  # requires display
  ```

- **APK in git**: The 119MB APK exceeds GitHub's 100MB file limit. It is stored locally at `godot/builds/banner_of_the_majlis.apk` and must be rebuilt after cloning using the instructions above.
