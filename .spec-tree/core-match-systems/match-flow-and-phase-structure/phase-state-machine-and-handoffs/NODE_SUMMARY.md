# NODE_SUMMARY.md — Phase State Machine and Handoffs

## Purpose

Define the deterministic state machine controlling all 9 phases, the CommitLock boundary separating planning from resolution, and the event-based handoff protocols to resolver, Claim update, and pressure shift subsystems.

## Parent Link

Parent: `.spec-tree/core-match-systems/match-flow-and-phase-structure/`

## Decisions Made

- Single state machine with phase counter (not per-phase duplicated machines).
- 9 states: Idle → PhaseBrief → CouncilPlanning → CommitLock → Reveal → PhaseUpdate → NextPhase → FinalReveal → MatchEnd.
- CommitLock boundary: `PHASE_COMMITTED` event carries locked actions to resolver.
- 3 handoff protocols each with event schemas.
- FFA/2v2 mode parameterization within same state types.
- All-ready early commit supported with 15s planning floor.

## Alternatives Rejected

- Per-phase separate machines: too complex and redundant.
- Async resolver (fire-and-forget): breaks deterministic ordering.
- Separate FFA/2v2 machines: unnecessary duplication.
- No CommitLock grace: too abrupt for player feedback.

## Dependencies

- Parent DEC-CMS-MFPS-001.
- Sibling `phase-count-and-timing-envelope` (timing inputs).
- Future: simultaneous resolver, Claim state, action economy, pressure system, presentation, multiplayer.

## Integration Risks

- Event ordering must be enforced in implementation.
- Online sync may challenge CommitLock synchrony.
- Handoff payload size must not exceed mobile memory budget.

## Implementation Status

Planning only. No Godot code.

## Tests

Checklist PASS, QA PASS, Review PASS.

## Next Step

Proceed to one of the four depth-4 children, starting with `commit-lock-and-action-binding`.
