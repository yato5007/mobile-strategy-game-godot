# Analysis: Team and FFA Win Readability

## Mode Comprehension
2v2 and FFA create different emotional expectations. In 2v2, players need shared victory identity and contribution reassurance. In FFA, players need rank clarity and comparison against all opponents. A single generic scoreboard would technically show numbers but would fail the morale and readability goals.

## Portrait Mobile Constraints
- A horizontal four-player scoreboard can become cramped in portrait.
- Use vertical stacking for final FFA standings.
- Use grouped cards for team mode so each team reads as one unit.
- Keep the official winner above the fold with claim count visible.
- Put expanded history below the fold inside `ScrollContainer`.
- Touch targets for expandable details must be at least 48 px high.

## Arabic RTL Considerations
- Arabic team and player names align right inside rows.
- Rank badges may remain visually at the leading edge, which is right side in RTL.
- FFA order should still be first place at the top, not mirrored vertically.
- Teammate contribution rows should show claim count close to the player name in RTL to avoid detached numbers.
- English `Team A won` and Arabic equivalent must not concatenate hardcoded player names in unsafe order.
- Use localized templates such as `tr("result_team_won_format")` with named substitution when available.
- Arabic labels may be longer; contribution rows need wrapping or two-line layout.
- Do not use narrow fixed-width English-only columns.

## Game Feel Risks
- Risk: Contribution display becomes a blame board.
- Mitigation: show positive contribution categories and team total first.
- Risk: FFA standings look like a spreadsheet.
- Mitigation: use player tokens, claim banners, animated row reveal, and compact claim history cards.
- Risk: Color confusion in team mode.
- Mitigation: combine color, crest, labels, and grouping.

## Integration Notes
- Depends on final claim event history from core match systems.
- Does not define tie-break rules; only reserves display slots.
- Presentation branch must later provide crest/token visual style.
