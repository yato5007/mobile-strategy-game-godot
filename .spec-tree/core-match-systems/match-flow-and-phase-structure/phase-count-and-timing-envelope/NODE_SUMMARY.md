# NODE_SUMMARY.md — Phase Count and Timing Envelope

## Purpose

Make the parent 9 scheduled Majlis phases concrete at planning level with act names, per-phase attention goals, timer ranges, lock/reveal/update timing, mobile interruption tolerance, FFA/2v2 pacing, and under-30-minute validation.

## Parent Link

Parent: `.spec-tree/core-match-systems/match-flow-and-phase-structure/`

## Decisions Made

- DEC-CMS-PCTE-001: Use a variable capped 9-phase timing envelope targeting 18-23 minutes and hard-capped under 30 minutes.
- DEC-CMS-OCP-001: Opening Council phases 1-3 use a guided strategic ramp with 90/75/70 second planning targets, short lock grace, localized icon-first briefs, and capped early Claim swings.
- Keep final outcome evaluation only after phase 9 Final Majlis Reveal.
- Use one shared phase count for FFA and 2v2, with mode-specific brief/update attention.
- Allow only short capped mobile interruption recovery; no indefinite pauses.

## Alternatives Rejected

- Flat identical timers as default: simpler but weaker onboarding/final-act pacing.
- Short 30-45 second phases: too reaction-speed and inaccessible.
- Long asynchronous timers: breaks active mobile multiplayer pacing.
- Longer team-specific 2v2 timers: risks negotiation stalls and waiting.

## Dependencies

- Parent DEC-CMS-MFPS-001.
- DEC-CMS-001/002/003 and DEC-GCWC-001/003.
- Future siblings: phase state machine, final reveal, simultaneous resolution, action economy, Claim state.
- Future branches: multiplayer/bots, balance validation, mobile UX/localization, presentation.
- Completed leaf dependency: `opening-council-pacing` now constrains future phase state machine, Claim formulas, and opening UX brief implementation.

## Integration Risks

- Future animations or explanations may exceed reveal/update budgets.
- Multiplayer reconnect/default-plan policy may conflict with the timing cap if not constrained.
- FFA multi-way updates and 2v2 contribution display may overload portrait HUD.

## Implementation Status

Planning only. No Godot project, scripts, scenes, assets, simulator code, or runtime tests created.

## Tests

- Checklist: PASS for depth-3 planning scope.
- QA: PASS for depth-3 planning scope.
- Review: PASS for depth-3 planning scope.
- Completed leaf validation: `opening-council-pacing` checklist/QA/review PASS for planning scope.
- Future validation: duration tables, simulator distribution, FFA/2v2 human QA, reconnect stress scenarios.

## Next Step

Execute next depth-4 leaf under this node: `.spec-tree/core-match-systems/match-flow-and-phase-structure/phase-count-and-timing-envelope/rising-debate-pacing/`.
