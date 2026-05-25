# Analysis — Core Match Systems

## Fit Against Master Constraints

| Constraint | Fit |
|---|---|
| Strategic, not reaction-speed | Simultaneous planning with commit lock avoids speed gameplay. |
| No turn waiting | All players plan at the same time. |
| Under 30 minutes | 8-10 phases with capped planning/reveal beats gives a 12-22 minute target. |
| 4p, FFA, 2v2 | Action categories include support and public counterplay; child nodes must refine mode-specific rules. |
| Clear win condition | Every phase updates visible Claim toward final reveal. |
| Comeback possible | Pressure shifts, leader exposure, and contested catch-up opportunities are built into child scope. |
| No dominant strategy | Repetition pressure, objective variety, limited action budget, and future simulator validation are required. |
| Anti-spreadsheet | Claim is a ledger of game-object achievements, not a raw table. |

## Branch Necessity Analysis

This depth-1 branch is required because concept decisions alone do not define playable rules. It reduces ambiguity for multiplayer, bots, balance, UI, and Godot architecture by defining the match loop and state boundaries before implementation.

## Depth-2 Necessity Analysis

1. `match-flow-and-phase-structure` is necessary because pacing and fixed-length rules control match duration, comeback timing, and no early ending.
2. `simultaneous-planning-and-resolution` is necessary because simultaneous decisions create conflict and tie-break risks that must be deterministic and explainable.
3. `action-economy-and-legal-actions` is necessary because players need meaningful choices and constraints without heavy management.
4. `claim-objective-state-model` is necessary because Claim, objectives, public state, UI events, bots, simulator, and multiplayer need a shared contract.

## Integration Analysis

- `multiplayer-and-bots` needs command shape and visible state boundaries from this branch.
- `balance-and-validation` needs phase count, action taxonomy, and objective/Claim model to test passive and dominant strategies.
- `presentation-art-audio-motion` needs event outputs for Claim updates, pressure shifts, and final reveal.
- `mobile-ux-localization-accessibility` needs timer, phase, action, and public information display requirements.
- `godot-architecture-and-delivery` needs state ownership and deterministic resolver boundaries.

## Risk Analysis

| Risk | Impact | Mitigation |
|---|---|---|
| Simultaneous reveal confusion | Players may not understand outcomes | Dedicated resolution/explanation child branch. |
| Too much public information | Less bluffing | Keep hidden committed plans and add depth through timing/counterplay. |
| Resource system becomes spreadsheet-like | Mobile readability suffers | Limit to Council Focus and minimal Influence constraints. |
| Fixed phase count feels rigid | Replayability suffers | Objective rotation and pressure shifts vary decisions. |
| Comeback feels artificial | Fairness suffers | Use contested opportunities and leader exposure, not free points. |

## Validation Approach

- Planning validation now: checklist, QA, reviewer, traceability, and contract updates.
- Later child validation: scenario tables for phase timing, conflict outcomes, and action legality.
- Later simulator validation: match length distribution, passive win rate, action diversity, comeback frequency, leader conversion rate.
- Later UI validation: first-match player can identify phase, objective, legal actions, leader, Claim delta, and comeback path.
