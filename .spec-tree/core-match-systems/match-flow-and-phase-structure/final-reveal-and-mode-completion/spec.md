# spec.md — Final Reveal and Mode Completion

Define no-early-end completion ceremony, FFA final 4-player standings, 2v2 team standings with contribution display, tie-break policy, and localizable explanation needs.

## Final Majlis Reveal Ceremony

1. Phase 9 CommitLock exits → State Machine enters FinalReveal state.
2. All Claim totals frozen. Resolver invoked one final time for phase 9 outcomes.
3. Ceremony beat sequence (45-60s total): (a) Seal opening 5-7s, (b) Claim tally reveal 10-15s, (c) Leader announcement 8-12s, (d) Final standings 12-16s, (e) Winner coronation 10-15s.

## FFA Standings

4 players ranked by total Claim (descending). Display: 1st (winner) with Majlis banner, 2nd-4th with rank medallion. All 4 standings shown in portrait layout: winner top, remaining three below in compact horizontal row.

## 2v2 Standings

2 teams ranked by team Claim total (sum). Within team: individual contribution percentage shown. Display: winning team top with both player seals, losing team below with both player seals. Individual contribution: "carried team" / "equal partner" / "supported" labels.

## Tie-Break Policy

| Scenario | Resolution |
|---|---|
| Two players/teams equal Claim | Higher number of contested-objective wins in final 3 phases wins |
| Still tied | Higher total action intensity (sum of intensity values) wins |
| Still tied | Earlier final-phase commit time wins |
| Still tied (identical commits) | Shared rank; both shown as tied |

## Localizable Explanation

Winner announcement: "[Player/Team Name] wins the Majlis with [Claim] Claim" (Arabic: "[اسم] يفوز بالمجلس بـ [Claim] مطالبة"). Standings: numbered list with player/team name, Claim, and contribution % (2v2).

## Proposed Depth-4 Children

1. `ffa-final-standings-presentation` — FFA 4-player ranking layout, winner banner, rank medallions, portrait Arabic/English readability.
2. `2v2-team-standings-presentation` — Team ranking, contribution display, paired seals, silent coordination summary.
3. `tie-break-resolution-logic` — Deterministic tie-break algorithm, multi-level resolution, edge cases.

Acceptance: Ceremony beats defined. FFA/2v2 standings specified. Tie-break deterministic. 3 depth-4 children proposed. No implementation.
