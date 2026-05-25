# NODE_SUMMARY.md — Claim Progress Display

## Purpose
Define a visual-first way to show Claim progress, leader state, and comeback opportunity.

## Parent Link
`.spec-tree/game-concept-and-win-condition/win-condition-clarity/`

## Decisions Made
- Use Banner/Seal visual summary tied to objective events.
- Create depth-4 nodes for leader threat and comeback cues.

## Alternatives Rejected
- Leaderboard table.
- Board-only progress without summary.

## Dependencies
Core match state, presentation, UX/localization, balance validation.

## Integration Risks
The display may become cluttered in portrait or too numeric without presentation discipline.

## Implementation Status
No implementation.

## Tests
Checklist/QA/Review PASS for planning scope.

## Next Step
Run full Spec Kit for `leader-threat-indicator` at depth 4.
