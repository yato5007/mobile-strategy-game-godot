# Charter: Win/Loss Explanation

## Purpose
Define how the game communicates the outcome of a match to every player — making the win feel earned, the loss feel instructive, and the overall experience satisfying and clear.

## Parent Reference
This node is a child of `win-condition-clarity` (depth 2). The parent establishes that the "Banner of the Majlis" claim threshold must be visible at all times. This node extends that clarity to the end-of-match moment.

## Core Principles
1. **Instant Understanding**: Within 3 seconds of match end, every player must know who won and why.
2. **Earned Feeling**: The winner sees their path. The loser sees their turning points. No one feels the game was random.
3. **Mobile-First**: All explanation must work in portrait, on a 6-inch screen, with touch-only interaction.
4. **Educational**: Loss explanations teach the player how to improve, making them want to play again.
5. **Skippable**: Players may skip explanation and return to lobby immediately.

## Scope
This node covers:
- The win moment screen (postmortem)
- The loss moment screen (decision crossroads analysis)
- The closeness gauge showing competitive tension

## Out of Scope
- Claim progress display during the match (handled by sibling `claim-progress-display`)
- Sound effects and animations for the win/loss moment (handled elsewhere)
- Leaderboard or ranking screens

## Constraints
- All text must use the localization system — no hardcoded strings
- Arabic RTL must be fully supported in every explanation screen
- Must work for 2v2, FFA, and 1v1 match formats
- Must not block the user from returning to lobby within one tap
