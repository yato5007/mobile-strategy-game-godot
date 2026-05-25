# Analysis — Match Flow and Phase Structure

## Fit Against Constraints

| Constraint | Fit |
|---|---|
| Fixed-length match | 9 scheduled phases; final reveal only after phase 9. |
| No early match end | Claim advantage cannot end the game before final reveal. |
| Simultaneous play | Council Planning happens for all players in parallel. |
| Commit lock | Explicit lock boundary before reveal handoff. |
| Deterministic reveal/resolve handoff | Phase node sends locked plans to sibling resolver; formulas out of scope. |
| Visible Claim updates | Mandatory after every reveal/resolve handoff. |
| Active pressure shifts | Mandatory between phases to vary objectives and discourage passive/repeated play. |
| Under 30 minutes | 9 phases at default timing target 17-22 minutes, hard cap under 30. |
| 4p FFA and 2v2 | Mode support is part of phase brief, standings, final reveal, and future child nodes. |
| Portrait readability | Phase status is constrained to compact act/phase/timer/objective/Claim/pressure information. |
| Arabic/English future localization | Phase and reveal labels must become string keys; no hardcoded text. |

## Why This Branch Is Necessary

The parent defines a general simultaneous phase loop, but implementation and sibling planning need a concrete default phase count, match arc, timing envelope, and completion rule. Without this node, bots, multiplayer, UI, simulator, and Claim systems would each invent incompatible timing assumptions.

## Timing Reasonableness

Default estimate: opening briefing ~1 minute; 9 phases × 110-140 seconds; final reveal 1-1.5 minutes. Total is about 18.5-23.5 minutes under normal human play, leaving buffer below 30 minutes.

## Integration Risks

| Risk | Impact | Mitigation |
|---|---|---|
| 9 phases feel repetitive | Player fatigue | Pressure shifts and objective rotation must vary decisions. |
| Planning timer too short for new players | Confusion | Tutorial/local modes may extend or pause; multiplayer default remains capped. |
| Planning timer too long for bots/local play | Boredom | Auto-ready and fast-forward are allowed for bot/local validation modes. |
| Final reveal tie handling unclear | Disputed wins | Future final reveal child must coordinate with resolver/state-model tiebreak rules. |
| Portrait HUD clutter | Poor readability | Child nodes must prioritize phase/timer/objective/Claim/pressure in compact form. |

## Validation Approach

- Planning validation: checklist, QA, review, traceability, and contract updates in this node.
- Future depth-3 validation: scenario tables for phase timing, transitions, mode display, and final reveal.
- Future simulator validation: match duration distribution, phase decision diversity, comeback frequency, passive win rate, and leader conversion rate.
- Future UX validation: players can state current phase, remaining phases, objective, leader, pressure shift, and final reveal condition.
