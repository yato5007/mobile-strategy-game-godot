# NODE_SUMMARY.md — Comeback Threshold Adaptation

## Purpose
Define a tightly bounded max-one-Claim threshold adaptation for trailing players when the gap is severe and strategically earned.

## Parent Link
`/workspaces/mobile-strategy-game-godot/.spec-tree/game-concept-and-win-condition/strategic-tension-and-comeback/anti-snowball-and-balance/`

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
Use this depth-4 leaf as future implementation input after broader branch planning and authorization.

## Child Branches
- None; depth 4 is the maximum allowed depth.
