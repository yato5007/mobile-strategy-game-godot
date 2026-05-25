# Specification — Anti Snowball And Balance

- Node slug: `anti-snowball-and-balance`
- Depth: 3
- Parent: `/workspaces/mobile-strategy-game-godot/.spec-tree/game-concept-and-win-condition/strategic-tension-and-comeback/`
- Purpose: Prevent runaway leaders by making later Claims require visible strategic investment while preserving leader agency and earned advantage.
- Claim reference: DEC-GCWC-001 fixed-length visible Claim win condition for Banner of the Majlis.
- Scope: Spec Kit planning artifact only; no Godot game implementation is created here.

## Player-Facing Outcome
1. Players always understand who is ahead, why the match is still open, and what action can change the Claim race.
2. The UI exposes comeback opportunities as board events, banner pressure, and phase beats rather than raw math tables.
3. A trailing player should see at least one high-skill path to narrow the Claim gap before the final phase.
4. A leader should see risk building and choose between defense, acceleration, or disruption.

## Godot Data Model
5. Future `res://game/rules/tension_state.gd` should store phase_id, claim_gap, leader_id, comeback_windows, and contested_objective_ids.
6. Future `res://game/rules/comeback_rule_set.tres` should define caps, thresholds, and mode overrides as Resource data.
7. Future `res://ui/hud/tension_hud.tscn` should be a Control scene with TextureRect banners, Label nodes using localization keys, and ProgressBar tension meters.
8. Future `res://ui/hud/objective_marker.tscn` should expose hot, contested, and reset states through TextureRect, ColorRect, and AnimationPlayer.
9. Future Game Rules should emit Signal events such as phase_changed, objective_pressure_changed, and claim_gap_changed.
10. Future UI should subscribe to signals and never resolve Claim outcomes itself.

## Portrait Layout
11. Top safe area: compact Claim strip with four player or two team markers.
12. Center: board/objective field with tappable banners and pressure rings.
13. Bottom thumb zone: selected objective detail card, action buttons, and comeback explanation key.
14. Side gutters: minimal icons only; avoid dense standings tables.
15. All touch targets should target at least 44x44 logical pixels for Android/iOS comfort.

## States
16. Neutral state: no comeback window active, phase tension normal.
17. Contested state: two or more players commit to a banner and pressure visual appears.
18. Comeback-open state: trailing eligible player can gain bounded benefit through contested action.
19. Leader-pressure state: near-threshold leader creates hot objectives and public counterplay.
20. Phase-shift state: objective distribution changes after countdown and visible warning.
21. Final-showdown state: high-value banners appear with strong warning and final Claim stakes.

## Acceptance
22. The design must support FFA and 2v2 without separate rule forks.
23. The player must never need to inspect a spreadsheet-like list to understand tension.
24. All player-facing text must be localization-key driven.
25. Future balance simulator must validate comeback frequency, leader win rate, and passive strategy failure.
