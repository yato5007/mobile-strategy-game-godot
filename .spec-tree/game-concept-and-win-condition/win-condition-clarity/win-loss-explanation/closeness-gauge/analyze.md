# Analysis: Closeness Gauge

## Visual Communication Analysis
- **Bar charts are universal**: Horizontal progress bars are understood across cultures without instruction. They read as "how full is the bucket" — an intuitive metaphor for proximity to a goal.
- **Color coding**: Player colors from the match (avatar borders, claim markers) must match the gauge bars exactly. Any color mismatch breaks the association and confuses the player.
- **Threshold marker**: The white vertical line at the threshold position creates immediate spatial understanding. A player at 2/3 sees "I was this close" — the visual gap between their bar end and the marker line encodes the competitive distance.
- **Winner ordering**: Sorting by claim count descending with winner on top reinforces the competitive hierarchy. This is truthful and helps the loser see "I was right behind them."

## Mobile UX Analysis
- **Bar height 24px**: This is the minimum for readability on mobile while keeping 4 bars compact. 24px + 4px margin = 28px per bar × 4 = 112px total — very efficient use of portrait space.
- **Label widths**: Player names at 60px min width assumes 8-10 character names. Arabic names (4-6 characters typically) fit well. English names may be longer — text overflow uses ellipsis at 60px.
- **Touch target**: Bars are display-only. No tap interaction required. This reduces cognitive load.
- **Animation performance**: 4 simultaneous Tween animations (one per bar) is well within Godot's mobile performance envelope. The total animation completes in 1 second, so the player sees the final state quickly.

## Psychological Impact
- **Near-win effect**: A player at 2/3 seeing the threshold line just ahead feels "almost." This is motivating rather than frustrating — the gap is visible and specific.
- **Competitive context**: Seeing all 4 bars clustered together (e.g., 3, 2, 2, 1 claims) reinforces that the match was competitive. Even the loser at 2 claims sees they were close.
- **Blowout mitigation**: If one player dominates (3 claims vs 0, 0, 0), the gauge honestly shows the gap. However, showing all zeros except the winner still communicates "I didn't participate in the claim race" — which is accurate and may motivate the player to focus on claiming next time.
- **2v2 team spirit**: Team bars with individual splits create shared accountability. A team member with 0 claims sees their contribution gap clearly.

## RTL Implications
- Bar fill direction is universally left-to-right (progress is a culturally universal left-to-right concept for this type of visualization). Even Arabic interfaces use LTR progress bars.
- Label swap: In RTL mode, the player name moves to the right side of the bar, and the claim count moves to the left. This matches the natural reading flow for Arabic (right-to-left).
- The threshold marker position is calculated proportionally from the left edge, regardless of language. The marker is at (threshold_claim_count / max_threshold) × bar_width from the left.
- Section title "Final Standings" translated to Arabic: "الترتيب النهائي" — uses same `end_closeness_title` key.

## Data Integrity
- The gauge depends entirely on `claim_count` from match results. If this data is missing or wrong, the gauge shows incorrect information.
- Mitigation: `populate()` validates that `claim_count` is an integer >= 0 and `threshold` is an integer > 0. If validation fails, the gauge shows an error state: "Unable to display standings."
- The `threshold` must match what the match manager used. Mismatch would make the gauge misleading. A single-source-of-truth function `get_threshold(player_count)` must be used consistently.
