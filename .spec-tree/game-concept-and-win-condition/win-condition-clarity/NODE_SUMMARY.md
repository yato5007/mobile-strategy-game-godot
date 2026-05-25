# NODE_SUMMARY.md — Win Condition Clarity

## Purpose
Make the selected visible Claim win condition understandable at start, during play, late match, and final reveal.

## Parent Link
`.spec-tree/game-concept-and-win-condition/`

## Decisions Made
- Accepted visual Claim with secondary numeric detail.
- Required final win/loss explanation from objective history.
- Defined three depth-3 children.

## Alternatives Rejected
- Numeric-only score.
- Symbol-only progress without precise detail.

## Dependencies
Core match systems, presentation, UX/localization, balance validation.

## Integration Risks
Claim may become numeric-only; final explanation may be too vague; FFA/2v2 readability may diverge.

## Implementation Status
No implementation.

## Tests
Checklist PASS, QA PASS, Review PASS for planning scope.

## Next Step
Run full Spec Kit for `claim-progress-display` and continue to depth 4.
