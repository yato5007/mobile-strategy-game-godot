# Integration Notes — Game Concept and Win Condition

## Interfaces Produced

| Output | Consumer |
|---|---|
| Fixed-length match requirement | core-match-systems, balance-and-validation, godot-architecture-and-delivery |
| Visible Claim win-progress model | core-match-systems, presentation-art-audio-motion, mobile UX |
| Public objective concept | core-match-systems, balance-and-validation, bots |
| Final win/loss explanation requirement | UX, localization, QA, handoff |
| Anti-spreadsheet visual requirement | presentation-art-audio-motion, asset pipeline |

## Contract Notes

- `core-match-systems` must later own exact scoring and state.
- `presentation-art-audio-motion` must later own visual language for Claim.
- `balance-and-validation` must later prove no dominant objective path.
- `multiplayer-and-bots` must later support team/FFA interpretation of Claim.

## Risks

- Claim could degrade into plain points.
- Public objectives could become too random or too deterministic.
- Final reveal could obscure why players won.
- 2v2 shared Claim may conflict with individual feedback if not specified later.
