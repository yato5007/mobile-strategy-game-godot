# Tasks: FFA Final Standings Board

## Godot Scene Tasks
- [ ] Create `res://ui/end_match/ffa/FfaFinalStandingsBoard.tscn` with root `Control`.
- [ ] Add `VBoxContainer` named `BoardStack`.
- [ ] Add `Label` named `StandingsTitleLabel` using key `ffa_standings_title`.
- [ ] Add four instanced `StandingRow.tscn` children under `BoardStack`.
- [ ] Create `res://ui/end_match/ffa/StandingRow.tscn` as `PanelContainer`.
- [ ] Inside row, add `HBoxContainer` with `Label` rank badge, `TextureRect` avatar, and `VBoxContainer` text stack.
- [ ] Add `Label` nodes for player name, claim count, and claim summary.
- [ ] Add optional `Label` named `TieBadgeLabel` hidden by default.

## Script Tasks
- [ ] Create `FfaFinalStandingsBoard.gd` extending `Control`.
- [ ] Implement `configure(player_results: Array, local_player_id: String, threshold: int) -> void`.
- [ ] Implement `_sort_or_validate_rank_order(player_results: Array) -> Array`.
- [ ] Implement `_format_claim_summary(result: Dictionary) -> String` with localization.
- [ ] Create `StandingRow.gd` with `configure(result: Dictionary, is_local: bool, threshold: int)`.

## Localization Tasks
- [ ] Add keys: `ffa_standings_title`, `ffa_rank_1`, `ffa_rank_2`, `ffa_rank_3`, `ffa_rank_4`.
- [ ] Add keys: `ffa_claim_count_format`, `ffa_claim_summary_empty`, `ffa_tie_badge`, `ffa_local_player_marker`.
- [ ] Validate Arabic rank labels and plural claim forms.
