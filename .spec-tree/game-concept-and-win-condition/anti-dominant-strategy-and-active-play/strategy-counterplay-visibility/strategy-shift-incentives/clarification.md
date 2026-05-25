# Clarification — Strategy Shift Incentives

- Node slug: `strategy-shift-incentives`
- Depth: 4
- Parent: `.spec-tree/game-concept-and-win-condition/anti-dominant-strategy-and-active-play/strategy-counterplay-visibility/`
- Purpose: Reward timely mid-match strategy shifts so players adapt instead of repeating openings.
- Claim reference: DEC-GCWC-001 fixed-length visible Claim win condition for Banner of the Majlis.
- Scope: Spec Kit planning artifact only; no Godot game implementation is created here.

## Resolved Questions
1. Is anti-dominance a hidden balancing layer? No; meaningful pressure must be visible through public UI and explainable after the match.
2. Does active play require constant tapping? No; it requires meaningful Claim participation, planning commitment, contesting, or team support.
3. Can a player pause briefly to plan? Yes; penalties target prolonged non-participation, not thoughtful timing.
4. Can one strategy be strong in one phase? Yes; the rule rejects universal dominance across phases, modes, and board states.
5. Can bots adapt? Yes, but only from public pattern state unless future specs document otherwise.
6. Are counters automatic? No; the player receives visible opportunities and keeps agency.
7. Does this replace comeback systems? No; it complements strategic-tension-and-comeback without random catch-up grants.
8. Does it alter the Claim win condition? No; it shapes how Claim opportunities remain diverse and active.

## Autonomous Decision
9. Decision made: use visible anti-dominance pressure rather than hidden matchmaker-style correction.
10. Options compared: hidden penalties, pure balance tuning, and visible adaptive board pressure.
11. Hidden penalties were rejected because players would not trust Claim outcomes.
12. Pure tuning was rejected because solved openings can emerge after repeated play.
13. Visible adaptive pressure was accepted because it teaches counterplay and supports fun validation.
14. Potential downside: too many indicators can clutter portrait screens.
15. Downside mitigation: use icon-first displays, tap-to-expand cards, and animation priority tiers.
16. Verification: future QA must test that players can explain why a repeated or passive plan was pressured.
17. Artifact proof: this node defines concrete Resources, Signals, Timer windows, Control scenes, and simulator metrics.

## Boundaries
18. No game feature implementation is authorized by this artifact alone.
19. No new game mode is created here.
20. No player-facing text may be embedded in textures or scripts.
21. No landscape-only visualization is allowed.
22. No uncapped penalty or bonus is allowed.
23. No hidden information may be exposed to bots or UI.
24. Future implementation must preserve Android and iOS portrait safe areas.
25. Future balance validation must compare FFA and 2v2 separately.
