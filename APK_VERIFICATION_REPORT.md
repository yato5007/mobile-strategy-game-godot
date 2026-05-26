# APK_VERIFICATION_REPORT.md

Date: 2026-05-26

## APK Path

`godot/builds/banner_of_the_majlis.apk`

## APK Size

- `ls -lh`: `119M`
- `file`: `Android package (APK), with gradle app-metadata.properties`

## SHA256

```text
f9b5bc5effed1c022fcb4bf051be0affbfde46829d7cce19d85442da1721cbe6  godot/builds/banner_of_the_majlis.apk
```

## Zip Integrity Test

Command:

```bash
unzip -t godot/builds/banner_of_the_majlis.apk
```

Result: PASS. `unzip` reported `No errors detected in compressed data`.

## Required Files

| Required item | Status | Evidence |
|---|---|---|
| `AndroidManifest.xml` | PRESENT | `AndroidManifest.xml`, 7316 bytes |
| `classes.dex` / dex files | PRESENT | `classes.dex`, `classes2.dex`, `classes3.dex` |
| `resources.arsc` | PRESENT | `resources.arsc`, 54504 bytes |
| Native `lib/` entries | PRESENT | `lib/arm64-v8a`, `lib/armeabi-v7a`, `lib/x86`, `lib/x86_64` Godot libraries |
| Godot export asset | PRESENT | `assets/game.pck`, 130224 bytes |
| Signature metadata | PRESENT | `META-INF/MANIFEST.MF`, `META-INF/ANDROIDD.SF`, `META-INF/ANDROIDD.RSA` |

## Signing Verification

Command:

```bash
/opt/android-sdk/build-tools/35.0.1/apksigner verify --verbose godot/builds/banner_of_the_majlis.apk
```

Result: PASS.

```text
Verifies
Verified using v1 scheme (JAR signing): true
Verified using v2 scheme (APK Signature Scheme v2): true
Verified using v3 scheme (APK Signature Scheme v3): true
Verified using v3.1 scheme (APK Signature Scheme v3.1): false
Verified using v4 scheme (APK Signature Scheme v4): false
Verified for SourceStamp: false
Number of signers: 1
```

Notes:

- Initial verification failed before signing with `DOES NOT VERIFY` and `ERROR: Missing META-INF/MANIFEST.MF`.
- The existing APK artifact was signed with a local Android debug keystore using `apksigner`; the game was not rebuilt and gameplay files were not changed.
- `apksigner` emitted warnings for several `META-INF/*` dependency metadata entries not protected by signature. The APK still verifies under v1, v2, and v3 schemes.

## Badging Metadata

Command:

```bash
/opt/android-sdk/build-tools/35.0.1/aapt dump badging godot/builds/banner_of_the_majlis.apk
```

Key output:

```text
package: name='com.godot.game' versionCode='1' versionName='1.0'
sdkVersion:'21'
targetSdkVersion:'34'
application-isGame
application-debuggable
launchable-activity: name='com.godot.game.GodotApp'
native-code: 'arm64-v8a' 'armeabi-v7a' 'x86' 'x86_64'
```

Caveat: `aapt` reports default Godot package/label metadata and an implied landscape screen feature. The APK is structurally valid and signed for release-asset distribution, but future production export should align the package/labels/orientation metadata with `godot/export_presets.cfg`.

## Release Asset Decision

- Is the APK valid as a zip archive? YES.
- Are Android core files present? YES.
- Does `apksigner verify --verbose` pass? YES, after debug signing.
- Is it suitable to upload as a GitHub Release asset? YES, as a debug/installable test APK artifact.
- Does it need rebuild now? NO.
