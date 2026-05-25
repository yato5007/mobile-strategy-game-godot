# Plan: Win/Loss Explanation Implementation

## Phase 1 — Core Explanation Modal (depth-3)
1. Create `res://ui/end_match/WinLossExplanation.tscn` as a `CanvasLayer` scene.
2. Create `res://ui/end_match/WinLossExplanation.gd` with three methods:
   - `show_win_postmortem(data: Dictionary)`
   - `show_loss_reasons(data: Dictionary)`
   - `show_closeness(data: Dictionary)`
3. Wire the match manager to call `show_win_postmortem()` when win condition triggers.
4. Implement the "Return to Lobby" and "Play Again" button signals.
5. Add scrollable `VBoxContainer` layout for the three sections.

## Phase 2 — Win Postmortem Sub-node (depth-4, `win-postmortem`)
1. Create `res://ui/end_match/win_postmortem/WinPostmortem.tscn` — horizontal scroll timeline.
2. Create claim card scene showing: claim order number, claim turn, territory name.
3. Populate from `player_results.claims_made` and `claim_turns` arrays.
4. Animate cards sliding in from the right (or left in RTL).

## Phase 3 — Loss Decision Crossroads Sub-node (depth-4, `loss-decision-crossroads`)
1. Create `res://ui/end_match/loss_crossroads/LossCrossroads.tscn`.
2. Implement decision analysis algorithm that finds suboptimal turns.
3. Display 1-3 cards with turn number, missed opportunity description, and "what if" hypothetical.
4. Animate cards appearing one by one with a brief delay.

## Phase 4 — Closeness Gauge Sub-node (depth-4, `closeness-gauge`)
1. Create `res://ui/end_match/closeness/ClosenessGauge.tscn`.
2. Implement horizontal bar per player showing claim_count / threshold.
3. Use player colors for each bar.
4. Animate bars filling from 0 to final value on screen appear.
5. Show player name, avatar, and numeric count on each bar.

## Integration
- Expose a single entry point: `WinLossExplanation.show(data: Dictionary)` that branches on `data.winner_id == local_player_id`.
- Connect to match manager's `match_ended` signal.
- Ensure all strings use `tr()` with keys from `localization/*.csv`.

## Estimated Effort
- Phase 1: 2-3 hours
- Phase 2: 1-2 hours
- Phase 3: 2-3 hours
- Phase 4: 2-3 hours
- Integration & testing: 2 hours
