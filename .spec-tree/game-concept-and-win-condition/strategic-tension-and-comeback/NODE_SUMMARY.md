# NODE_SUMMARY.md — Strategic Tension And Comeback

## Purpose
Define how fixed-length Claim matches stay tense across all phases and how trailing players create legitimate strategic comeback opportunities without random handouts.

## Parent Link
`.spec-tree/game-concept-and-win-condition/`

## Decisions Made
- Use DEC-GCWC-001 Claim as the fixed reference for comeback and tension.
- Require earned, visible comeback opportunities rather than hidden rubber-banding.
- Use Godot Control-based portrait HUD patterns with Signal-driven rule updates.
- Keep all player-facing text behind localization keys for Arabic and English.

## Alternatives Rejected
- Random catch-up grants because they undermine strategic legitimacy.
- Pure score tables because they make the game feel like a spreadsheet.
- Punishing the leader invisibly because it destroys trust.
- Landscape-first layouts because the project is portrait-only.

## Dependencies
Game Rules state, Claim objective metadata, future tension curve resources, localization, presentation, bots, mock multiplayer, and balance simulator.

## Integration Risks
Comeback tuning may create rubber-band feel if caps are too generous.
Leader pressure may create unfair dogpiling in FFA without simulator checks.
Portrait HUD may become cluttered if every pressure state is shown at once.
RTL mirroring can invert path cues if icon direction is not tested.

## Implementation Status
No implementation. Future Godot tasks are documented for later authorized leaf execution.

## Tests
Checklist PASS for planning scope. QA and reviewer acceptance are represented by explicit verification items in this node.

## Next Step
Complete or consume child node tasks, then continue sibling depth-2 branches under game-concept-and-win-condition.

## Child Branches
- `comeback-mechanics-and-events` complete with 8 planning files.
- `phase-progression-and-tension` complete with 8 planning files.
- `anti-snowball-and-balance` complete with 8 planning files.
