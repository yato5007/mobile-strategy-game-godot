# Charter: Loss Decision Crossroads

## Purpose
Identify and present 1-3 key moments in the losing player's match where a different decision could have altered the outcome. This turns a loss from a frustrating dead-end into a learning experience, encouraging replay.

## Parent Reference
This node is a child of `win-loss-explanation` (depth 3). The parent specifies that loss screens must include instructive feedback. This node defines the analysis and presentation of that feedback.

## Core Principles
1. **Instructive, not punitive**: Every decision point is framed as an opportunity, not a mistake.
2. **Analytical tone**: Use conditional language ("could have claimed", "an alternative was available").
3. **Limited scope**: Exactly 1-3 turning points. More than 3 overwhelms; fewer than 1 (0) means the analysis is skipped with a consolation message.
4. **Match history dependent**: The analysis is based on recorded match data, not guesswork.

## Scope
- Turning point analysis algorithm
- Decision card presentation
- Consolation state (no clear turning points found)

## Out of Scope
- General match statistics (handled by closeness gauge)
- Winner's decision analysis (winner doesn't see this)
- Emotional consolation beyond the analytical scope
- Sound design for the loss moment

## Constraints
- Must not reveal hidden information (e.g., opponent's unseen plans)
- Must not blame the player — the algorithm finds alternative paths, not errors
- Must work for FFA, 2v2, and 1v1 modes
- Must run in under 100ms on mobile hardware
