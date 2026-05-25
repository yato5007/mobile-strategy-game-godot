# Specification — Anti Dominant Strategy And Active Play

- Node slug: `anti-dominant-strategy-and-active-play`
- Depth: 2
- Parent: `.spec-tree/game-concept-and-win-condition/`
- Purpose: Prevent any single strategy from dominating and reward active participation throughout the fixed-length Claim match.
- Claim reference: DEC-GCWC-001 fixed-length visible Claim win condition for Banner of the Majlis.
- Scope: Spec Kit planning artifact only; no Godot game implementation is created here.

## Player-Facing Outcome
1. Players experience anti-dominant strategy governance and active participation across FFA and 2v2 modes as visible board pressure, not as hidden math.
2. A new player can tell that repeating one Claim pattern is becoming risky.
3. An active player sees rewards for contesting, shifting, or responding before the final phase.
4. A passive player receives warnings and loses standing if they avoid meaningful Claim participation too long.
5. In 2v2, teammate support counts as active contribution when it visibly advances the team Claim race.
6. In FFA, the system avoids automatic dogpiling by showing counters as opportunities, not mandatory orders.

## Godot Data Model
7. Future rules should expose `anti_dominant_strategy_and_active_play_state.gd` as typed public state derived from Claim events.
8. Future tuning should use `anti_dominant_strategy_and_active_play_rules.tres` Resource data for thresholds, caps, and mode overrides.
9. Future UI should use Control, HBoxContainer, VBoxContainer, Label, TextureRect, ColorRect, ProgressBar, and AnimationPlayer nodes.
10. Future event timing should use Timer nodes or deterministic rule ticks serialized through mock multiplayer.
11. Future logic should emit Signals such as strategy_pattern_changed, active_window_changed, idle_warning_changed, and counter_opportunity_opened.
12. UI nodes must subscribe to Signals and must not decide Claim scoring, penalties, or bonuses.

## Concrete Mechanics
13. Planned mechanic: public strategy variety score tied to public Claim state and capped for fairness.
14. Planned mechanic: active Claim participation window tied to public Claim state and capped for fairness.
15. Planned mechanic: passive hiding fail-state checks tied to public Claim state and capped for fairness.
16. Planned mechanic: mode-aware FFA and 2v2 caps tied to public Claim state and capped for fairness.

## Portrait Layout
17. Top safe area: compact player/team Claim strip with small pattern and activity indicators.
18. Center board: objective icons show rotation, surge, counter, or idle pressure through rings and pulses.
19. Bottom thumb zone: selected explanation card with one primary action and short localized reason.
20. Side gutters: use minimal vertical icon stacks; avoid horizontal leaderboards.
21. Touch targets must remain at least 44x44 logical pixels for Android and iOS comfort.

## Acceptance
22. Must directly support DEC-GCWC-001 fixed-length visible Claim ending.
23. Must reject any design where waiting until the final phase is consistently optimal.
24. Must keep all player-facing text localization-key driven.
25. Must include balance hooks for repetitive strategy, passive win rate, active participation, and strategy shift frequency.
