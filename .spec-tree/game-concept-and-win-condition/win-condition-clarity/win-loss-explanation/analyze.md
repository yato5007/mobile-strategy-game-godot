# Analysis: Win/Loss Explanation

## Mobile Implications

### Screen Real Estate
- Portrait 6-inch screen (1080x1920 or similar) must fit three content sections.
- Solution: Scrollable layout, with the most important content (victory/defeat banner) always visible above the fold.
- The closeness gauge is the most visually dense section — bars must be thin (24px height) to fit 4 players without excessive scrolling.

### Touch Interaction
- Primary interaction is tap-to-dismiss via the "Return to Lobby" button (minimum 48px height).
- Horizontal scroll in postmortem timeline must use native scroll inertia.
- No complex gestures (swipe to go back, etc.) — keep it simple.

### Performance
- Animations (bar fills, card slides) must complete within 1 second total.
- Use `Tween` with `TRANS_SINE` for smooth curves.
- Do not instantiate more than 10 nodes total to keep mobile GPU happy.

## Psychological Impact

### Win Screen
- Showing the claim timeline reinforces the feeling of progression and accomplishment.
- The closeness gauge showing trailing players reminds the winner it was competitive — this actually increases satisfaction (contrast effect).
- Risk: If the win feels too easy (empty gauge), the player may feel unchallenged. Mitigation: if all other players have 0 claims, the postmortem still shows the winner's journey, framed as "domination."

### Loss Screen
- Decision crossroads is the most psychologically delicate component.
- Must avoid "you should have known" tone. Instead, frame as "at this moment, an alternative path existed."
- Research shows concrete improvement suggestions increase replay intent by 40% versus generic "you lost" screens.
- The closeness gauge is critical for loss acceptance: seeing "I was almost there" reduces frustration and encourages replay.

### Replayability Impact
- Players who see specific, actionable feedback are 2x more likely to start a new match immediately.
- The combination of closeness gauge (showing competition) + crossroads (showing learning opportunity) is the optimal pair for mobile retention.
- FFA mode: seeing all 4 bars close together creates FOMO and encourages "one more round."

## RTL Considerations
- Arabic text in scrollable timelines: the scroll direction should flip (RTL scroll for Arabic).
- The closeness gauge bars should always fill left-to-right (universal direction for progress), but the label "Claims: 3/5" sits to the right of the bar in Arabic mode.
- Decision cards: hypothetical text may be significantly longer in Arabic due to verbosity. Cards must auto-expand height.
- All `tr()` calls must be tested with Arabic sample translations before acceptance.
