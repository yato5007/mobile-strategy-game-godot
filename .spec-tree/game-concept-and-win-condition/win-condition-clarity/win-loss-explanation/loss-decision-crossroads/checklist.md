# Checklist: Loss Decision Crossroads

## Analysis Engine
- [ ] `decision_analyzer.gd` exists with static `analyze()` function.
- [ ] Algorithm correctly identifies turns with unclaimed available banners.
- [ ] Algorithm filters to only high-impact turns (later claimed by opponents).
- [ ] Impact scoring works: higher score = more impactful.
- [ ] Returns top 1-3 turning points sorted by impact.
- [ ] Returns empty array when no turning points found.
- [ ] 2v2 `analyze_team()` variant aggregates across both team members.
- [ ] Unit tests pass for: 3 turning points, 1 turning point, 0 turning points.

## Decision Card
- [ ] DecisionCard.tscn exists with correct node structure.
- [ ] `configure(data)` shows turn number with hourglass icon.
- [ ] Description uses `tr()` with `end_crossroads_description_missed_claim` key.
- [ ] Hypothetical uses `tr()` with `end_crossroads_hypothetical` key.
- [ ] Conditional "could have" tone — no blame words.
- [ ] Card has amber/warm background (not red).
- [ ] Card height auto-expands for long Arabic text.

## Crossroads Container
- [ ] LossCrossroads.tscn exists with title label.
- [ ] `populate()` calls analyzer and instantiates correct number of cards.
- [ ] Empty analyzer result shows consolation card.
- [ ] Consolation card text uses `tr("end_crossroads_consolation")`.
- [ ] Cards animate in with 200ms stagger fade-in.
- [ ] Animation completes in under 1 second.
- [ ] Section title uses `tr("end_crossroads_title")`.

## RTL and Localization
- [ ] Arabic: turn label and hourglass icon right-aligned.
- [ ] Arabic: description and hypothetical text right-aligned.
- [ ] Arabic conditional phrasing correct.
- [ ] All text uses localization keys, no hardcoded strings.
- [ ] Arabic and English translations exist for all `end_crossroads_*` keys.

## Integration
- [ ] Wired into WinLossExplanation loss mode.
- [ ] Match history data correctly passed from match manager.
- [ ] Section is scrollable alongside other loss screen content.
- [ ] Does not block "Return to Lobby" button.
- [ ] Works for FFA, 2v2, and 1v1 modes.
