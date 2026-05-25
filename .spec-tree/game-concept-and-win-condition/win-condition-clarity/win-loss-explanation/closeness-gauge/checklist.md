# Checklist: Closeness Gauge

## Player Claim Bar
- [ ] PlayerClaimBar.tscn exists with correct node hierarchy.
- [ ] `configure()` sets player_name, claim_count as "%d/%d", bar_fill color.
- [ ] bar_bg is dark gray (#2a2a2a) and full width.
- [ ] bar_fill starts at width 0.
- [ ] `animate_fill()` tweens bar_fill.rect_size.x to correct proportion.
- [ ] `animate_fill()` emits `filled` signal on completion.
- [ ] bar_fill has rounded corners via theme.

## Team Claim Bar (2v2)
- [ ] TeamClaimBar.tscn exists for team mode.
- [ ] Bar splits proportionally between two team members.
- [ ] Sub-labels show each member's name and individual count.
- [ ] Team total shown as the primary label.

## Gauge Container
- [ ] ClosenessGauge.tscn exists with title_label and bars_container.
- [ ] `populate()` creates correct number of bars for FFA (4), 1v1 (2), 2v2 (2 teams).
- [ ] Bars sorted by claim_count descending, winner first.
- [ ] Threshold marker (white ColorRect, 2px) at correct position across all bars.
- [ ] Winner's bar has glow/highlight effect.
- [ ] 0-claim player shows 0% fill (just bg) with honest "0/X" text.
- [ ] Fallback state if all claims are 0: "No claims were made" label.

## Animation
- [ ] `animate_all()` runs with stagger: winner first, then others after 100ms each.
- [ ] Winner bar duration: 400ms. Other bars: 600ms.
- [ ] 200ms initial delay before animation starts.
- [ ] Total animation time under 1.2 seconds.
- [ ] Threshold marker appears before bars start filling.

## RTL and Localization
- [ ] Section title uses `tr("end_closeness_title")`.
- [ ] Arabic: player name label right-aligned and positioned to right of bar.
- [ ] Arabic: claim_count label positioned to left of bar.
- [ ] Bar fill direction stays left-to-right in RTL mode.
- [ ] Threshold marker position unaffected by RTL.
- [ ] Arabic player names render correctly with right alignment.

## Data Integrity
- [ ] `populate()` validates claim_count >= 0 and threshold > 0.
- [ ] Error state shown if validation fails.
- [ ] threshold matches match manager's threshold.
- [ ] Player colors match in-game colors exactly.
- [ ] Works with empty players array (defensive fallback).

## Integration
- [ ] Wired into WinLossExplanation in both win and loss modes.
- [ ] closeness_data passed correctly from match manager.
- [ ] Gauge scrolls properly within the parent scroll container.
- [ ] No visual clipping on 1080x1920 or smaller viewports.
