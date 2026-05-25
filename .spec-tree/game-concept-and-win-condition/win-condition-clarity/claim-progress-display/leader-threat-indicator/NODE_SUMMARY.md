# NODE_SUMMARY.md — Leader Threat Indicator

## Purpose
Define a depth-4 leaf requirement for communicating leader threat and overtake possibility without turning the game into a standings table.

## Parent Link
`.spec-tree/game-concept-and-win-condition/win-condition-clarity/claim-progress-display/`

## Decisions Made
- Use contextual contested-lead visual states linked to public objectives.
- Require under-3-second readability for leader and overtake opportunity.

## Alternatives Rejected
- Plain ranking labels.
- Constant leader alarms.

## Dependencies
Core match state, objective metadata, presentation, UX/localization, future QA.

## Integration Risks
Can mislead players if objective threat metadata is wrong; can clutter portrait UI if overdone.

## Implementation Status
No implementation. Future leaf tasks documented.

## Tests
Checklist PASS, QA PASS, Review PASS for depth-4 planning scope.

## Next Step
Continue remaining depth-4 sibling `comeback-path-cue`, then complete other depth-3/depth-2 siblings so the whole branch satisfies depth 4.
