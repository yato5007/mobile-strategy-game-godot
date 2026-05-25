# Tasks: Win/Loss Explanation

## Implementation Tasks

### Core Explanation Modal
- [ ] `res://ui/end_match/WinLossExplanation.tscn` — Create CanvasLayer scene with VBoxContainer, scroll container, top banner section, middle section placeholder, bottom button row.
- [ ] `res://ui/end_match/WinLossExplanation.gd` — Create GDScript with:
  - `show(data: Dictionary)` — entry point that checks winner vs local player
  - `show_win_postmortem(data: Dictionary)` — configures win layout
  - `show_loss_reasons(data: Dictionary)` — configures loss layout
  - `populate_closeness_gauge(data: Dictionary)` — fills closeness section
  - `_on_lobby_pressed()` — emit `return_to_lobby` signal
  - `_on_replay_pressed()` — emit `play_again` signal
- [ ] Connect `MatchManager.match_ended` signal to `WinLossExplanation.show()`.
- [ ] Add localization keys: `end_win_title`, `end_loss_title`, `end_btn_lobby`, `end_btn_replay`, `end_closeness_title`, `end_postmortem_title`, `end_crossroads_title`.

### Win Postmortem Sub-node
- [ ] `res://ui/end_match/win_postmortem/WinPostmortem.tscn` — HBoxContainer inside ScrollContainer for horizontal timeline.
- [ ] `res://ui/end_match/win_postmortem/WinPostmortem.gd` — Populate from claim data, instantiate claim cards.
- [ ] `res://ui/end_match/win_postmortem/ClaimCard.tscn` — Individual claim card: order number badge, territory name, turn number.
- [ ] `res://ui/end_match/win_postmortem/ClaimCard.gd` — Configure card from claim data dict.
- [ ] Add localization keys: `end_claim_card_turn`, `end_claim_order_label`, `end_postmortem_empty`.

### Loss Decision Crossroads Sub-node
- [ ] `res://ui/end_match/loss_crossroads/LossCrossroads.tscn` — VBoxContainer with decision cards.
- [ ] `res://ui/end_match/loss_crossroads/LossCrossroads.gd` — Analyze match history, select 1-3 turning points, instantiate cards.
- [ ] `res://ui/end_match/loss_crossroads/DecisionCard.tscn` — Card with turn number, description, hypothetical text.
- [ ] `res://ui/end_match/loss_crossroads/DecisionCard.gd` — Configure card from decision data.
- [ ] `res://ui/end_match/loss_crossroads/decision_analyzer.gd` — Static analysis function: compare player's claim timing against optimal timing derived from match state.
- [ ] Add localization keys: `end_crossroads_turn`, `end_hypothetical`, `end_crossroads_empty`, `end_crossroads_title`.

### Closeness Gauge Sub-node
- [ ] `res://ui/end_match/closeness/ClosenessGauge.tscn` — VBoxContainer of player bar rows.
- [ ] `res://ui/end_match/closeness/ClosenessGauge.gd` — Build bar rows from all players' claim counts, animate fill.
- [ ] `res://ui/end_match/closeness/PlayerClaimBar.tscn` — Horizontal bar: player color fill, label, count text.
- [ ] `res://ui/end_match/closeness/PlayerClaimBar.gd` — Animate width from 0 to proportion, emit `filled` signal.
- [ ] Add localization keys: `end_closeness_title`, `end_closeness_threshold_label`.

### RTL / Localization
- [ ] Add Arabic translations for all `end_*` keys.
- [ ] Test RTL layout: timeline reverses, button order swaps, text alignment flips.
- [ ] Add RTL-aware horizontal scroll for the postmortem timeline.
