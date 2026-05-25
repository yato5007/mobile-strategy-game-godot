# Checklist: Win Postmortem

## Claim Card
- [ ] ClaimCard.tscn exists with all required child nodes.
- [ ] `configure(data)` populates order badge, territory name, turn label.
- [ ] Order badge shows correct ordinal: "1st", "2nd", "3rd".
- [ ] Territory name uses `tr()` for localization.
- [ ] Banner icon TextureRect displays correctly at 32x32.
- [ ] Card has rounded background with player accent color.
- [ ] Card does not intercept taps (pass-through to scroll container).

## Timeline
- [ ] WinPostmortem.tscn has ScrollContainer with horizontal scroll enabled.
- [ ] HBoxContainer fills ScrollContainer and wraps content.
- [ ] `populate(claims)` creates correct number of ClaimCard instances.
- [ ] Cards appear in chronological order.
- [ ] Connecting line drawn between cards in player color.
- [ ] Victory flag icon appears on last card.
- [ ] Start icon appears on first card.

## Animation
- [ ] Cards slide in from off-screen with 100ms stagger.
- [ ] Connecting line animates alongside card appearance.
- [ ] Animation completes within 1 second total.
- [ ] Animation does not block UI interaction.

## RTL
- [ ] In Arabic locale, cards lay out right-to-left.
- [ ] Scroll starts at rightmost position in Arabic mode.
- [ ] Ordinal badge uses Arabic ordinal format.
- [ ] Connecting line reverses draw direction in RTL.

## 2v2 Mode
- [ ] Combined team claims shown, not individual.
- [ ] Each claim card shows which team member made the claim.
- [ ] Player color coding on cards is distinct and visible.
- [ ] Team total shown in a header above the timeline.

## Data Integrity
- [ ] Handles empty claims array (defensive — should not happen).
- [ ] Handles single-claim win (only 1 card shown).
- [ ] Claim data matches what was recorded during match.
