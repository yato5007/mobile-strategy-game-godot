# spec.md — Claim Objective State Model

Define Claim ledger structure, objective state model, public/private information boundaries, event outputs, and Claim delta formula interfaces.

## Claim Ledger

Per-player (FFA) or per-team (2v2) running total. Updated after PhaseUpdate. Public.

```
{ player_id: { total: float, deltas: [{ phase, amount, reason }] } }
```

## Objective State

Active objectives per phase: 3-5 objectives. Each has: `id`, `family` (contest/support/counter/prepare), `claim_value` (1.0-3.0), `phase_modifiers` (bonus/penalty for specific act).

Objectives rotate each phase from a pool of 12-15 predefined objectives.

## Public vs Private Information

- **Public**: Claim totals, active objectives, current phase, leader threat, pressure cues.
- **Private**: Committed actions until reveal. Per-player action history (last 3 phases) for strategy detection.

## Claim Delta Formula Interface

Claim deltas computed by resolver based on: contested objectives + intensity + support/counter modifiers + phase caps + catch-up bonus + engagement surge. Exact formulas deferred to implementation.

## Event Outputs

- `OBJECTIVES_ANNOUNCED(phase, objectives[])`
- `CLAIM_STATE_UPDATED(phase, ledger)`
- `LEADER_THREAT_CHANGED(leader_id, gap)`

## Proposed Depth-3 Children

1. `claim-ledger-management` — Ledger CRUD, delta application, history tracking.
2. `objective-pool-and-rotation` — Objective pool definition, rotation algorithm, family balancing.
3. `public-information-broadcast` — What is visible to whom, information sync, state broadcast events.

Acceptance: Ledger structure, objective model, public/private boundaries, 3 depth-3 children. No implementation.

**AUTONOMOUS_DECISION**: Objectives rotate each phase from a pool, not static throughout match, to maintain strategic variety and prevent solved openings.
