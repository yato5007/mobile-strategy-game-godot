# Tasks — Comeback Threshold Adaptation

- Node slug: `comeback-threshold-adaptation`
- Depth: 4
- Parent: `/workspaces/mobile-strategy-game-godot/.spec-tree/game-concept-and-win-condition/strategic-tension-and-comeback/anti-snowball-and-balance/`
- Purpose: Define a tightly bounded max-one-Claim threshold adaptation for trailing players when the gap is severe and strategically earned.
- Claim reference: DEC-GCWC-001 fixed-length visible Claim win condition for Banner of the Majlis.
- Scope: Spec Kit planning artifact only; no Godot game implementation is created here.

## Future Godot Tasks
1. Create `res://game/rules/tension_state.gd` as a typed state holder for phase, gap, pressure, and comeback windows.
2. Create `res://game/rules/comeback_manager.gd` to calculate eligible earned comeback windows from public match state.
3. Create `res://game/rules/tension_curve.tres` as a Resource with phase thresholds and capped modifiers.
4. Create `res://game/rules/claim_cost_curve.tres` for progressive Claim effort values.
5. Create `res://ui/hud/tension_hud.tscn` using Control, HBoxContainer, VBoxContainer, TextureRect, Label, and ProgressBar.
6. Create `res://ui/hud/objective_pressure_marker.tscn` using Control, TextureRect, ColorRect, and AnimationPlayer.
7. Create `res://ui/hud/comeback_detail_card.tscn` for bottom thumb-zone explanation and action preview.
8. Add signal hookups for phase_changed, comeback_window_opened, comeback_window_closed, and objective_pressure_changed.
9. Add localization keys to future `res://localization/ar.po` and `res://localization/en.po`; do not place player-facing literals in scenes or scripts.
10. Add RTL mirroring tests for HBoxContainer ordering and bottom card alignment.
11. Add simulator fixtures under future `res://tests/balance/` for leader, trailer, passive, and team cases.
12. Add touch tests for 44x44 logical pixel target minimum on objective markers.
13. Add visual-state tests so hot, contested, reset, and final-showdown states are distinguishable without reading paragraphs.
14. Add bot-facing API method `get_public_tension_options(player_id)` without exposing hidden information.
15. Add mock multiplayer serialization for phase id, public pressure ids, and comeback window ids.
16. Add QA scenario data for 4-player FFA and 2v2 modes.
17. Add accessibility metadata for icon plus color redundancy.
18. Add analytics hooks for future balance metrics without collecting personal data.
19. Add design review screenshots only after implementation is authorized.
20. Keep every displayed phrase behind localization keys such as tension.phase.current, comeback.window.available, and objective.pressure.hot.
21. Do not implement these files during this Spec Kit node unless a later leaf task explicitly authorizes it.
22. Update SYSTEM_CONTRACTS.md in the future if Game Rules ownership changes.
23. Update ASSET_MANIFEST.md later if new banner icons, pressure rings, SFX, or VFX are produced.
24. Future implementation must use Godot 4.x GDScript by default.
25. Future implementation must preserve portrait-only Android/iOS assumptions.
