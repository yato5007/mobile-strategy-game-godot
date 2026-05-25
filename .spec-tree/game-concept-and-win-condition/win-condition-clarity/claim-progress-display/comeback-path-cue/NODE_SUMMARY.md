# NODE_SUMMARY.md — Comeback Path Cue

## Purpose
Define a depth-4 leaf requirement for communicating a trailing player's real public route back into contention without changing rules or adding rubber-banding.

## Parent Link
`.spec-tree/game-concept-and-win-condition/win-condition-clarity/claim-progress-display/`

## Decisions Made
- Use public objective-linked visual opportunity threads as the accepted comeback cue direction.
- Require under-5-second readability for a plausible comeback opportunity.
- Preserve fairness by forbidding hidden-information reveals or automatic boosts.

## Alternatives Rejected
- No comeback cue.
- Text advice only.
- Automatic comeback boost.

## Dependencies
Core match state, objective metadata, balance validation, presentation, UX/localization.

## Integration Risks
Cue can mislead players if objective swing metadata is wrong; cue can clutter portrait UI if overused.

## Implementation Status
No implementation. Future leaf tasks documented.

## Tests
Checklist PASS, QA PASS, Review PASS for depth-4 planning scope.

## Next Step
Continue `win-loss-explanation` at depth 3 and expand it to meaningful depth-4 leaves.
