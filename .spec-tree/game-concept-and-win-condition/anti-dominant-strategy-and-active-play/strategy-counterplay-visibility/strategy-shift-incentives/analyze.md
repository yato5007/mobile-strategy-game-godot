# Analyze — Strategy Shift Incentives

- Node slug: `strategy-shift-incentives`
- Depth: 4
- Parent: `.spec-tree/game-concept-and-win-condition/anti-dominant-strategy-and-active-play/strategy-counterplay-visibility/`
- Purpose: Reward timely mid-match strategy shifts so players adapt instead of repeating openings.
- Claim reference: DEC-GCWC-001 fixed-length visible Claim win condition for Banner of the Majlis.
- Scope: Spec Kit planning artifact only; no Godot game implementation is created here.

## Mobile UX Analysis
1. Portrait screens have limited horizontal space, so anti-dominance feedback must use vertical stacks and compact icons.
2. The player should not be forced to compare numeric tables to detect a dominant or passive strategy.
3. TextureRect Claim-family icons and small ProgressBar meters can show pressure while preserving board space.
4. Bottom cards should explain one selected warning or counter at a time in the thumb zone.
5. AnimationPlayer cues should be calm and strategic, not frantic reaction-game prompts.
6. Timer visuals should communicate windows and phases but not require reflex play.
7. Android and iOS safe areas require top Claim strip margins and bottom action-card padding.

## Arabic RTL Analysis
8. Arabic layouts must use RTL-aware containers and mirrored HBoxContainer order for player/team strips.
9. Directional arrows for counters, pattern shifts, and activity flow must flip under RTL.
10. Claim counts and timers must remain numerically unambiguous in Arabic and English locales.
11. Arabic warning text can be longer, so Label nodes need autowrap, max-lines, and icon-first fallback.
12. Do not bake Arabic text into TextureRect assets; icons should be language-neutral or localized through Label overlays.
13. Counter hints must avoid idioms that translate poorly; use simple action verbs and reason keys.
14. QA must inspect both RTL and LTR screenshots for clipped bottom cards and reversed icon semantics.

## Balance Analysis
15. The main risk for visible shift rewards, mode-aware caps, and readable adaptation moments is replacing one dominant strategy with another dominant counter.
16. Caps and cooldowns are needed so momentum, penalties, and counters do not become automatic victories.
17. FFA needs kingmaking detection because visible counters can create leader dogpiling.
18. 2v2 needs team-aware activity accounting so support players are not falsely marked idle.
19. Passive strategy should fail because it loses public opportunities, not because of arbitrary hidden punishment.
20. Repetitive strategy pressure must be based on recent public Claim history, not on private player profiling.
21. Objective variety must preserve learnability; too many types would make the first match confusing.
22. Simulator metrics should include passive win rate, dominant strategy rate, strategy-shift rate, and final Claim closeness.
23. Bot tests should include aggressive, defensive, objective-focused, disruptive, and mixed adaptive styles.
24. Reviewer should reject any design that cannot be explained through the visible Claim race.
25. QA should reject any screen that looks like a leaderboard spreadsheet rather than a Majlis game space.
