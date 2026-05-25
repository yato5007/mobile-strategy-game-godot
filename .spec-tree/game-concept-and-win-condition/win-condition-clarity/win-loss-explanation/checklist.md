# Checklist: Win/Loss Explanation

## Win Screen
- [ ] Victory banner shows correct winning player name/avatar.
- [ ] Claim postmortem timeline shows each claim with turn number.
- [ ] Claim cards show claim order (1st, 2nd, 3rd).
- [ ] Timeline is horizontally scrollable with inertia.
- [ ] "Return to Lobby" button works and emits `return_to_lobby` signal.
- [ ] "View Match Details" button exists (secondary).

## Loss Screen
- [ ] Defeat banner shows correctly with localized "DEFEAT" text.
- [ ] Decision crossroads shows 1-3 turning point cards.
- [ ] Each decision card shows turn number, description, hypothetical.
- [ ] Hypothetical text uses conditional phrasing ("could have...").
- [ ] "Play Again" button starts a new match without going to lobby.

## Closeness Gauge (shared)
- [ ] Bar per player showing claim_count / threshold proportion.
- [ ] Each bar uses that player's assigned color.
- [ ] Player name and claim count shown on each bar.
- [ ] Bars animate from 0 to final width on screen appear.
- [ ] Threshold marker line shown across all bars.
- [ ] Works for 2 players, 4 players, and 2v2 teams.
- [ ] In 2v2: shows team total bar with individual contributions nested.

## Mobile and Portrait
- [ ] Entire screen scrollable vertically in portrait.
- [ ] No content clipped on 1080x1920 or typical 6-inch screens.
- [ ] Buttons are minimum 48px tap target.
- [ ] Touch scroll on timeline works (no drag dead zones).
- [ ] No landscape orientation issues (should not even be possible).

## Localization and RTL
- [ ] All text uses `tr()` localization keys, no hardcoded strings.
- [ ] Arabic: timeline scrolls right-to-left.
- [ ] Arabic: decision cards text renders correctly (no broken ligatures).
- [ ] Arabic: closeness gauge labels right-aligned.
- [ ] Arabic: button order swaps (lobby button on left side).
- [ ] English and Arabic translations exist for all `end_*` keys.

## Data and Integration
- [ ] Match manager emits `match_ended` signal with correct data dict.
- [ ] Data dict contains `winner_id`, `player_results`, `threshold`.
- [ ] Each `player_results` entry has `claims_made`, `claim_turns`, `claim_count`.
- [ ] Skip button returns to lobby even while animations play.
- [ ] Screen cleans up (free) on dismiss — no memory leak.
