# Plan — Phase State Machine and Handoffs

## Scope

Depth-3 planning node defining the deterministic state machine, commit lock boundary, and handoff protocols for the 9-phase Majlis match. Must propose meaningful depth-4 children.

## Dependencies

- Parent `match-flow-and-phase-structure` (DEC-CMS-MFPS-001).
- Sibling `phase-count-and-timing-envelope` (provides timing inputs per phase).
- Future: simultaneous resolver, action economy, Claim state, anti-dominant pressure, presentation, multiplayer.

## Plan Outline

1. Define 9 states with entry/exit triggers.
2. Define transition diagram for all 9 phases plus FinalReveal/MatchEnd.
3. Define CommitLock mechanics and `PHASE_COMMITTED` event contract.
4. Define three handoff protocols: resolver, Claim update, pressure shift.
5. Define FFA/2v2 mode differences.
6. Propose 4 depth-4 children.
7. Validate with checklist/QA/review.
8. Update tracking files.

## Risks

| Risk | Mitigation |
|---|---|
| State explosion if FFA/2v2 fork | Mode parameterization within same state types |
| Handoff ordering race conditions | Explicit ordering in PhaseUpdate: Claim→Pressure→HUD |
| CommitLock too short for all-ready | Minimum planning floor 15s; lock grace separate |
| Online sync latency | Reveal animation budget absorbs multiplayer sync time |

## Implementation Boundary

No Godot code, state machine implementation, scene tree, or networking created.
