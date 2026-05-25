# Specification: FFA Final Standings Board

## Overview
This leaf specifies the final board for 4-player free-for-all matches. The board communicates the winner, complete ranking, claim counts, and each player's claim journey summary.

## Layout
1. Root is `Control` embedded in the end-match screen.
2. Header shows localized title: “Final Standings” / Arabic equivalent.
3. A vertical `VBoxContainer` lists four `StandingRow` cards.
4. Rows are ordered from first place to fourth place.
5. The winner row has a victory banner accent.
6. The local player row has a separate outline or marker.
7. Each row supports a compact expandable claim history summary.

## Standing Row Fields
- Rank badge with localized rank label.
- Player avatar/token.
- Player name.
- Claim count versus threshold.
- Claim history summary: e.g., “Claimed Market, Oasis, Gate”.
- Optional tie badge.

## Interaction
- Default view shows all four rows without needing scroll on common 6-inch portrait screens.
- Tapping a row may expand a one-line history into a two-line summary.
- Expansion must not hide the winner header permanently; vertical scroll is allowed.

## Data Contract
- Input: ordered `player_results` or unordered results plus rank calculation.
- Required keys: `player_id`, `display_name`, `claim_count`, `claim_history`, `rank`, `is_winner`.
- Optional keys: `tie_group`, `tie_break_reason_key`, `avatar_id`, `color`.
