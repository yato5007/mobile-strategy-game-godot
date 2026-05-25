# Specification — Objective Variety Rotation

- Node slug: `objective-variety-rotation`
- Depth: 4
- Parent: `.spec-tree/game-concept-and-win-condition/anti-dominant-strategy-and-active-play/strategy-diversity-enforcement/`
- Purpose: Rotate objective families so one Claim type cannot dominate every phase or mode.
- Claim reference: DEC-GCWC-001 fixed-length visible Claim win condition for Banner of the Majlis.
- Scope: Spec Kit planning artifact only; no Godot game implementation is created here.

## Player-Facing Outcome
1. Players experience objective rotation rules that vary Claim sources while preserving player readability as visible board pressure, not as hidden math.
2. A new player can tell that repeating one Claim pattern is becoming risky.
3. An active player sees rewards for contesting, shifting, or responding before the final phase.
4. A passive player receives warnings and loses standing if they avoid meaningful Claim participation too long.
5. In 2v2, teammate support counts as active contribution when it visibly advances the team Claim race.
6. In FFA, the system avoids automatic dogpiling by showing counters as opportunities, not mandatory orders.

## Godot Data Model
7. Future rules should expose `objective_variety_rotation_state.gd` as typed public state derived from Claim events.
8. Future tuning should use `objective_variety_rotation_rules.tres` Resource data for thresholds, caps, and mode overrides.
9. Future UI should use Control, HBoxContainer, VBoxContainer, Label, TextureRect, ColorRect, ProgressBar, and AnimationPlayer nodes.
10. Future event timing should use Timer nodes or deterministic rule ticks serialized through mock multiplayer.
11. Future logic should emit Signals such as strategy_pattern_changed, active_window_changed, idle_warning_changed, and counter_opportunity_opened.
12. UI nodes must subscribe to Signals and must not decide Claim scoring, penalties, or bonuses.

## Concrete Mechanics
13. Planned mechanic: rotation_schedule.tres tied to public Claim state and capped for fairness.
14. Planned mechanic: ObjectiveType Resource tied to public Claim state and capped for fairness.
15. Planned mechanic: Timer-driven phase rotation tied to public Claim state and capped for fairness.
16. Planned mechanic: Control objective carousel tied to public Claim state and capped for fairness.

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
