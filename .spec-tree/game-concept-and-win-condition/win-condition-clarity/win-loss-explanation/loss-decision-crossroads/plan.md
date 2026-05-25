# Plan: Loss Decision Crossroads Implementation

## Phase 1 — Analysis Engine
1. Create `res://ui/end_match/loss_crossroads/decision_analyzer.gd` as a static utility class.
2. Implement `analyze(match_history: Dictionary) -> Array` function with:
   - Step 1: Build "available territories per turn" from match history.
   - Step 2: For each turn the player did NOT claim, check available territories.
   - Step 3: Filter to high-impact: territories later claimed by opponents.
   - Step 4: Score and rank by impact score.
   - Step 5: Return top 1-3 turning points (or empty).
3. Add unit tests for analyze with known match scenarios.

## Phase 2 — Decision Card Component
1. Create `res://ui/end_match/loss_crossroads/DecisionCard.tscn` — MarginContainer with VBoxContainer.
2. Add nodes: hourglass TextureRect, turn_label, description Label, hypothetical Label.
3. Create `res://ui/end_match/loss_crossroads/DecisionCard.gd` with `configure(turn_point: Dictionary)`.
4. Support RTL text alignment.

## Phase 3 — Crossroads Container
1. Create `res://ui/end_match/loss_crossroads/LossCrossroads.tscn` — VBoxContainer with section title label and decision cards.
2. Create `res://ui/end_match/loss_crossroads/LossCrossroads.gd` with `populate(match_history: Dictionary)`.
3. `populate` calls `decision_analyzer.analyze()`, then instantiates DecisionCard for each result.
4. If result is empty, instantiate consolation card instead.
5. Animate cards appearing one by one with 200ms stagger.

## Phase 4 — Integration
1. Wire LossCrossroads into WinLossExplanation loss mode.
2. Pass match_history data from match manager.
3. Test with mock data for:
   - Clear turning points (1, 2, 3)
   - No turning points (consolation)
   - 2v2 team analysis

## Estimated Effort
- Phase 1: 2 hours (algorithm design and testing)
- Phase 2: 1 hour
- Phase 3: 1 hour
- Phase 4: 0.5 hours
