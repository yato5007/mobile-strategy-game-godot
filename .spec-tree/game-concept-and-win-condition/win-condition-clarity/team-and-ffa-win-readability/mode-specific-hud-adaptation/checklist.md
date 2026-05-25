# Checklist: Mode-Specific HUD Adaptation

## Shared HUD
- [x] HUD is during-match, not end-match only.
- [x] HUD uses mode from match config.
- [x] HUD does not own game rule logic.
- [x] Claim threshold progress is visible.
- [x] Local player/team is emphasized.
- [x] Leader or threat state can be shown.

## 2v2 HUD
- [x] Shows team grouped progress.
- [x] Shows teammate relationship.
- [x] Shows opponent pair as shared win path.
- [x] Keeps combined team claims primary.
- [x] Personal contribution pips are secondary.

## FFA HUD
- [x] Shows all four players.
- [x] Shows individual claim progress.
- [x] Supports rank ordering during play.
- [x] Highlights local player without hiding rivals.
- [x] Works in portrait compact layout.

## Godot/RTL Readiness
- [x] Tasks reference `CanvasLayer`.
- [x] Tasks reference `Control`, `MarginContainer`, `VBoxContainer`, `HBoxContainer`, `GridContainer`, and `PanelContainer`.
- [x] Arabic mode labels are planned.
- [x] Color is not the only state indicator.
