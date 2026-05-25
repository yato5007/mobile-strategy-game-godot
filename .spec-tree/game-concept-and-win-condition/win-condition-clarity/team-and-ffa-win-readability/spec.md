# Specification: Team and FFA Win Readability

## Overview
`team-and-ffa-win-readability` defines mode-specific presentation for the Claim win condition.
The game has fixed-length or threshold-based Claim outcomes depending on match configuration, but the readability requirement is the same: players must instantly understand who won, why that side won, and where they stood.

## 2v2 Team Mode
1. The top result line says the winning team, not a single player.
2. The winning team appears as one grouped visual unit with shared color, banner crest, and two player portraits.
3. The team claim count is primary: `Team Claims: 5 / 5` or equivalent localized copy.
4. Individual contribution appears below as two compact contribution rows.
5. Contribution rows show claim count, key claim moment, assist/synergy moment, and role flavor.
6. Losing team receives the same structure, framed as “Team Result” rather than personal blame.
7. MVP language is allowed only as a secondary badge and must not imply that only one teammate won.

## FFA Mode
1. The top result line names the individual winner.
2. All four players appear in a ranked standings board.
3. Each row includes rank, avatar/token, player name, claim count, and short claim history summary.
4. First place receives a victory banner style; other ranks remain readable without shame-heavy copy.
5. Ties are marked clearly with tie badges and deterministic tie-break explanation if applicable.
6. The local player row is highlighted regardless of rank.

## During-Match HUD
- 2v2 HUD groups teammate progress together and visually pairs opponents.
- FFA HUD shows four individual progress markers with compact rank ordering.
- Mode changes are data-driven by `match_mode`, not hardcoded screens.

## Data Requirements
- `match_mode`: `team_2v2` or `ffa_4p`.
- `teams`: list of team ids with member player ids for team mode.
- `player_results`: claim count, claim history, key moments, avatar, color, display name.
- `team_results`: combined claims, member contributions, synergy highlights.
