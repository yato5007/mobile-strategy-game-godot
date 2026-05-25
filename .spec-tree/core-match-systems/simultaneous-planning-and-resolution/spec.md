# spec.md — Simultaneous Planning and Resolution

Define commit-lock entry protocol, action reveal order, conflict resolution rules, tie-break rules, explanation event generation, and FFA/2v2 differences.

## Commit-Lock Entry

1. All players submit actions during CouncilPlanning.
2. Timer expiry or all-ready (≥15s floor) → CommitLock.
3. Actions sealed; no modifications. `PHASE_COMMITTED` event sent to Resolver.

## Action Reveal Order

Actions revealed simultaneously for all players. No sequential reveal. Explanation beats can sequence per-player results within the reveal budget.

## Conflict Resolution

| Conflict Type | Resolution Rule |
|---|---|
| Two+ players contest same objective | Highest intensity wins; tie → earlier commit time wins; still tie → shared objective (split Claim) |
| Player supports contested target | Support adds +1 intensity to target player's contest action |
| Counter vs contest | Counter reduces target intensity by 1; if intensity ≤0, contest fails |
| Prepare action | No conflict; always succeeds; grants +1 intensity next phase |

## Tie-Break Rules (per-phase)

| Scenario | Resolution |
|---|---|
| Equal intensity on same objective | Earlier commit time wins |
| Equal commit time | Shared: both gain 50% Claim from objective |
| Support on conflicting sides | Both supports apply; net effect may cancel |

## Explanation Events

Resolver returns structured explanation atoms: `ACTION_EXECUTED`, `CONFLICT_DETECTED`, `TIE_BROKEN`, `INTENSITY_COMPARED`, `COUNTER_EFFECTIVE`, `SUPPORT_APPLIED`.

## FFA vs 2v2

- FFA: 4 independent action sets. Conflicts: any player vs any player.
- 2v2: 4 independent action sets. Conflicts: players from opposing teams. Teammates cannot directly contest each other (support/prepare only).

## Proposed Depth-3 Children

1. `conflict-resolution-engine` — Detailed conflict rules, intensity comparison, edge cases, multi-way conflicts.
2. `action-reveal-sequencing` — Reveal order within budget, per-player beat structure, explanation event ordering.
3. `multi-mode-resolution` — FFA-specific rules, 2v2 team-aware rules, support/counter boundaries.

Acceptance: Commit protocol, reveal order, conflict rules, tie-breaks, explanation atoms, 3 depth-3 children. No implementation.

**AUTONOMOUS_DECISION**: Resolver uses deterministic rule-based resolution with intensity + commit-time tie-breaks, not random or hidden heuristics.
