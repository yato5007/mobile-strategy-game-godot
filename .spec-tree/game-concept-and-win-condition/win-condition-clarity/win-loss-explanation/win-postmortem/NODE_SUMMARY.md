# NODE_SUMMARY: Win Postmortem

## Purpose
Display the winning player's claim journey as a horizontal scrollable timeline of claim cards, showing order, territory, and turn for each banner claimed. Makes the win feel earned by making progress tangible.

## Parent Link
- Depth 3: `game-concept-and-win-condition/win-condition-clarity/win-loss-explanation/`
- The parent specifies that win screens must include a claim history component. This node implements that component.

## Decisions Made
1. **Horizontal scroll over vertical list**: Timeline is inherently sequential. Horizontal layout visually reinforces the "journey" metaphor and fits well under the victory banner.
2. **Card-based rather than table-based**: Cards allow player color coding, icons, and visual hierarchy. A table would feel like a spreadsheet (prohibited by MASTER_PROJECT_PLAN Anti-Spreadsheet Game Rule).
3. **Connecting line between cards**: Visually reinforces the path metaphor without adding text.
4. **No tap-to-expand in v1**: Keeps scope small. Each card already conveys its essential data.
5. **Start + flag icons on first/last cards**: Adds narrative framing without words.

## Alternatives Rejected
1. **Vertical timeline with bullet points**: Would conflict with the closeness gauge below and create excessive vertical scroll. Horizontal uses screen width efficiently.
2. **Mini-map replay showing board state at each claim**: Too complex for v1 and would require capturing board snapshots throughout the match.
3. **Animated replay of claims on the game board**: Visually impressive but requires board state serialization and replay logic. Deferred to post-v1.

## Dependencies
- `WinLossExplanation.gd` must pass the claims array from match data.
- Match manager must record `claim_turns` in player results.
- Localization system must include territory name keys and ordinal format keys.
- Player color assignment accessible for card accent coloring.
- Godot `ScrollContainer` with horizontal scroll enabled.

## Integration Risks
- If match history data structure changes, `populate()` must be updated.
- 2v2 combined claims: team claim data must include `claimer_player_id` to color-code correctly.
- Long territory names in Arabic may overflow 120px card width. Mitigation: `autowrap` with `max_lines=1` and `text_overrun_behavior=ellipsis`.

## Implementation Status
- All depth-4 Spec Kit files created: constitution, specification, clarification, plan, tasks, analysis, checklist, this summary.
- Code: Not yet implemented.

## Tests
- Unit: `ClaimCard.configure()` sets correct text for all 5 ordinal formats.
- Unit: `WinPostmortem.populate()` creates correct claim count for 1, 3, and 5 claims.
- Integration: Timeline renders correctly with mock claims on 1080x1920 viewport.
- Visual: Connecting line visually connects center of adjacent cards.
- RTL: Switch to Arabic, verify card order and scroll direction.

## Next Step
1. Implement `ClaimCard.tscn` and `ClaimCard.gd`.
2. Implement `WinPostmortem.tscn` and `WinPostmortem.gd`.
3. Wire into parent `WinLossExplanation.gd`.
4. Test with mock match data.
5. Verify RTL layout.
