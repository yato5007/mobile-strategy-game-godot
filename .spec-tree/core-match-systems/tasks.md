# Tasks — Core Match Systems

## Node Artifact Tasks

- [x] Create depth-1 node directory `.spec-tree/core-match-systems/`.
- [x] Create constitution, specification, clarification, plan, tasks, analysis, checklist, implementation-result, QA, review, integration notes, and node summary.
- [x] Document autonomous decisions for significant match-system choices.
- [x] Define required depth-2 children.
- [x] Update root tracking files.

## Future Depth-2 Tasks Required

### 1. match-flow-and-phase-structure

- Define exact phase count candidates and recommended default.
- Specify phase entry/exit criteria, final reveal trigger, and match timer caps.
- Split into meaningful depth-3/4 children for opening, mid, final, overtime/no-overtime, and pacing validation as appropriate.

### 2. simultaneous-planning-and-resolution

- Specify commit lock rules, reveal ordering, conflict priority, tie-breakers, and explanation events.
- Ensure no reaction-speed advantage.
- Split into depth-3/4 children covering commit UX contract, conflict resolver, tie-break policy, and replay/explanation output.

### 3. action-economy-and-legal-actions

- Finalize action taxonomy, Council Focus budget, Influence constraints, support/counter/prep boundaries, and anti-spam safeguards.
- Split into depth-3/4 children covering each action class, team support, resource constraints, and passive prevention.

### 4. claim-objective-state-model

- Define Claim ledger, objective state machine, public/private data boundaries, and event outputs for UI/bots/simulator.
- Split into depth-3/4 children covering objective lifecycle, Claim deltas, public event feed, and state ownership.

## Future Implementation Tasks Not Authorized Yet

These are placeholders for later leaf nodes only, not current permissions:

- Create Godot match state data structures.
- Implement phase state machine.
- Implement simultaneous command resolver.
- Implement Claim ledger and objective state transitions.
- Create tests/simulator scenarios for match duration and action diversity.

## Acceptance Task Gate

No implementation task above may start until its corresponding depth-4 leaf has full Spec Kit artifacts and explicit implementation instructions.
