# Tasks: Team Contribution Display

## Godot Scene Tasks
- [ ] Create `res://ui/end_match/team/TeamContributionDisplay.tscn` with root `Control`.
- [ ] Add root `VBoxContainer` named `ContentStack`.
- [ ] Add `PanelContainer` named `TeamHeaderPanel` with `HBoxContainer` for crest and labels.
- [ ] Add `TextureRect` named `TeamCrest` using placeholder crest until art assets exist.
- [ ] Add `Label` named `TeamResultLabel` for localized win/loss team result.
- [ ] Add `Label` named `TeamClaimCountLabel` for combined claims.
- [ ] Add two instanced `ContributionCard.tscn` nodes inside a `VBoxContainer`.
- [ ] Add `PanelContainer` named `SynergyPanel` with `Label` named `SynergyLabel`.

## Script Tasks
- [ ] Create `res://ui/end_match/team/TeamContributionDisplay.gd` extending `Control`.
- [ ] Implement `configure(team_result: Dictionary, local_player_id: String) -> void`.
- [ ] Implement `_format_team_claims(team_claims: int, threshold: int) -> String` using localization.
- [ ] Implement `_select_synergy_text(team_result: Dictionary) -> String` with fallback.
- [ ] Apply local player highlight by setting a `StyleBoxFlat` override on that card.

## Contribution Card Tasks
- [ ] Create `res://ui/end_match/team/ContributionCard.tscn` as `PanelContainer`.
- [ ] Add `HBoxContainer`, `TextureRect` avatar, `VBoxContainer`, and three `Label` nodes.
- [ ] Create `ContributionCard.gd` with `configure(member: Dictionary, is_local: bool)`.
- [ ] Add localization keys: `team_contrib_claims`, `team_contrib_key_moment`, `team_contrib_synergy_fallback`, `team_result_claim_total`.
