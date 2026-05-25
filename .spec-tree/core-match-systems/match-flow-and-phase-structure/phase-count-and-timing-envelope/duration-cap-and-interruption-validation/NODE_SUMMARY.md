# NODE_SUMMARY.md — Duration Cap and Interruption Validation

## Purpose

Validate the 9-phase Majlis match timing envelope against the 30-minute hard cap, define mobile interruption recovery scenarios, specify auto-ready/default-plan fallback, and document per-player interruption reserve policy.

## Parent Link

Parent: `.spec-tree/core-match-systems/match-flow-and-phase-structure/phase-count-and-timing-envelope/`

## Decisions Made

- Hard cap: 30 minutes (1800s). Safety valve jumps to Final Majlis Reveal after completing the current phase.
- Interruption reserve: 120s per player per match.
- 4 interruption scenarios: brief disconnect, extended disconnect, beyond reserve, app background/sleep.
- Auto-ready policy: 4 situations with specified action sets.
- Default plan: neutral balanced contest + defend; never optimal.
- FFA: per-player reserve.
- 2v2: remaining teammate continues; disconnected teammate auto-readies.

## Alternatives Rejected

- Unlimited reserve: breaks under-30 constraint.
- Shared team reserve for 2v2: too complex and penalizes active teammate.
- Longer reserve (>120s): risks stalling.
- Auto-disqualify on disconnect: too harsh for mobile; violates comeback spirit.

## Dependencies

- Sibling timing leaves (opening, rising, final) provide timer inputs.
- Future: phase state machine, multiplayer transport, action economy, bot system, localization.

## Integration Risks

- Default plan may become meta if not kept neutral.
- Disconnect detection may have platform-specific latency.
- Hard cap trigger may create confusion if not communicated early (5-minute advance warning).

## Implementation Status

Planning only. No Godot code, scenes, assets, tests, or builds.

## Tests

- Checklist: PASS. QA: PASS. Review: PASS.
- Future: duration validation tests, interruption scenario walkthroughs, mobile disconnect/reconnect QA, simulator metrics for hard cap reach rate.

## Next Step

This completes all four depth-4 leaves under `phase-count-and-timing-envelope`. Continue to `phase-state-machine-and-handoffs` as the next depth-3 child under `match-flow-and-phase-structure`.
