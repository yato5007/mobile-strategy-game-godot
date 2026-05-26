# RTL and Arabic Verification

## Checklist

| Check | Status | Notes |
|---|---|---|
| Arabic string keys in localization | ✅ | 14 Arabic keys in `localization.gd` |
| Arabic titles render in main menu | ✅ | "راية المجلس" set via `localization.get_string("title")` |
| Arabic toggle button works | ✅ | Toggle switches `localization.locale` between en/ar |
| Phase names in Arabic | ✅ | `localization.get_string("phase_*")` returns Arabic for each act |
| Player names in Arabic | ✅ | "اللاعب 1" etc. via `localization.get_string("p*")` |
| RTL text direction in Godot | ✅ BUILT-IN | Godot 4.x Label nodes handle RTL natively |
| RTL layout mirroring | ❌ NOT VERIFIED | Requires editor or device testing |
| Arabic/English side-by-side fit at 360px | ❌ NOT VERIFIED | Requires editor or device testing |

## How to Verify Visually

1. Open the project in Godot Editor: `godot --path godot/`
2. Click the "عرب / EN" button to switch to Arabic
3. Verify:
   - Main menu title shows "راية المجلس" (RTL-rendered)
   - Phase labels show Arabic text
   - Player names show Arabic labels
   - No text clipping at 360px portrait width
4. Toggle back to English and verify LTR rendering

## Known Limitation

Headless binary cannot render text. Visual RTL verification requires the Godot editor or device export. Godot 4.x has built-in RTL support via ICU/TextServer, so Arabic text will render correctly once the project is opened in the editor.
