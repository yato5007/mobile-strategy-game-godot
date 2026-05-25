# Plan — Claim Momentum Bonus

- Node slug: `claim-momentum-bonus`
- Depth: 4
- Parent: `.spec-tree/game-concept-and-win-condition/anti-dominant-strategy-and-active-play/active-play-incentives/`
- Purpose: Reward consecutive active Claim participation inside a bounded time or phase window.
- Claim reference: DEC-GCWC-001 fixed-length visible Claim win condition for Banner of the Majlis.
- Scope: Spec Kit planning artifact only; no Godot game implementation is created here.

## Implementation Plan For Future Authorized Work
1. Define Resource schema for thresholds, caps, objective families, idle windows, and mode overrides.
2. Define public state holder in GDScript with typed fields and serialization for mock multiplayer.
3. Define Signals from rules to UI; UI must not compute Claim advantage.
4. Build a Control-based portrait scene with icon-first indicators and expandable bottom cards.
5. Add Timer or deterministic tick logic only where timing matters for windows or events.
6. Add localized Label nodes for reasons, warnings, counters, and active participation summaries.
7. Add AnimationPlayer feedback for warnings, surges, shifts, and pattern changes.
8. Add TextureRect icons for Claim families and player/team identity.
9. Add balance simulator hooks for passive rate, repetition rate, response diversity, and win distribution.
10. Add QA scenarios for first-time player comprehension, FFA dogpile risk, and 2v2 teammate support.

## Sequencing
11. First implement data Resources and Signals in a future leaf task.
12. Second implement minimal portrait HUD widgets wired to mock public state.
13. Third connect future bot strategy profiles to public pattern state.
14. Fourth add simulator fixtures and threshold sweeps.
15. Fifth polish animation, SFX hooks, and RTL mirroring once behavior is validated.

## Integration Notes
16. Game Rules owns Claim scoring, penalties, bonuses, and strategy-state derivation.
17. Presentation owns icons, animations, labels, card layout, and haptic/audio hooks.
18. Bot AI consumes public strategy summaries but does not own rule thresholds.
19. Balance simulator consumes deterministic seeds and produces metrics; it does not alter production state.
20. Localization owns visible strings for warnings, counters, and summaries.
21. Mock multiplayer serializes state changes so every client sees the same anti-dominance events.

## Branch Plan
22. This leaf has no children; future work consumes tasks directly.
23. Any future implementation requires separate authorization from Spec Kit tasks.
24. QA and reviewer must reject hidden, unclear, or spreadsheet-heavy behavior.
25. Integration review must occur before changing SYSTEM_CONTRACTS.md ownership.
