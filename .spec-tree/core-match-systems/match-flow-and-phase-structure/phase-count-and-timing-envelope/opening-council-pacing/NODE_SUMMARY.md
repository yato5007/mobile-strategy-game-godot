# NODE_SUMMARY.md — Opening Council Pacing

## Purpose

Specify phases 1-3 of the 9-phase Majlis match so the opening teaches the objective and Claim system, stays strategic rather than reaction-speed, supports FFA/2v2, fits portrait mobile localization, and avoids early runaway.

## Parent Link

Parent: `.spec-tree/core-match-systems/match-flow-and-phase-structure/phase-count-and-timing-envelope/`

## Decisions Made

- DEC-CMS-OCP-001: Use a guided strategic opening ramp with 90/75/70 second planning targets, 4-5s lock grace, 35-45s reveal/update, localized icon-first briefs, and capped early Claim swings.
- Keep one opening timing model for FFA and 2v2, with mode-specific brief content.
- Keep first-match clarity through phase 1 timing and brief content, not long blocking tutorials.

## Alternatives Rejected

- Uniform 75s opening as default: too compressed for phase 1 onboarding.
- 120s tutorial-heavy opening: too slow and fatigue-prone for mobile multiplayer.
- 45-60s opening: too reaction-speed and weak for Arabic/English readability.
- Different FFA/2v2 opening timers: unnecessary complexity and balance risk.

## Dependencies

- Parent timing envelope DEC-CMS-PCTE-001.
- Nine-phase fixed match DEC-CMS-MFPS-001.
- Visible Claim concept DEC-GCWC-001.
- Future phase state machine, action economy, Claim state, UX/localization, presentation, multiplayer/bots, and balance simulator nodes.

## Integration Risks

- Future Claim formulas may fail opening anti-runaway caps.
- Future presentation may exceed reveal/update budget.
- Future UX may overload portrait briefs with text.
- Future multiplayer/team communication may require more time if not constrained.

## Implementation Status

Planning only. No Godot code, scenes, assets, tests, or builds created.

## Tests

- Checklist: PASS for planning scope.
- QA: PASS for planning scope.
- Review: PASS for planning scope.
- Future validation: timing config tests, first-match QA, FFA/2v2 walkthroughs, localization layout checks, and opening anti-runaway simulator metrics.

## Next Step

Execute the next depth-4 leaf: `.spec-tree/core-match-systems/match-flow-and-phase-structure/phase-count-and-timing-envelope/rising-debate-pacing/`.
