# Tasks — Phase State Machine and Handoffs

## Planning tasks (this depth-3 node)

| ID | Task | Priority | Done |
|---|---|---|---|
| PSM-01 | Define all 9 phase states | P1 | Yes |
| PSM-02 | Define state transition diagram | P1 | Yes |
| PSM-03 | Define CommitLock mechanics and event contract | P1 | Yes |
| PSM-04 | Define resolver handoff protocol | P1 | Yes |
| PSM-05 | Define Claim update handoff protocol | P1 | Yes |
| PSM-06 | Define pressure shift handoff protocol | P1 | Yes |
| PSM-07 | Define FFA/2v2 mode differences | P1 | Yes |
| PSM-08 | Propose 4 depth-4 children | P1 | Yes |
| PSM-09 | Validate with checklist/QA/review | P1 | Yes |
| PSM-10 | Update tracking files | P2 | Yes |

## Proposed depth-4 children

1. `commit-lock-and-action-binding` — Exact commit protocol, lock grace, action serialization, early-commit policy, per-player/per-team lock.
2. `reveal-and-resolver-handoff` — Resolver invocation, reveal beat structure, explanation events, conflict handoff.
3. `claim-update-and-event-propagation` — Claim delta events, leader-threat contract, phase-claim transitions, FFA/2v2 propagation.
4. `pressure-shift-and-cue-dispatch` — Pressure detection, cue dispatch to anti-dominant system, strategy shift triggers, comeback refresh.

## Future implementation tasks (not executed now)

| ID | Task | Priority | Depends On |
|---|---|---|---|
| PSM-IMPL-01 | Implement phase state machine | P1 | depth-4 leaves |
| PSM-IMPL-02 | Implement CommitLock protocol | P1 | action-economy |
| PSM-IMPL-03 | Implement resolver handoff contract | P1 | simultaneous-resolver |
| PSM-IMPL-04 | Implement Claim update propagation | P1 | claim-state |
| PSM-IMPL-05 | Implement pressure shift dispatch | P2 | anti-dominant |
| PSM-IMPL-06 | Implement FFA/2v2 mode parameterization | P1 | multiplayer |

No implementation created.
