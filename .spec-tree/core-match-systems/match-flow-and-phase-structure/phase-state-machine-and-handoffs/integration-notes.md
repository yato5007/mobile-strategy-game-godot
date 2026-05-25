# Integration Notes — Phase State Machine and Handoffs

## Event Contracts

| Event | Producer | Consumer | Key Fields |
|---|---|---|---|
| `PHASE_STARTED(phase, act_name)` | State Machine | HUD, Brief generator | phase index 1-9, act enum |
| `PLANNING_STARTED(phase, time_remaining)` | State Machine | HUD, Action Economy | phase, seconds |
| `COMMIT_LOCKED(phase, player_actions)` | State Machine | Resolver (via `PHASE_COMMITTED`) | locked action sets per player |
| `PHASE_COMMITTED(phase, mode, actions, objective_state, history)` | State Machine | Resolver | Full commit payload |
| `PHASE_RESOLVED(phase, outcomes, conflicts, explanations)` | Resolver | State Machine | Resolution results |
| `CLAIM_DELTAS_READY(phase, deltas)` | State Machine | Claim State | Per-player deltas |
| `CLAIM_STATE_UPDATED(phase, ledger, leader)` | Claim State | State Machine, HUD | Updated state |
| `PRESSURE_SHIFT_NEEDED(phase, history, gaps)` | State Machine | Pressure System | Shift context |
| `PRESSURE_CUES_UPDATED(phase, cues)` | Pressure System | HUD | Cue definitions |
| `FINAL_REVEAL_STARTED` | State Machine | Final Reveal, HUD | Phase-9 complete |
| `MATCH_ENDED(winner, standings)` | Final Reveal | State Machine, HUD | Results |

## Timing Integration

All state duration values consumed from sibling `phase-count-and-timing-envelope` depth-4 leaves (Opening Council, Rising Debate, Final Petition, Duration Cap).

## Mode Integration

FFA: per-player states, 4 individual resolution pipelines.
2v2: per-player states, 2 team resolution pipelines, teammate action correlation.

No implementation code created.
