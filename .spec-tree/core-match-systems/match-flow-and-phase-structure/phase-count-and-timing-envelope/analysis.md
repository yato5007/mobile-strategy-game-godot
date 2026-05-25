# Analysis — Phase Count and Timing Envelope

## Fit Against Requirements

| Requirement | Node Fit |
|---|---|
| Under 30 minutes | Expected ~20 minutes; conservative max ~22.3 minutes with recovery reserve. |
| No turn waiting | All players plan simultaneously; no player-specific turns are introduced. |
| No early victory | Final outcome is delayed until after phase 9. |
| Comeback possible | Mid/final phases reserve attention for pressure shifts and leader exposure. |
| Active play | Repeated planning windows and pressure shifts prevent passive waiting from being the whole strategy. |
| Mobile portrait | Timing HUD can be compact: act, phase, timer, objective, Claim pressure. |
| FFA/2v2 support | Shared phase count, different attention emphasis in brief/update. |
| Android/iOS | Mobile interruption tolerance is planned without platform-specific assumptions. |

## Why This Node Is Necessary

The parent selected a 9-phase flow but left timing unresolved. This node converts the abstract structure into a duration envelope that future state machine, UX, multiplayer, bot, simulator, and presentation nodes can use without inventing incompatible assumptions.

## Duration Reasoning

The accepted timing model gives more planning support early, compresses late planning as players understand the board, and allows richer reveal/update beats when the stakes are higher. This avoids both slow board-game fatigue and shallow reaction-speed play.

## Risk Analysis

| Risk | Impact | Mitigation |
|---|---|---|
| Variable timers confuse players | Missed commitments | Later UX must show act/phase timer consistently and explain shorter final-act timing. |
| Late phases feel rushed | Poor final decisions | Final planning bottoms at 60s, not twitch-speed; final update/reveal gets more time. |
| Interruptions create unfair stalls | Multiplayer frustration | Recovery is one short capped reserve, with default-plan behavior deferred to multiplayer/state-machine nodes. |
| FFA updates exceed reveal budget | Match length creep | Future presentation must summarize multi-way deltas icon-first; simulator/QA checks duration. |
| 2v2 needs more team talk | Waiting/negotiation | Team strategy must be supported by readable shared information, not extra timer length by default. |

## Validation/Test Approach

- Planning validation: checklist, QA, review, and requirements trace in this node.
- Future leaf validation: act-specific timing walkthroughs and under-30-minute tables.
- Future simulator: sample FFA/2v2 match durations across bot profiles and ready/auto-ready scenarios.
- Future UX QA: players can identify current act/phase, timer remaining, objective, leader/team threat, and that victory waits until phase 9 reveal.
