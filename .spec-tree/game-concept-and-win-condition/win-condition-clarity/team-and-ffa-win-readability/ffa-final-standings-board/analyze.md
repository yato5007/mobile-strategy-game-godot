# Analysis: FFA Final Standings Board

## Competitive Clarity
FFA players compare themselves against three rivals. A full standings board answers “who won?”, “where did I place?”, and “how far was I from the next rank?” in one glance. This supports replay motivation better than a winner-only celebration.

## Portrait Layout
- Four stacked rows fit better than a grid.
- Each row must keep rank and claim count visible even if the summary wraps.
- Expansion should be optional because default readability matters more than detail.
- Winner decoration must not consume too much vertical space.
- Avoid tiny columns; use card rows with clear hierarchy.

## Arabic RTL Considerations
- Rank order remains top-to-bottom from first to fourth.
- In Arabic, row content aligns right and avatar may sit on the leading/right edge.
- Rank badge should use localized words or numerals, not English ordinal suffixes.
- Claim history summaries must allow Arabic place/objective names in natural order.
- Tie explanation may be longer in Arabic and needs wrapping.
- Local player marker must be textual/iconic, not only a left-side stripe that becomes ambiguous in RTL.

## Game Feel Risks
- Spreadsheet risk: four rows of numbers can feel dry.
- Mitigation: use avatars, banner icons, victory accent, animated row reveal, and concise history phrases.
- Shame risk: fourth place may feel punished.
- Mitigation: neutral rank language and separate learning screen for decisions.

## Integration Risks
- Requires reliable rank/tie data from core rules.
- Requires localized objective names for claim history.
- Needs presentation branch for final token and banner visuals.
