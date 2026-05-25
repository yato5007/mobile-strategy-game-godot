# spec.md — Pressure Shift and Cue Dispatch

Define pressure shift detection rules, cue dispatch to anti-dominant system, mid-match strategy shift trigger contract, FFA leader/challenger pressure events, 2v2 team pressure events, comeback path refresh contract.

## Pressure Detection Rules

| Condition | Pressure Event |
|---|---|
| Leader gap > 4.0 for 2+ consecutive phases | `PRESSURE_LEADER_RUNAWAY` |
| Same action family repeated 3+ consecutive phases by same player | `PRESSURE_STRATEGY_STALE` |
| Trailing player gap reduced by ≥1.0 in one phase | `PRESSURE_COMEBACK_MOMENTUM` |
| 2+ players target same objective with contest | `PRESSURE_CONTEST_CLUSTER` |

## Cue Dispatch Contract

```
PRESSURE_CUES_UPDATED {
  phase: int,
  cues: [
    { type: "leader_threat" | "strategy_shift" | "comeback_window" | "contest_cluster", target_player_id?, intensity: 1..3 }
  ]
}
```

## FFA vs 2v2

- FFA: Leader threat per individual; contest cluster detection per objective.
- 2v2: Team pressure when one team's lead >4.0; stale strategy per team (if both use same family).

## Comeback Path Refresh

When `PRESSURE_COMEBACK_MOMENTUM` fires: HUD refreshes Comeback Lane Marker showing trailing player's nearest path to overtake.

Acceptance: 4 pressure conditions, cue dispatch event schema, FFA/2v2 differences, comeback path refresh contract. No implementation.

**AUTONOMOUS_DECISION**: Pressure detection uses simple phase-over-phase comparisons with numeric thresholds, not ML or complex heuristics.
