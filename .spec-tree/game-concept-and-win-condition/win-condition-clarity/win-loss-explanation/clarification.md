# Clarification: Win/Loss Explanation

## Q: When exactly does the explanation screen appear?
A: Immediately after the win condition triggers and the final claim animation completes (approx 0.5s). There is no loading screen — the transition uses a crossfade over 300ms.

## Q: Can the player skip the explanation?
A: Yes. A "Return to Lobby" button is always visible at the bottom of every end-of-match screen. Tapping it immediately returns to the main menu.

## Q: Is the explanation scrollable?
A: Yes. The entire screen is a vertical `ScrollContainer`. In portrait, the three sections (banner, postmortem/crossroads, closeness gauge) stack vertically. On a typical phone, the closeness gauge is partially visible below the fold, inviting a scroll.

## Q: Does this work in 2v2 mode?
A: Yes. Team wins show both members as winners. The postmortem shows team-level claims. The closeness gauge shows each team's total along with individual contributions inside each team bar.

## Q: What if a player disconnects before the explanation?
A: The server/mock adapter replays the final state from the match history. The disconnected player sees the same screens when they reconnect to the lobby.

## Q: Are the loss turning points frustrating?
A: Designed to be instructive, not blaming. Each turning point is phrased as "At turn X, claiming Banner Y earlier could have changed the outcome" — never "You made a mistake." The tone is neutral and analytical.

## Q: Is the closeness gauge useful when someone wins by a large margin?
A: Yes. Even a blowout shows that other players made progress. It prevents the "I did nothing" feeling by highlighting partial progress. If someone had 0 claims, it shows 0 visibly — the gauge is honest.

## Q: How does RTL affect the layout?
A: In Arabic mode, the timeline flips right-to-left. The closeness gauge bars still grow left-to-right (since direction is universal progress), but labels are right-aligned. The "Return to Lobby" button appears on the left side in RTL mode.
