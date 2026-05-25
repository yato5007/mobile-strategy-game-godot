# Constitution: Team and FFA Win Readability

## Node Identity
- Node: `team-and-ffa-win-readability`.
- Depth: 3.
- Parent: `win-condition-clarity`.
- Game: Banner of the Majlis.
- Scope: readable win state across 2v2 team mode and 4-player FFA.

## Non-Negotiable Principles
1. The player must know whether the match is team-based or individual before reading numbers.
2. In 2v2, the team is the winning entity; individual contribution is supporting evidence, not the official winner.
3. In FFA, all four individual standings must be visible together.
4. The display must fit portrait mobile screens without hiding the winning result below the fold.
5. Arabic and English layouts must preserve the same information hierarchy.
6. The UI must feel like a game result ceremony, not a spreadsheet table.
7. All player-facing labels must use localization keys.
8. Color cannot be the only differentiator; icons, labels, and grouping must reinforce meaning.

## Mode Rules
- 2v2 uses team banners, paired player portraits, and combined claim total.
- 2v2 also shows each teammate's personal claim count and one synergy highlight if data exists.
- FFA uses a ranked standings board with all four players and claim history summaries.
- During the match, HUD adapts by mode rather than waiting until the end screen.

## Acceptance Bar
- A new player can answer “who is winning?” within 3 seconds in both modes.
- A losing teammate can still see how they helped the team.
- A fourth-place FFA player can see their rank and distance to third, second, and first.
- No design may require landscape orientation.
