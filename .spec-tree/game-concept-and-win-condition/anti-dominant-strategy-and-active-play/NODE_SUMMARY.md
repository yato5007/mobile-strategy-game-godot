# NODE_SUMMARY.md — Anti Dominant Strategy And Active Play

## Purpose
Prevent any single strategy from dominating and reward active participation throughout the fixed-length Claim match.

## Parent Link
`.spec-tree/game-concept-and-win-condition/`

## Decisions Made
- Use DEC-GCWC-001 fixed-length visible Claim as the anchor for all anti-dominance and active-play behavior.
- Prefer visible board pressure, icon indicators, and bottom-card explanations over hidden correction.
- Require future Godot Signals, Resources, Timer windows, Control scenes, Labels, TextureRects, and AnimationPlayer feedback.
- Preserve portrait mobile readability and Arabic/English localization from the start.

## Alternatives Rejected
- Hidden penalties because they make Claim outcomes feel unfair.
- Pure raw balance tables because they create spreadsheet UX and weak game feel.
- Constant action spam because the game must remain strategic, not reaction-based.
- Landscape-first dashboards because the project is portrait-only.

## Dependencies
Game Rules state, Claim objective metadata, future bot public strategy API, mock multiplayer serialization, localization, presentation assets, and balance simulator fixtures.

## Integration Risks
Anti-dominance pressure could feel punitive if warnings are unclear.
Counter indicators could become cluttered on small portrait screens.
FFA dogpiling could emerge if all counters point at the leader too often.
RTL mirroring could invert counter arrows if not visually tested.

## Implementation Status
No implementation. This node only documents future tasks for later authorized leaf execution.

## Tests
Planning checklist PASS. Future QA must validate passive failure, strategy diversity, counter readability, and RTL/LTR display.

## Next Step
Consume these tasks during future authorized implementation, then validate with simulator, QA, reviewer, and integration review.

## Child Branches
- `strategy-diversity-enforcement` complete or planned in this subtree with eight Spec Kit artifacts.
- `active-play-incentives` complete or planned in this subtree with eight Spec Kit artifacts.
- `strategy-counterplay-visibility` complete or planned in this subtree with eight Spec Kit artifacts.
