# NODE_SUMMARY.md — Mode-Specific HUD Adaptation

## Purpose
Specify how the in-match Claim HUD changes between 2v2 team mode and 4-player FFA so players understand the win structure while playing.

## Parent Link
`.spec-tree/game-concept-and-win-condition/win-condition-clarity/team-and-ffa-win-readability/`

## Decisions Made
- Use a mode-aware `ClaimModeHud` instead of a generic score strip.
- In 2v2, show team grouped claim progress with teammate pips.
- In FFA, show four individual markers ordered by standing.
- Keep HUD event-driven and separate from rule resolution.

## Alternatives Rejected
- End-screen-only mode explanation: rejected because players need clarity during decisions.
- Personal-only 2v2 HUD: rejected because it undermines team victory structure.
- Leader-only FFA HUD: rejected because all four standings matter.

## Dependencies
Match config, claim count events, safe-area/mobile UX rules, leader threat visuals, localization keys, and presentation tokens.

## Integration Risks
HUD may become crowded in portrait; future implementation must validate top-band safe area and avoid blocking the playfield.

## Implementation Status
No implementation. Future Godot scene and script tasks are documented.

## Tests
Checklist PASS for planning scope; future tests must cover Arabic/English, safe areas, local player positions, and claim update animation.

## Next Step
Coordinate with core match systems and mobile UX branches before implementation.
