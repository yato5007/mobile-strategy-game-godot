# Specification — Phase State Machine and Handoffs

## Purpose

Define the deterministic state machine controlling all 9 Majlis phases, the CommitLock boundary, and the handoff protocols to resolver, Claim update, and pressure shift subsystems.

## Phase States

| State | Description | Entry Trigger | Exit Trigger | Timing Source |
|---|---|---|---|---|
| Idle | Pre-match; waiting for all players ready | Match start config | All players ready | N/A |
| PhaseBrief | Phase context shown; objectives announced | Phase start | Brief timer expires | Brief target from timing envelope |
| CouncilPlanning | Players plan and submit actions | Brief exit | Planning timer expires | Planning range from timing envelope |
| CommitLock | Submitted plans locked; grace window | Planning exit or all committed | Lock timer expires | Lock grace from timing envelope |
| Reveal | Locked actions revealed; resolver invoked | CommitLock exit | Reveal animation/explanation complete | Reveal/update budget |
| PhaseUpdate | Claim deltas applied; pressure cues updated; leader threat refreshed | Reveal exit | Update animation complete | Remaining reveal/update budget |
| NextPhase | Phase counter incremented; transition to next phase | PhaseUpdate exit | If phase < 9: → PhaseBrief (next phase) | Transition (3s) |
| FinalReveal | Phase 9 complete; final ceremony; winner announced | NextPhase exit (phase=9) | Final reveal animation complete | 45-60s from timing envelope |
| MatchEnd | Match concluded; winner declared; standings shown | FinalReveal exit | Match shutdown | N/A |

## Transition Diagram (text)

```
[Idle] → [PhaseBrief(1)] → [CouncilPlanning(1)] → [CommitLock(1)] → [Reveal(1)] → [PhaseUpdate(1)]
→ [NextPhase] → [PhaseBrief(2)] → ... [NextPhase] → [PhaseBrief(9)] → ... [PhaseUpdate(9)]
→ [NextPhase(phase=9)] → [FinalReveal] → [MatchEnd]
```

## CommitLock Mechanics

1. During CouncilPlanning, players submit action sets.
2. When planning timer expires OR all players commit early → state transitions to CommitLock.
3. CommitLock has a short grace (4-5s per timing envelope): players see "locked" confirmation.
4. During CommitLock, no further actions accepted.
5. At CommitLock exit, the locked action set is packaged into a `PHASE_COMMITTED` event containing:
   - phase index
   - mode (FFA/2v2)
   - per-player locked action sets
   - public objective state snapshot at lock time
   - per-player action history (for strategy repetition detection)

## Resolver Handoff

| Event | Sent From | Sent To | Payload |
|---|---|---|---|
| `PHASE_COMMITTED` | CommitLock exit | Simultaneous Resolver | Locked actions, objective state, history |
| `PHASE_RESOLVED` | Resolver | State Machine | Resolved outcomes, conflicts, tie-breaks, explanation events |

The state machine does NOT invoke the resolver until CommitLock is fully exited.

## Claim Update Handoff

| Event | Sent From | Sent To | Payload |
|---|---|---|---|
| `CLAIM_DELTAS_READY` | Resolver (via State Machine) | Claim Objective State | Per-player Claim deltas, objective-claim mappings |
| `CLAIM_STATE_UPDATED` | Claim State | State Machine, HUD | Updated Claim ledger, new leader, delta summary |

The PhaseUpdate state broadcasts Claim deltas to the presentation/HUD layer.

## Pressure Shift Handoff

| Event | Sent From | Sent To | Payload |
|---|---|---|---|
| `PRESSURE_SHIFT_NEEDED` | State Machine (PhaseUpdate) | Anti-Dominant Pressure System | Phase index, action history, Claim gaps |
| `PRESSURE_CUES_UPDATED` | Pressure System | HUD/Presentation | Leader threat, strategy shift, comeback path cues |

## FFA and 2v2 Differences

| Aspect | FFA | 2v2 |
|---|---|---|
| Planning | Per-player | Per-player; teammate actions independently submitted |
| CommitLock | Per-player lock | Per-player lock; team lock signaled together |
| Reveal | 4 independent resolutions | 2 team resolutions; teammate actions correlated |
| Claim Update | 4 individual Claim deltas | 2 team Claim totals; individual contribution tracked |
| FinalReveal | 4 final standings | 2 team standings; individual contribution shown |
| PhaseBrief | Individual objective context | Team-aligned objective context |

## Proposed Depth-4 Children

1. **`commit-lock-and-action-binding`**: Exact commit protocol, lock grace timing validation, action set serialization contract, early-commit policy, per-player vs per-team lock semantics.
2. **`reveal-and-resolver-handoff`**: Resolver invocation timing, reveal beat structure per act, explanation event generation, conflict/tie-break handoff contract, animation budget per reveal.
3. **`claim-update-and-event-propagation`**: Claim delta event schema, leader-threat calculation contract, phase-claim transition rules, FFA multi-claim vs 2v2 team-claim propagation, Claim update event ordering.
4. **`pressure-shift-and-cue-dispatch`**: Pressure shift detection rules, cue dispatch to anti-dominant system, mid-match strategy shift trigger contract, FFA leader/challenger pressure, 2v2 team pressure events, comeback path refresh contract.

## Acceptance Criteria

1. All 9 states defined with entry/exit triggers.
2. Transition diagram maps all phases 1-9 to FinalReveal and MatchEnd.
3. CommitLock boundary contract specified with `PHASE_COMMITTED` event.
4. Three handoff protocols defined: resolver, Claim update, pressure shift.
5. FFA and 2v2 mode differences documented with shared state machine.
6. Four concrete depth-4 children proposed with distinct purposes.
7. No game code, Godot scenes, or assets created.
