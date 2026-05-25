# NODE_SUMMARY.md — Team and FFA Win Readability

## Purpose
Define how the Claim win condition is read differently in 2v2 team mode and 4-player FFA, both during the match and at the result screen.

## Parent Link
`.spec-tree/game-concept-and-win-condition/win-condition-clarity/`

## Decisions Made
- 2v2 official winner is the team, not the individual.
- 2v2 displays individual contribution as secondary morale support.
- FFA displays all four ranked players with claim counts and history summaries.
- HUD adapts during play by mode rather than relying only on end-match explanation.

## Alternatives Rejected
- One generic scoreboard for both modes: rejected because team morale and FFA ranking needs differ.
- MVP-first 2v2 result: rejected because it undermines team victory clarity.
- Winner-only FFA result: rejected because all four standings matter.

## Dependencies
Core match data, win/loss explanation system, localization, presentation assets, and future tie-break rule display.

## Integration Risks
Contribution rows may become blame-oriented; FFA standings may look spreadsheet-like; HUD could become too dense on portrait screens.

## Implementation Status
Specification only. No Godot implementation performed.

## Tests
Checklist PASS for planning scope. Future UI tests must validate first-glance winner readability in Arabic and English.

## Next Step
Execute depth-4 children: `team-contribution-display`, `ffa-final-standings-board`, and `mode-specific-hud-adaptation`.
