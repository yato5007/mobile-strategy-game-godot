# Plan: FFA Final Standings Board

## Goal
Specify a compact, celebratory, and fair standings board for all four FFA players.

## Data Preparation
- Receive `player_results` from match end data.
- Sort by rank supplied by core rules when available.
- If rank is missing, display order must be computed only by documented rules later.
- Preserve `local_player_id` for row highlight.

## Scene Structure
- `FfaFinalStandingsBoard.tscn` as `Control` root.
- `VBoxContainer` named `BoardStack`.
- Header `Label` and optional winner `TextureRect` badge.
- Four `StandingRow.tscn` instances.
- Optional detail expansion container per row.

## Behavior
- `configure(player_results: Array, local_player_id: String, threshold: int)` populates rows.
- Winner row animates first, then remaining rows reveal quickly.
- Local row marker appears independently from winner marker.
- Tie badge appears when `tie_group` exists.

## Validation
- Test ranks 1 through 4.
- Test local player in each rank.
- Test two-player tie and four-player tie display.
- Test Arabic long names and summaries.
- Confirm all four rows visible in portrait default state.

## Handoff
This leaf remains specification until implementation is authorized by future leaf execution.
