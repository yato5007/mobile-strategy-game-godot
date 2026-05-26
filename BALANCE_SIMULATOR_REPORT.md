# Balance Simulator Report

Date: 2026-05-25  
Simulation: 100 FFA matches, random bot actions

## Results

| Metric | Value |
|---|---|
| Win rate Player 1 | 27% |
| Win rate Player 2 | 28% |
| Win rate Player 3 | 27% |
| Win rate Player 4 | 18% |
| Average Claim (all players) | 11.0-11.5 |
| Average leader gap (1st-2nd) | 1.56 |
| Comeback possible rate | 24% |
| Strategy dominance | LOW |
| Passive play penalty | NOT SIMULATED |

## Interpretation

- **Balance**: Acceptable. Random bot actions produce roughly even win rates across players. Player 4 has a slight disadvantage (~18% vs ~27%) which suggests position-based variance.
- **Comeback**: 24% of matches allow a trailing player to overtake. This is reasonable but could be improved by catch-up mechanics (already planned in Spec Kit).
- **Dominance**: No single strategy dominates because all bots use random actions. Strategy-specific testing requires dedicated strategy bot modes (future enhancement).
- **Match length**: 9 phases always completed (no early termination), confirming the fixed-envelope design.

## Limitations

- Random bots only; no aggressive/defensive/disruptive strategy modes.
- No 2v2 simulation yet (requires team coordination logic).
- No passive play testing (all bots always active with random actions).
- No catch-up mechanics active (planned but not implemented at code level).
