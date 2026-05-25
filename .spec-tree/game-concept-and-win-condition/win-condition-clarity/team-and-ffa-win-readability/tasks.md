# Tasks: Team and FFA Win Readability

## Shared Data Tasks
- [ ] Define `MatchResultData` dictionary contract with `match_mode`, `local_player_id`, `threshold`, `player_results`, and optional `team_results`.
- [ ] Add Godot-facing comments for expected keys before implementation in `WinLossExplanation.gd`.
- [ ] Reserve localization keys: `mode_team_2v2`, `mode_ffa_4p`, `result_team_won`, `result_player_won`.

## 2v2 UI Tasks
- [ ] Create planned scene `res://ui/end_match/team/TeamResultPanel.tscn` as `Control` root with `VBoxContainer` content.
- [ ] Add `PanelContainer` for team header with team crest, team name `Label`, and combined claim count `Label`.
- [ ] Add two `HBoxContainer` contribution rows for teammate portraits, name labels, claim count labels, and key moment labels.
- [ ] Add a `RichTextLabel` or `Label` for synergy highlight copy.
- [ ] Ensure all row labels use `tr()` keys and dynamic values.

## FFA UI Tasks
- [ ] Create planned scene `res://ui/end_match/ffa/FfaStandingsBoard.tscn` as `Control` root with `VBoxContainer`.
- [ ] Add four reusable `StandingRow` `HBoxContainer` nodes.
- [ ] Each row contains rank `Label`, avatar `TextureRect`, player name `Label`, claim count `Label`, and summary `Label`.
- [ ] Add local player highlight via `StyleBoxFlat`, not only color.

## HUD Adaptation Tasks
- [ ] Create planned scene `res://ui/hud/ClaimModeHud.tscn` with `CanvasLayer`, `Control`, and mode-specific containers.
- [ ] Add `TeamHudGroup` using `HBoxContainer` for teammate grouping.
- [ ] Add `FfaHudRankStrip` using `VBoxContainer` or compact `GridContainer` for four standings.
- [ ] Add mode switch method `configure_for_mode(match_mode: String, data: Dictionary)`.
