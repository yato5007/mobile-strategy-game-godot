# Tasks — Opponent Claim Pattern Display

- Node slug: `opponent-claim-pattern-display`
- Depth: 4
- Parent: `.spec-tree/game-concept-and-win-condition/anti-dominant-strategy-and-active-play/strategy-counterplay-visibility/`
- Purpose: Show opponent Claim preferences as icons and short localized labels instead of dense statistics.
- Claim reference: DEC-GCWC-001 fixed-length visible Claim win condition for Banner of the Majlis.
- Scope: Spec Kit planning artifact only; no Godot game implementation is created here.

## Future Godot Tasks
1. Create future `res://game/rules/opponent_claim_pattern_display_state.gd` with typed fields for player_id, team_id, Claim family, activity window, and public reason keys.
2. Create future `res://game/rules/opponent_claim_pattern_display_rules.tres` Resource with caps, thresholds, cooldowns, and FFA/2v2 overrides.
3. Add Signal definitions for `opponent_claim_pattern_display_changed`, `active_play_window_changed`, `strategy_warning_changed`, and `counter_opportunity_opened` where applicable.
4. Create future `res://ui/hud/opponent_claim_pattern_display_widget.tscn` as a Control scene using Label, TextureRect, ColorRect, and AnimationPlayer.
5. Add Timer or deterministic tick support for windows that use time, phase beats, or surge countdowns.
6. Add localized keys in future Arabic and English translation files for every warning, hint, phase, and reason.
7. Add RTL mirroring checks for HBoxContainer order, icon direction, bottom-card alignment, and numeric Claim presentation.
8. Add touch-size validation so all tappable warnings and objective cards meet 44x44 logical pixels.
9. Add balance simulator fixtures for repetitive opening, passive waiting, aggressive contesting, and adaptive mixed play.
10. Add FFA tests for dogpile risk and 2v2 tests for teammate contribution fairness.
11. Add bot-facing API that returns only public pattern and activity summaries.
12. Add mock multiplayer serialization for public state and event ids.
13. Add visual regression screenshots after implementation authorization, not during this planning node.
14. Add optional SFX/VFX hooks only after Presentation branch defines asset policy.
15. Add analytics counters for offline balance testing without personal data collection.
16. Document every threshold in Resource comments so designers can tune without code rewrites.
17. Ensure future scripts use GDScript in Godot 4.x unless a later decision changes language.
18. Keep Claim win resolution owned by Game Rules and never by UI scenes.
19. Keep all player-facing strings behind localization keys; do not hardcode Arabic or English in scripts.
20. Run future QA comprehension tests with Claim display visible at all times.
21. Run future balance sweeps for passive win rate below acceptable threshold.
22. Run future simulator checks for single-strategy overperformance across seeds and modes.
23. Update REQUIREMENTS_TRACE.md with implementation and validation artifacts after future work.
24. Update SYSTEM_CONTRACTS.md only if ownership or interfaces change.
25. Do not implement these tasks during this node; they are instructions for later authorized leaf execution.
