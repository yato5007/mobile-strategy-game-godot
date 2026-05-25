# NODE_SUMMARY.md — FFA Final Standings Board

## Purpose
Specify the 4-player FFA final standings board so every player sees rank, claim count, and summary, not just the winner.

## Parent Link
`.spec-tree/game-concept-and-win-condition/win-condition-clarity/team-and-ffa-win-readability/`

## Decisions Made
- Use a vertical four-row standings board.
- Show all players with rank, token, claim count, and summary.
- Highlight local player without moving their rank.
- Reserve tie badge and tie explanation slots.

## Alternatives Rejected
- Winner-only FFA result: rejected because losers need standings context.
- Horizontal four-column board: rejected because portrait mobile would be cramped.
- Local-player-first sorting: rejected because it distorts competitive truth.

## Dependencies
Final player results, rank/tie data, localized objective names, player avatars/tokens, and presentation styling.

## Integration Risks
Tie rules may arrive later; UI must not imply nonexistent tie-break logic. Objective names must be localized before claim summaries are final.

## Implementation Status
No implementation. Future Godot tasks are documented.

## Tests
Checklist PASS for planning scope; future tests must cover local player at every rank, ties, and Arabic long summaries.

## Next Step
Implement only after result data contract and tie display rules are stable.
