# NODE_SUMMARY.md — Team Contribution Display

## Purpose
Specify the 2v2 end-match contribution panel that keeps team victory primary while showing each teammate's personal contribution.

## Parent Link
`.spec-tree/game-concept-and-win-condition/win-condition-clarity/team-and-ffa-win-readability/`

## Decisions Made
- Use team-first header with combined claim count.
- Use equal-weight teammate contribution cards.
- Include one synergy highlight to reinforce cooperation.
- Avoid teammate ranking and blame framing.

## Alternatives Rejected
- MVP-first team screen: rejected because it weakens team identity.
- Numeric-only contribution table: rejected because it feels like a spreadsheet.
- Hide individual contribution: rejected because players need morale and learning feedback.

## Dependencies
Team result data, player claim histories, localization, and presentation assets for crests/tokens.

## Integration Risks
Missing support data may make contribution feel claim-only; fallback text must be used until richer event data exists.

## Implementation Status
No implementation. Future Godot scene and script tasks are documented.

## Tests
Checklist PASS for planning scope; future tests must cover equal contribution, uneven contribution, zero claims, and Arabic long names.

## Next Step
Implement only when leaf implementation phase begins and result data contract is stable.
