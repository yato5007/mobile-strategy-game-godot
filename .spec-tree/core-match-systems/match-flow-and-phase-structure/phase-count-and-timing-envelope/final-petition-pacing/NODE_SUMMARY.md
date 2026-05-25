# NODE_SUMMARY.md — Final Petition Pacing

## Purpose

Specify phases 7-9 of the 9-phase Majlis match as an accelerated final act with explicit counterplay window, seal-commit ceremony, urgency indicators, and strict no-early-victory enforcement before the Final Majlis Reveal.

## Parent Link

Parent: `.spec-tree/core-match-systems/match-flow-and-phase-structure/phase-count-and-timing-envelope/`

## Decisions Made

- DEC-CMS-FPP-001: Use accelerated urgency cadence with 55/55/50s planning, explicit phase 8 counterplay window, seal-commit ceremony in phase 9, and strict no-early-victory throughout phases 7-9. Victory only at Final Majlis Reveal.
- Define 6 game-object outputs: Claim-Final Path Indicators, Final Counterplay Window, Last-Chance Position Markers, Seal-Commit Ceremony Indicators, Urgency Lanterns, No-Early-Victory Banner.
- FFA: multi-player paths, counterplay reachable per-player.
- 2v2: team paths, paired seals, silent coordination.

## Alternatives Rejected

- Same mid-match 60-65s timers: too slow for final-act urgency.
- 35-40s short timers: too rushed for strategic accessibility.
- Victory decided inside phase 9: violates parent no-early-victory rule.
- Score-table final standings: violates Anti-Spreadsheet Game Rule.

## Dependencies

- Parent timing envelope DEC-CMS-PCTE-001.
- 9-phase match flow DEC-CMS-MFPS-001.
- Sibling leaves: opening-council-pacing, rising-debate-pacing.
- Future: phase state machine, Claim state, action economy, multiplayer/bots, presentation, UX/localization, balance.

## Integration Risks

- 6 game-object outputs may overload 360px portrait.
- Counterplay window may be difficult to tune for both FFA and 2v2.
- Seal ceremony may be confusing if animation timing exceeds lock grace.
- Bots may need distinct counterplay strategies during phase 8.

## Implementation Status

Planning only. No Godot code, scenes, assets, tests, or builds created.

## Tests

- Checklist: PASS for planning scope.
- QA: PASS for planning scope.
- Review: PASS for planning scope.
- Future validation: timing config tests, FFA/2v2 walkthroughs, counterplay effectiveness simulator metrics, final-phase uncertainty metrics, Arabic/English portrait fit tests.

## Next Step

Execute the next depth-4 leaf: `duration-cap-and-interruption-validation`.
