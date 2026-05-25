# Plan — Core Match Systems

## Before Large Task Statement

- Priority level: P1 Core Fun and Gameplay.
- Why it matters: Core match systems determine whether the selected concept becomes a playable strategy game instead of a vague theme or scoreboard.
- If ignored: Later multiplayer, bots, balance, UI, and Godot work will invent incompatible rules and may create a turn-based, passive, or spreadsheet-like game.
- Appropriate effort: High planning effort now; no code implementation in this node.
- Artifact proving completion: Full Spec Kit artifacts in `.spec-tree/core-match-systems/` plus root tracking updates.

## Execution Plan

1. Anchor the node to DEC-GCWC-001/002/003.
2. Choose a fixed-length simultaneous phase structure.
3. Define legal action categories and public information rules at planning level.
4. Define how Claim resolution should be decomposed without exact formulas yet.
5. Identify required depth-2 children and their future depth-4 obligations.
6. Update root tracking files and contracts.

## AUTONOMOUS_DECISION — CMS-001 Fixed Simultaneous Majlis Phase Loop

- Decision made: Use a fixed sequence of Majlis phases with simultaneous planning, commit lock, deterministic reveal/resolve, Claim update, pressure shift, and final reveal.
- Options compared:
  - Traditional turn-by-turn rounds: rejected because it creates waiting and violates no-turn-waiting intent.
  - Continuous real-time action: rejected because it risks speed/reaction gameplay and mobile chaos.
  - Fixed simultaneous phase loop: accepted because it supports strategy, clarity, multiplayer synchronization, and under-30-minute pacing.
- Why it serves the final game: It keeps all players engaged, makes every phase a meaningful strategic decision, and fits the ceremonial Majlis reveal fantasy.
- Potential downside: Simultaneous resolution can create confusing conflicts.
- Why downside is acceptable: A child node is dedicated to deterministic reveal ordering, tie-breakers, and explanation events.
- How it will be verified later: Simulator and QA must measure conflict readability, match duration, idle time, and perceived fairness.
- Artifact proof: This node's `spec.md`, `analysis.md`, and `tasks.md` define the phase loop and child branch.

## AUTONOMOUS_DECISION — CMS-002 Mostly Public Information with Hidden Commit Only

- Decision made: Use mostly public match information; hide only player commitments until reveal by default.
- Options compared:
  - Fully hidden strategy layer: rejected because it weakens first-match clarity and win/loss explanation.
  - Fully public selected actions before lock: rejected because it causes last-second reaction games and kingmaking.
  - Public state with hidden committed plans: accepted because it preserves readable strategy and suspense without speed advantage.
- Why it serves the final game: Players understand who is ahead, what to contest, and why outcomes changed.
- Potential downside: Less hidden information may reduce bluffing depth.
- Why downside is acceptable: Depth comes from objective timing, counters, resource limits, and simultaneous commitment rather than opaque secrets.
- How it will be verified later: QA must confirm new players can explain current objective, leader, comeback path, and why a reveal resolved.
- Artifact proof: Public information model in `spec.md`; child `claim-objective-state-model` proposed.

## AUTONOMOUS_DECISION — CMS-003 Small Action Economy over Multi-Resource Management

- Decision made: Use a compact Council Focus action economy with optional Influence constraints instead of multiple heavy resources.
- Options compared:
  - Many resources/economy tracks: rejected because it risks spreadsheet feel and mobile overload.
  - No resource constraints: rejected because actions become obvious spam and strategy weakens.
  - Small action budget plus positional/pressure constraints: accepted because it creates hard choices without admin burden.
- Why it serves the final game: It creates tactical tradeoffs that can be shown through icons/tokens in portrait.
- Potential downside: Too few constraints may reduce long-term depth.
- Why downside is acceptable: Objective rotation, counterplay pressure, phase progression, and team actions add depth without adding bookkeeping.
- How it will be verified later: Balance tests must check dominant action spam, passive behavior, and decision diversity.
- Artifact proof: `action-economy-and-legal-actions` depth-2 child is required.

## Child Expansion Plan

The next recursive-spec-node executions under this branch should create full Spec Kit for:

1. `.spec-tree/core-match-systems/match-flow-and-phase-structure/`
2. `.spec-tree/core-match-systems/simultaneous-planning-and-resolution/`
3. `.spec-tree/core-match-systems/action-economy-and-legal-actions/`
4. `.spec-tree/core-match-systems/claim-objective-state-model/`

Each child must independently define meaningful depth-3 children and depth-4 leaves.

## No-Implementation Guard

This plan authorizes documentation, future tasks, and status updates only. It does not authorize Godot project creation, GDScript, scenes, UI, assets, networking, or simulator code.
