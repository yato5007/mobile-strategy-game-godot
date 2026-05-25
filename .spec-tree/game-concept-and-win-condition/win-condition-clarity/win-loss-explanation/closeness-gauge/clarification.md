# Clarification: Closeness Gauge

## Q: Does the closeness gauge show historical progress or only final state?
A: Only the final state at match end. Showing historical progress would require storing per-turn snapshots of all claim counts, which is expensive and duplicates the postmortem's role. The gauge is a final summary, not a replay.

## Q: What if all players have 0 claims? (Should not happen in a normal match.)
A: This would only occur if the match ended without any claims (e.g., server crash or bug). In that edge case, all bars show 0 dark gray fill, and a label "No claims were made" replaces the gauge.

## Q: How does the gauge handle a player with 0 claims in a normal match?
A: The bar shows 0% fill (just the dark gray background). The player name and "0/X" text are still shown. This is honest and visible — the player did not participate in the claim race.

## Q: Is the threshold marker visible before the bar fills?
A: Yes. The threshold marker (white vertical line) appears at the start of the animation, before bars begin to fill. This gives the player a target reference as they watch bars grow.

## Q: How does this look on a small screen (e.g., iPhone SE, 4.7 inch)?
A: Each PlayerClaimBar is 24px height + 8px vertical margin = 32px per bar. For 4 bars: 128px total + 24px title = ~152px. This fits comfortably within 30% of a 1334px-height screen (400px available). On smaller screens, we reduce font sizes from 14px to 12px for player names.

## Q: Can I tap on a bar for more info?
A: Not in v1. In a future version, tapping a bar could show that player's claim timeline. For now, bars are display-only.

## Q: How does this work with Arabic player names?
A: Player names use the localization system via the player profile. Arabic names render correctly with Godot's RTL text support. The name label auto-flips to the right side of the bar in RTL mode.
