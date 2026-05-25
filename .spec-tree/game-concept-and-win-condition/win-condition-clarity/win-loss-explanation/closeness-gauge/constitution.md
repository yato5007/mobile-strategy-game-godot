# Charter: Closeness Gauge

## Purpose
Visually communicate how close each player (or team) was to the claim threshold when the match ended. This gauge transforms abstract claim counts into a readable competitive picture, showing every player that the match was competitive — even in a loss.

## Parent Reference
This node is a child of `win-loss-explanation` (depth 3). The parent requires a shared visual component that shows all players' final state. This node defines that component.

## Core Principles
1. **Competitive truth**: Show every player's progress honestly, even if some had zero claims.
2. **At-a-glance readability**: Within 2 seconds, the player understands who was close and who wasn't.
3. **Shared across win/loss**: Both winner and loser see the same gauge data, just framed differently.
4. **Works for all modes**: FFA (4 bars), 2v2 (2 team bars + individual breakdown), 1v1 (2 bars).

## Scope
- Horizontal bar visualization for each player/team
- Player name, color, and claim count display
- Threshold marker line
- Animation on appear

## Out of Scope
- Historical bar data (how bars looked at earlier turns)
- Predictive projection ("would have won in 2 more turns")
- Match timeline or replay data

## Constraints
- Bars must fill left-to-right (universal progress direction, even in RTL mode)
- Maximum 4 bars visible at once (4-player FFA, or 2 teams with individual splits)
- Each bar max height 32px, section total height must fit within 30% of screen
- Threshold value is dynamic (depends on player count, typically 3)
- Must not reveal which specific territories were claimed (that's the postmortem's job)
