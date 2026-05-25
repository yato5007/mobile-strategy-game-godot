# Analysis: Loss Decision Crossroads

## Algorithmic Fairness Analysis
- The algorithm considers only claim availability, not board state, war fatigue, or opponent pressure. This is intentionally conservative: it surfaces 100% factual "you could have claimed this" moments without judging strategic depth.
- Risk: Player thinks "I had a reason not to claim then" and dismisses the feedback. Mitigation: The hypothetical text is conditional ("could have") and the description is factual ("Banner X was available"), not evaluative ("you made a mistake").
- Edge case: In a match where no claims were ever available to the player (e.g., 4-player FFA where they were blocked), the algorithm returns empty and the consolation card appears. This prevents false feedback.

## Mobile UX Analysis
- **Card layout**: Full-width cards (matching parent scroll container width) work well in portrait. The amber/warm color signals "learning moment" without the negative connotation of red.
- **Animation**: Staggered fade-in at 200ms creates a "reveal" effect that draws attention to each card sequentially. This is preferable to all-at-once which dilutes impact.
- **Consolation card**: Prevents an empty section. Players feel acknowledged rather than ignored when no turning points are found.

## Psychological Safety
- **No blame language**: The spec mandates "could have" and "was available" phrasing. Words like "mistake", "error", "wrong", and "should have" are forbidden.
- **Limited scope**: Showing only 1-3 points prevents information overload during a potentially frustrating moment.
- **Replay incentive**: The hypothetical ("Claiming it would have put you at 2/3") creates a clear "if only" mental model. This mental contrast (actual vs. possible) is a proven motivator for replay.
- **Risk of tilt**: If a player sees 3 clear missed claims, they may feel the game is luck-based ("I just didn't get the right turns"). Mitigation: The closeness gauge (sibling component) shows that other players also made incremental progress, contextualizing the loss as competitive rather than lucky.

## RTL Implications
- Arabic conditional phrasing differs: "كان بإمكانك المطالبة براية الميدان" instead of "You could have claimed Banner Al-Midan."
- The hypothetical text may be 30-40% longer in Arabic. Card height must be flexible with `autowrap` enabled.
- The hourglass icon on the turn label should flip horizontally in RTL mode to maintain directional consistency.

## Performance
- The analysis algorithm processes at most ~20 turns of match history. It completes in <1ms even on low-end mobile CPUs.
- No online requests, no file I/O. Pure in-memory data processing.
- Card instantiation: max 3 DecisionCard nodes + 1 optional consolation card. Trivial for Godot's scene system.
