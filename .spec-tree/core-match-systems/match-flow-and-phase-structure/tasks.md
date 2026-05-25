# Tasks — Match Flow and Phase Structure

## Node Artifact Tasks

- [x] Create node directory `.spec-tree/core-match-systems/match-flow-and-phase-structure/`.
- [x] Create all required Spec Kit artifacts and tracking updates.

## Required Future Depth-3 Nodes

### 1. phase-count-and-timing-envelope

- Define exact timing validation tables for 9 phases.
- Compare 6/9/12 phase variants as future variant constraints.
- Specify hard caps for planning, reveal, pressure shift, and final reveal.
- Plan depth-4 leaves: `opening-act-pacing`, `mid-act-pacing`, `final-act-pacing`, `match-duration-validation`.

### 2. phase-state-machine-and-handoffs

- Define phase states and legal transitions.
- Specify entry/exit criteria for Phase Brief, Council Planning, Commit Lock, Reveal Handoff, Claim Update, Pressure Shift, and Final Reveal.
- Define handoff payload requirements without coding schemas yet.
- Plan depth-4 leaves: `phase-entry-exit-contract`, `commit-lock-transition`, `resolve-claim-pressure-handoffs`.

### 3. final-reveal-and-mode-completion

- Define no-early-end completion rule.
- Define final reveal responsibilities for winner, near-winner, teammate contribution, and FFA standings.
- Define tie/tiebreak planning questions for later resolver/state-model nodes.
- Plan depth-4 leaves: `no-early-end-completion-rule`, `ffa-final-reveal-flow`, `team-final-reveal-flow`, `localizable-end-explanation`.

## Future Implementation Tasks Not Authorized Yet

- Implement a Godot phase state machine.
- Implement phase timers.
- Implement localized phase labels.
- Implement final reveal screen.
- Implement automated duration tests.

## Acceptance Task Gate

The implementation tasks above remain blocked until corresponding depth-4 leaf nodes complete full Spec Kit and explicitly authorize implementation instructions.
