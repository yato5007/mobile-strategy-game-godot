# BUILD_DELIVERABLES.md

## Current Status

- ✅ Godot project created: `/godot/project.godot` with portrait 360×640, mobile renderer.
- ✅ 20 game files: 10 GDScripts, 8 scenes, 1 icon, 1 project config.
- ✅ Main menu with FFA/2v2 mode selection and Arabic/English toggle.
- ✅ Majlis game board with carpet motif, geometric arabesque art, 3 objective slots.
- ✅ Player claim banners (4 players, color-coded: Crimson/Sapphire/Emerald/Gold).
- ✅ Seal commit animation, threat ring (3 intensities: watch/danger/urgent).
- ✅ Phase lantern indicators (Opening→Rising→Final).
- ✅ 9-phase match loop with bot simulation and auto-resolution.
- ✅ Final Majlis Reveal screen with standings.
- ✅ Arabic/English localization (autoload singleton).
- ✅ Mobile-friendly touch input.

## Android APK

**PENDING** — Godot 4.x headless/export binary not yet installed in this environment. Steps required:

1. Install Godot 4.4.1+ on the build machine:
   ```
   wget https://github.com/godotengine/godot/releases/download/4.4.1-stable/Godot_v4.4.1-stable_linux.x86_64.zip
   unzip Godot_v4.4.1-stable_linux.x86_64.zip
   sudo mv Godot_v4.4.1-stable_linux.x86_64 /usr/local/bin/godot
   ```
2. Install Android export templates:
   ```
   wget https://github.com/godotengine/godot/releases/download/4.4.1-stable/Godot_v4.4.1-stable_export_templates.tpz
   # Extract to ~/.local/share/godot/export_templates/<version>/
   ```
3. Configure Android keystore (debug.keystore from Android SDK or self-signed).
4. Export APK:
   ```
   godot --export-debug Android --headless
   ```
5. Result: `godot/builds/banner_of_the_majlis.apk`

## iOS Export

**DOCUMENTED** — Requires macOS with Xcode and Godot iOS export templates:

1. Install Godot 4.x on macOS.
2. Install iOS export templates.
3. Configure signing certificate and provisioning profile (Apple Developer account required).
4. Export Xcode project from Godot:
   ```
   godot --export-debug iOS --headless
   ```
5. Open the `.xcodeproj` in Xcode and build to device/archive.

## Portrait Configuration

Already configured in `project.godot`:
- `display/window/size/viewport_width=360`
- `display/window/size/viewport_height=640`
- `display/handheld/orientation=1` (portrait)
