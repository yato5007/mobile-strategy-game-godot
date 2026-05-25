# NODE_SUMMARY: Closeness Gauge

## Purpose
Visually represent how close each player/team was to the claim threshold at match end, using horizontal fill bars. Provides at-a-glance competitive context for both winners and losers, showing the match was competitive even in a loss.

## Parent Link
- Depth 3: `game-concept-and-win-condition/win-condition-clarity/win-loss-explanation/`
- The parent requires a shared visual component that shows all players' final competitive state. This node implements that component as a reusable bar gauge.

## Decisions Made
1. **Horizontal bars over radial/circular gauge**: Bars are easier to compare at a glance (parallel bars share the same axis). Radial gauges are pretty but harder to read for multi-player comparison.
2. **Left-to-right fill direction always**: Progress bars fill left-to-right universally. Even in RTL mode, the fill direction stays LTR. Only label positions swap.
3. **Threshold marker as physical line**: Shows exactly where the win line is, giving spatial context to "how close" each player is.
4. **Segmented team bar for 2v2**: Shows team total as one bar with individual splits inside. Preserves team unity while showing individual contribution.
5. **Winner emphasis via glow, not size**: The winner's bar is the same size as others but gets a subtle glow. This prevents the "winner is more important" visual hierarchy while still celebrating the win.

## Alternatives Rejected
1. **Pie chart for each player's claims**: Misleading — pie charts show parts of a whole, not progress toward a goal. Also hard to compare across 4 players.
2. **Text-only table**: "Player 1: 3/5, Player 2: 2/5" violates the Anti-Spreadsheet Game Rule. The visual bar is faster to read.
3. **Animated bar race replay**: Shows bars growing over time. Complex to implement (requires per-turn snapshots) and duplicates the postmortem's narrative function. Deferred.
4. **Stacked bar showing all players in one bar**: Loses individual identity. Players need to see their own bar vs others.

## Dependencies
- Match manager provides `closeness_data` with players array and threshold.
- Player color assignments consistent with in-match colors.
- Godot `ColorRect` for bar fill and background rendering.
- `Tween` for animation support (Godot 4.x).

## Integration Risks
- Color mismatch between in-game player colors and gauge colors would break visual association. Solution: use single source of truth for player colors (a ColorPalette singleton or match config).
- Threshold value used here must exactly match the match manager's threshold. A mismatch would make the gauge show incorrect proportions.
- 2v2 segmented bars require accurate team membership data. If team mapping is wrong, the segments would show incorrect proportions.

## Implementation Status
- All depth-4 Spec Kit files created: constitution, specification, clarification, plan, tasks, analysis, checklist, this summary.
- Code: Not yet implemented.

## Tests
- Unit: `PlayerClaimBar.configure()` sets text labels correctly.
- Unit: `PlayerClaimBar.animate_fill()` reaches target width within tolerance.
- Unit: `TeamClaimBar.configure()` splits segments proportionally.
- Integration: `ClosenessGauge.populate()` renders correct bar count for FFA, 1v1, 2v2.
- Visual: All 4 bars visible and distinguishable on 1080x1920 viewport.
- RTL: Labels swap positions correctly in Arabic mode.

## Next Step
1. Implement `PlayerClaimBar.tscn` and `PlayerClaimBar.gd`.
2. Implement `TeamClaimBar.tscn` and `TeamClaimBar.gd`.
3. Implement `ClosenessGauge.tscn` and `ClosenessGauge.gd`.
4. Wire into parent `WinLossExplanation.gd`.
5. Test with mock data for all game modes.
6. Verify RTL layout and label positioning.
