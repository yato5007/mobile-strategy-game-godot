# Analysis: Team Contribution Display

## Team Psychology
Team results can create frustration if a player feels invisible. Showing contribution reduces that risk, especially for support-oriented players. However, ranking teammates would harm morale. The selected approach shows both teammates side by side in equal visual weight.

## Portrait Layout
- Vertical card stacking is better than a two-column layout on phones.
- Team header must fit above fold with combined claim count.
- Contribution cards can use two-line text for long names and Arabic phrases.
- Synergy highlight can sit below cards because it is supportive, not primary.

## Arabic RTL Considerations
- Arabic labels align right inside each contribution card.
- Avatar/token can appear at the leading edge; in RTL this means the right side.
- Claim count should not be separated far from the player name.
- Use template localization for claim count: Arabic pluralization may differ from English.
- Avoid slash-only text if Arabic copy needs a phrase like “٢ من ٥ رايات”.
- The two teammate cards remain stacked in team member order; vertical order is not mirrored.
- Long Arabic key moments must wrap to two lines without overlap.

## Visual Risks
- Spreadsheet risk: a two-row numeric table would feel administrative.
- Mitigation: use card panels, crest, avatar, and moment text.
- Blame risk: zero-claim player may feel exposed.
- Mitigation: neutral language and support highlight fallback.

## Integration Risks
- Requires accurate team membership from multiplayer/match config.
- Requires claim history or fallback behavior.
- Must coordinate with presentation branch for crest/token assets.
