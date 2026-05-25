# Charter: Win Postmortem

## Purpose
Provide the winning player with a clear visual timeline of their claim journey — showing each banner they claimed, in what order, and at which turn. This makes the win feel earned by displaying tangible progress.

## Parent Reference
This node is a child of `win-loss-explanation` (depth 3). The parent specifies that win screens must include a claim history visualization. This node defines exactly how that visualization works.

## Core Principles
1. **Progress visibility**: Show every claim step so the player sees their path to victory.
2. **Sequential clarity**: Claims are displayed in chronological order with clear numbering.
3. **Mobile-friendly timeline**: Horizontal scroll with cards that are easily tappable/readable on a phone.
4. **Instant comprehension**: Within 2 seconds of seeing the timeline, the player understands their claim rhythm.

## Scope
- The claim timeline for the winning player
- Claim card design (icon, order number, turn number, territory name)
- Horizontal scroll interaction

## Out of Scope
- Loss analysis (handled by sibling `loss-decision-crossroads`)
- Closeness gauge (handled by sibling `closeness-gauge`)
- Animations for card entry (handled by parent's animation layer)

## Constraints
- Only shown to the winning player (or winning team in 2v2)
- Must not exceed 15 claim cards horizontally (game is capped at threshold ~3-5 claims, so this is safe)
- Scroll direction reverses in RTL mode
- Cards must fit within 90px height each
