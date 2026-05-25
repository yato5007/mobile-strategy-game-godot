# spec.md — Action Economy and Legal Actions

Define Council Focus budget, 6 action families, action costs, constraints per phase, support/counter/prep rules, anti-spam limits, and FFA/2v2 differences.

## Council Focus Budget

Each player has Council Focus per phase: **3 points per phase**. Actions cost 1 point each. Players may commit 1-3 actions per phase. Unused points do not roll over.

## Action Families

| Family | Cost | Effect | Constraint |
|---|---|---|---|
| Contest | 1 | Claim objective for self | Must target active objective |
| Support | 1 | +1 intensity to target player's contest | Must target teammate (2v2) or ally |
| Counter | 1 | -1 intensity to target player's contest | Cannot target teammate in 2v2 |
| Prepare | 1 | +1 intensity next phase | Cannot be repeated 2 consecutive phases |
| Defend | 1 | Protect current Claim position | Reduces counter effectiveness by 50% |
| Advocate | 1 | Gain small passive Claim (0.3 per phase) | Cannot contest same phase; max 1 per phase |

## Anti-Spam Limits

- Same action family cannot be used more than 2 times per phase.
- Contest + Prepare cannot both target same objective in same phase (prevents stacking).
- Strategy pattern detection (from anti-dominant system) may flag repeated families across phases.

## FFA vs 2v2

- FFA: Support targets any player (ally of convenience). Counter targets any player.
- 2v2: Support MUST target teammate. Counter MUST target opponent. Prepare/Defend/Advocate are self-only.

## Proposed Depth-3 Children

1. `council-focus-budget-system` — Budget tracking, per-phase allocation, anti-spam enforcement.
2. `action-constraint-validation` — Legal action checks, target validation, cost verification, phase-specific constraints.
3. `team-action-coordination` — 2v2 support/counter rules, FFA ally-of-convenience rules, team action correlation.

Acceptance: Council Focus 3/phase. 6 action families with costs and constraints. Anti-spam rules. FFA/2v2 differences. 3 depth-3 children. No implementation.

**AUTONOMOUS_DECISION**: Compact 3-point action budget with 1-point-per-action; no multi-resource economy to prevent spreadsheet feel.
