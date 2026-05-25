# Tasks: Mode-Specific HUD Adaptation

## Godot Scene Tasks
- [ ] Create `res://ui/hud/ClaimModeHud.tscn` with root `CanvasLayer`.
- [ ] Add `Control` named `SafeAreaRoot` anchored to portrait safe area.
- [ ] Add `MarginContainer` for top spacing under device notch/status bar.
- [ ] Add `VBoxContainer` or `HBoxContainer` named `TeamHudContainer` for 2v2 mode.
- [ ] Add `VBoxContainer` or compact `GridContainer` named `FfaHudContainer` for FFA mode.
- [ ] Create `res://ui/hud/ClaimPipRow.tscn` as `HBoxContainer` with reusable claim pip children.
- [ ] Create `res://ui/hud/TeamClaimCard.tscn` as `PanelContainer`.
- [ ] Create `res://ui/hud/FfaPlayerMarker.tscn` as `PanelContainer`.

## Script Tasks
- [ ] Create `ClaimModeHud.gd` extending `CanvasLayer`.
- [ ] Implement `configure_for_mode(match_mode: String, data: Dictionary) -> void`.
- [ ] Implement `update_claims(data: Dictionary) -> void` without rebuilding all nodes.
- [ ] Implement `_show_team_mode(data: Dictionary) -> void`.
- [ ] Implement `_show_ffa_mode(data: Dictionary) -> void`.
- [ ] Use `Tween` for claim pip pulse after claim count changes.

## Localization and Accessibility Tasks
- [ ] Add keys: `hud_mode_team`, `hud_mode_ffa`, `hud_team_claims`, `hud_player_claims`, `hud_leader_threat`.
- [ ] Ensure icons or labels supplement color coding.
- [ ] Validate Arabic labels inside compact HUD containers.
