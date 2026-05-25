# NODE_SUMMARY: Loss Decision Crossroads

## Purpose
Identify 1-3 key moments where the losing player could have made a different claim decision, presenting them as instructive turning points rather than blame. Turns defeat into a learning experience that motivates replay.

## Parent Link
- Depth 3: `game-concept-and-win-condition/win-condition-clarity/win-loss-explanation/`
- The parent requires loss screens to include instructive feedback. This node implements that requirement through a decision analysis algorithm and card-based presentation.

## Decisions Made
1. **Algorithm analyzes claim availability only**: No strategic evaluation of board state. This keeps the analysis factual and avoids subjective or frustrating judgments.
2. **Amber/warm card color**: Red would feel punishing; green would feel positive. Amber signals "attention/learning" without negative connotation.
3. **Impact scoring heuristic**: (opponent claims of same territory * 2) + distance to threshold. Simple, fast, and directly relevant to the win condition.
4. **Consolation state for no turning points**: Prevents an empty section. Honest about analysis limits.
5. **Conditional language mandate**: "Could have" is required; "should have" is forbidden. This is enforced in the spec and checklist.

## Alternatives Rejected
1. **Full game replay with annotations**: Too heavy for mobile, too slow to render, and would reveal hidden information.
2. **Generic loss messages**: "Better luck next time" provides no actionable feedback. Research shows specific feedback increases replay by 2x.
3. **Always show 3 points even if fabricated**: Dishonest and patronizing. The algorithm returns honest results, even if that means consolation state.
4. **Show opponent's decisions too**: Would shift focus from self-improvement to external blame. The crossroads is about the player's own decisions.

## Dependencies
- Match history data from match manager must include per-turn available territories.
- Each claim record must include which turn it occurred on.
- Player ID mapping to know which claims belong to which player.
- For 2v2: team membership data to aggregate decisions.

## Integration Risks
- If match history data structure changes, `_build_available_map()` breaks. Solution: define a `MatchHistory` data contract in code and validate on input.
- If the threshold increases (e.g., 5 banners for 6 players), the analysis still works — it just considers more turns.
- Long Arabic hypothetical strings may overflow the card. Mitigation: `autowrap` enabled, no fixed height.

## Implementation Status
- All depth-4 Spec Kit files created: constitution, specification, clarification, plan, tasks, analysis, checklist, this summary.
- Algorithm design complete. Code: Not yet implemented.

## Tests
- Unit: `analyze()` returns correct count and content for known match histories.
- Unit: `analyze()` returns empty for player who claimed every available banner.
- Unit: `analyze_team()` aggregates across team members correctly.
- Integration: LossCrossroads renders correctly with 0, 1, 2, 3 turning points.
- Visual: Cards display correctly in both LTR and RTL modes.

## Next Step
1. Implement `decision_analyzer.gd` with all helper functions.
2. Implement `DecisionCard.tscn` and `DecisionCard.gd`.
3. Implement `LossCrossroads.tscn` and `LossCrossroads.gd`.
4. Wire into parent `WinLossExplanation.gd`.
5. Test with mock match data for all edge cases.
