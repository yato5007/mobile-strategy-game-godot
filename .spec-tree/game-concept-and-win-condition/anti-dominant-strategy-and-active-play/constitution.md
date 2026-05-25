# Constitution — Anti Dominant Strategy And Active Play

- Node slug: `anti-dominant-strategy-and-active-play`
- Depth: 2
- Parent: `.spec-tree/game-concept-and-win-condition/`
- Purpose: Prevent any single strategy from dominating and reward active participation throughout the fixed-length Claim match.
- Claim reference: DEC-GCWC-001 fixed-length visible Claim win condition for Banner of the Majlis.
- Scope: Spec Kit planning artifact only; no Godot game implementation is created here.

## Governing Principles
1. The node must protect strategic variety: no opening, route, Claim family, or passive endgame should be universally correct.
2. Every anti-dominance rule must be visible enough that players understand why pressure changed.
3. Active play means committing to public Claim opportunities, contesting objectives, shifting plans, or supporting a teammate.
4. Passive hiding means avoiding Claim participation while benefiting from others fighting; it must not be a best path.
5. The system must support both 4-player FFA and 2v2 without hidden rule forks.
6. Godot future work must keep rule resolution in game logic, while Control scenes only display Signals and Resources.
7. Portrait mobile readability is mandatory; use icons, banners, timers, and bottom cards rather than wide tables.
8. Arabic and English text must use localization keys; no player-facing strings are hardcoded in future scenes.
9. RTL layouts must mirror flow while preserving numeric Claim clarity and icon meaning.
10. Bots may adapt only to public information unless a future node explicitly defines hidden information access.
11. Bonuses, penalties, and counters must be capped so they do not become rubber-band mechanics.
12. The balance simulator must later prove passive and repetitive strategies fail across representative seeds.

## Non-Negotiable Constraints
13. Use Godot 4.x concepts such as Signal, Timer, Control, Label, TextureRect, AnimationPlayer, and Resource in future implementation plans.
14. Do not implement game code in this node; document executable tasks for authorized leaves only.
15. Preserve the fixed-length match: anti-dominance systems must not end the match early.
16. Preserve Claim clarity: players must know how actions affect the final visible Claim race.
17. Avoid spreadsheet UX: displays should be symbolic, animated, and touch-friendly.

## Child Branch Obligation
18. Child `strategy-diversity-enforcement` must complete the same eight Spec Kit artifacts and remain tied to anti-dominant strategy governance and active participation across FFA and 2v2 modes.
19. Child `active-play-incentives` must complete the same eight Spec Kit artifacts and remain tied to anti-dominant strategy governance and active participation across FFA and 2v2 modes.
20. Child `strategy-counterplay-visibility` must complete the same eight Spec Kit artifacts and remain tied to anti-dominant strategy governance and active participation across FFA and 2v2 modes.
