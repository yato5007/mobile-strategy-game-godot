# spec.md — Claim Update and Event Propagation

Define Claim delta event schema, leader-threat calculation contract, phase-claim transition rules, FFA multi-claim vs 2v2 team-claim propagation, and event ordering within PhaseUpdate.

## Claim Delta Event Schema

```
CLAIM_DELTAS_READY {
  phase: int,
  deltas: [
    { player_id, team_id?, claim_change: float, reason: "objective_contest" | "support_bonus" | "counter_penalty" | "idle_decay" | "catchup_bonus" | "engagement_surge" }
  ]
}
```

## Leader-Threat Calculation

After Claim deltas applied: sort players by total Claim. Leader = highest. Threat = leader Claim - second highest Claim. Three states: `watch` (gap ≤ 2.0), `danger` (gap 2.0-4.0), `urgent` (gap > 4.0). Used by Leader Threat Ring game object.

## Phase-Claim Transition Rules

| Phase | Claim Behavior |
|---|---|
| 1-3 | Opening: Claim deltas are capped (anti-runaway). Max delta per phase: ±1.5 per player. |
| 4-6 | Rising: Claim deltas uncapped. Strategy shift pressure active. |
| 7-8 | Final Petition: Claim deltas uncapped. Counterplay window active. |
| 9 | Last planning: Normal deltas. Final Majlis Reveal after phase. |

## FFA vs 2v2 Propagation

- FFA: 4 individual Claim ledgers. Leader threat is individual.
- 2v2: 2 team Claim totals (sum of both teammates). Individual contribution tracked separately. Leader threat is team-based.

## Event Ordering

PhaseUpdate ordering: 1. Claim deltas applied. 2. Leader recalculated. 3. `CLAIM_STATE_UPDATED` emitted. 4. HUD notified.

## Acceptance Criteria

1. Claim delta event schema documented.
2. Leader-threat three-state calculation defined.
3. Per-phase Claim cap rules specified.
4. FFA individual vs 2v2 team Claim propagation defined.
5. Event ordering within PhaseUpdate specified.
6. No implementation.

**AUTONOMOUS_DECISION**: Opening phases cap Claim deltas at ±1.5 per player per phase to prevent runaway leads; mid/final phases uncap to reward strategic play.
