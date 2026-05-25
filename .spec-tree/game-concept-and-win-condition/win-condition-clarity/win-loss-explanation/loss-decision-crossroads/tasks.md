# Tasks: Loss Decision Crossroads

- [ ] `res://ui/end_match/loss_crossroads/decision_analyzer.gd` — Static class `DecisionAnalyzer` with static function `analyze(match_history: Dictionary) -> Array`. Implements the 5-step analysis algorithm. Returns array of dictionaries: `{"turn": int, "territory_id": String, "territory_name_key": String, "impact_score": float, "description_key": String, "hypothetical_key": String}`.
- [ ] `decision_analyzer.gd` — `_build_available_map(match_history)` — creates dict of turn -> available territories.
- [ ] `decision_analyzer.gd` — `_filter_high_impact(candidates, all_claims, threshold)` — filters to claims later taken by opponents.
- [ ] `decision_analyzer.gd` — `_score_turn_point(candidate, all_claims, player_id, threshold)` — returns float impact score.
- [ ] `decision_analyzer.gd` — 2v2 variant: `analyze_team(match_history, team_ids: Array)` — aggregates across both team members.
- [ ] `res://ui/end_match/loss_crossroads/DecisionCard.tscn` — Scene: MarginContainer(theme override: amber bg), VBoxContainer, HBoxContainer(icon + turn_label), description_label, hypothetical_label.
- [ ] `res://ui/end_match/loss_crossroads/DecisionCard.gd` — `configure(data: Dictionary, is_rtl: bool)`. Uses `tr()` for description and hypothetical keys. Sets turn text as "Turn %d" % data.turn.
- [ ] `res://ui/end_match/loss_crossroads/LossCrossroads.tscn` — Scene: VBoxContainer with title_label ("Where things shifted" using `tr("end_crossroads_title")`), and a card_container VBoxContainer for decision cards.
- [ ] `res://ui/end_match/loss_crossroads/LossCrossroads.gd` — `populate(match_history: Dictionary)`. Calls analyzer, clears card_container, instantiates DecisionCard for each result, adds to card_container. If empty, shows consolation card.
- [ ] `res://ui/end_match/loss_crossroads/LossCrossroads.gd` — Consolation: single card with "The match was well-played. Your opponent's path was just a step ahead." using `tr("end_crossroads_consolation")`.
- [ ] `res://ui/end_match/loss_crossroads/LossCrossroads.gd` — `animate_cards()` — tweens each DecisionCard `modulate.a` from 0 to 1 with 200ms stagger. Total animation duration capped at 0.8s.
- [ ] Add localization keys: `end_crossroads_title`, `end_crossroads_turn`, `end_crossroads_hypothetical`, `end_crossroads_consolation`, `end_crossroads_description_missed_claim`.
