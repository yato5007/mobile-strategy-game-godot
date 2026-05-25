# NODE_SUMMARY: Win/Loss Explanation

## Purpose
Define how the game communicates match outcomes to players through three mechanisms: a win postmortem timeline, loss decision crossroads analysis, and a closeness gauge. The goal is to make every ending feel earned, understandable, and educational.

## Parent Link
- Depth 2: `game-concept-and-win-condition/win-condition-clarity/`
- The parent establishes visible claim progress as a requirement. This node handles the end-of-match display of that same data for explanation purposes.

## Decisions Made
1. **Scrollable portrait layout**: Three sections stack vertically in a scroll container. The banner section is always visible above the fold.
2. **Reusable closeness gauge**: Shared between win and loss screens, implemented as a sub-node.
3. **Decision analysis is loss-only**: The winner does not see turning points; only the loser gets instructive feedback.
4. **Tone is analytical, not blaming**: Decision cards use "could have" language to preserve player morale.
5. **Skippable immediately**: "Return to Lobby" button present from the moment the screen appears.
6. **RTL timeline scroll**: For Arabic, the horizontal timeline reverses scroll direction.

## Alternatives Rejected
1. **Video replay of the match**: Too complex, high data cost, long loading time. Text/visual timeline is faster and more mobile-appropriate.
2. **Single non-scrollable screen**: Would require reducing content. The three sections are all important — scroll is the right trade-off.
3. **Giving winners a loss analysis too**: Unnecessary; winners don't need improvement feedback immediately after winning.
4. **Modal popup with tabs**: Tabs require extra taps. Linear scroll is simpler for mobile.

## Dependencies
- `MatchManager` must emit `match_ended` signal with structured data.
- Claim system must record claim turns in match history.
- Localization system must have `end_*` keys for Arabic and English.
- Player color assignments must be accessible from match state.
- Parent node `win-condition-clarity` must provide the claim threshold value.

## Integration Risks
- If `MatchManager` data structure changes, `WinLossExplanation` parsing must update.
- 2v2 mode adds complexity to the closeness gauge (team + individual bars).
- Long player names in Arabic may overflow card widths — must use `autowrap` and `max_width`.
- Animation length on slow mobile devices: bar fill animations should have a max duration fallback of 1.5s.

## Implementation Status
- Depth-3 files: constitution, spec, clarification, plan, tasks, analyze, checklist, this summary — all created.
- Code: Not yet implemented. All files are Spec Kit artifacts at this stage.

## Tests
- Unit test: `decision_analyzer.gd` returns correct 1-3 turning points for known match history.
- Integration test: `WinLossExplanation.show()` renders correctly for win and loss cases.
- Visual test: All three sections visible and readable on 1080x1920 viewport.
- Locale test: Switch to Arabic, verify RTL scroll and label alignment.

## Next Step
1. Create depth-4 subtree: `win-postmortem/`, `loss-decision-crossroads/`, `closeness-gauge/`
2. Implement core `WinLossExplanation.tscn` and `WinLossExplanation.gd`
3. Implement each depth-4 leaf node as specified in tasks.md
4. Test with mock match data
5. Verify RTL and localization
