# Constitution: FFA Final Standings Board

## Node Identity
- Node: `ffa-final-standings-board`.
- Depth: 4.
- Parent: `team-and-ffa-win-readability`.
- Scope: final standings display for 4-player FFA.
- Implementation type: future UI leaf tasks only.

## Principles
1. FFA result must show all four players, not only the winner.
2. Rank and claim count must be readable at a glance.
3. Local player position must be visible regardless of rank.
4. The board must not become a dense table.
5. Claim history summaries should explain standings without overwhelming players.
6. Ties must be visibly marked.
7. Arabic and English layouts must preserve rank order from top to bottom.
8. The winner must be celebrated without humiliating lower ranks.

## Required Content
- Rank badge for each player.
- Player token/avatar and name.
- Final claim count.
- Short claim history summary.
- Winner highlight.
- Local player highlight.
- Tie badge or tie-break explanation slot.

## Prohibited Content
- Winner-only result.
- Four-column spreadsheet layout.
- Hardcoded rank suffixes like “1st” without localization.
- Color-only rank distinction.
