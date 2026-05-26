# BUILD_DELIVERABLES.md

## Current Status

| Item | Status | Notes |
|---|---|---|
| Godot 4.4.1 CLI | ✅ INSTALLED | v4.4.1.stable.official at /usr/local/bin/godot |
| Project validation | ✅ PASS | No errors on `--headless --quit` |
| Portrait config (360×640) | ✅ CONFIGURED | In project.godot |
| export_presets.cfg | ✅ CREATED | Android + iOS presets in godot/export_presets.cfg |
| Android export templates | ❌ BLOCKED | 1.15GB download timed out in this environment |
| Android APK | ❌ NOT BUILT | Requires export templates + signing keystore |
| iOS build | 📋 DOCUMENTED | Requires macOS + Apple Developer account |

## How to Run

```bash
# Godot binary installed at /usr/local/bin/godot
godot --path godot/ --headless --quit  # validate project
godot --path godot/                     # run game (requires display)
```

## How to Build APK (when templates available)

1. Install export templates:
```bash
wget https://github.com/godotengine/godot/releases/download/4.4.1-stable/Godot_v4.4.1-stable_export_templates.tpz
mkdir -p ~/.local/share/godot/export_templates/4.4.1.stable/
unzip Godot_v4.4.1-stable_export_templates.tpz -d ~/.local/share/godot/export_templates/4.4.1.stable/
```

2. Configure debug keystore:
```bash
keytool -genkey -v -keystore ~/.android/debug.keystore -alias androiddebugkey -keyalg RSA -keysize 2048 -validity 10000
```

3. Export APK:
```bash
godot --path godot/ --export-debug Android --headless
```
Output: `godot/builds/banner_of_the_majlis.apk`

## iOS

Requires macOS with Xcode, Godot iOS export templates, and Apple Developer account.
```bash
godot --path godot/ --export-debug iOS --headless
```
Then open the exported Xcode project and build to device.

## Known Blockers

- Android APK: export templates download failed (1.15GB, network timeout in this environment). Must download manually from https://github.com/godotengine/godot/releases/tag/4.4.1-stable.
- No Godot display environment in headless Codespace; running the editor requires a local machine.
