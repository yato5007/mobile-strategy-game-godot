# Specification: Win/Loss Explanation

## Overview
When a player reaches the claim threshold (e.g., 3 banners for a 4-player FFA), the game immediately transitions to the end-of-match screen. This screen explains the outcome across three dimensions: the winner's journey, the loser's turning points, and the overall closeness of the match.

## Win Moment Behavior
1. **Trigger**: Claim system detects threshold reached.
2. **Delay**: 0.5-second pause for the final claim animation, then screen cuts to explanation.
3. **Screen Layout** (portrait, top to bottom):
   - Top: Victory banner with player name/avatar and "VICTORY" text in localized string.
   - Middle-upper: Claim postmortem timeline (horizontal scroll list of claim cards).
   - Middle-lower: Closeness gauge showing all players' claim counts.
   - Bottom: "Return to Lobby" button + "View Match Details" secondary button.

## Loss Moment Behavior
1. **Trigger**: Any other player reaches threshold.
2. **Screen Layout**:
   - Top: Defeat banner with "DEFEAT" text.
   - Middle-upper: "Where it slipped" section: 1-3 key turning points shown as cards.
   - Middle-lower: Closeness gauge (same component).
   - Bottom: "Return to Lobby" + "Play Again" button.

## 2v2 Behavior
- Team win: Both team members see "VICTORY" banner. Postmortem shows team's combined claims.
- Individual contribution: Each player sees their personal claim count vs team total in the closeness gauge.
- Loss screen shows team-level turning points.

## FFA Behavior
- Winner sees full postmortem of their own claims.
- Losers see loss-decision-crossroads analyzing their own gameplay, not the winner's.
- Closeness gauge shows all 4 players' final claim counts.

## Technical Requirements
- All screens are `Control` nodes with `ScrollContainer` for overflow.
- Localization keys follow pattern: `end_win_title`, `end_loss_title`, `end_btn_lobby`, `end_btn_replay`.
- Data is passed as a dictionary from the match manager: `{ winner_id, player_results: [{ player_id, claims_made, claim_turns, key_decisions, claim_count }], threshold }`.
- The explanation system is a single GDScript `WinLossExplanation.gd` attached to a `CanvasLayer` scene.
