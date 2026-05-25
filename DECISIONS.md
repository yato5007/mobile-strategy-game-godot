# DECISIONS.md

Only significant decisions are recorded here.

## DEC-BOOT-001 — Bootstrap adopts Godot + mandatory Spec Kit depth 4

- Date: 2026-05-25
- Node: bootstrap/root
- Decision: Bootstrap control files, AI tooling, OpenCode agents, scripts, and plans are prepared before any game implementation.
- Reason: `MASTER_PROJECT_PLAN.md` requires Godot, portrait mobile targets, and full recursive Spec Kit depth 4 before game work starts.
- Alternatives rejected:
  - Start coding game immediately: rejected because it skips Spec Kit.
  - Create Godot project during bootstrap: rejected because bootstrap must not implement the game.
  - Add optional tooling as active dependencies immediately: rejected because tools must not overshadow P1/P2 game quality.
- Impact: Game implementation remains TODO until root Spec Kit and leaf-node tasks exist.

## DEC-ROOT-001 — Root adopts hybrid seven-branch Spec Kit tree

- Date: 2026-05-25
- Node: `.spec-tree/root/`
- Decision: Use seven required depth-1 branches: `game-concept-and-win-condition`, `core-match-systems`, `multiplayer-and-bots`, `balance-and-validation`, `presentation-art-audio-motion`, `mobile-ux-localization-accessibility`, and `godot-architecture-and-delivery`.
- Reason: This hybrid structure protects P1/P2 game quality while still covering multiplayer, bots, balance, localization, Godot architecture, Android/iOS delivery, assets, and handoff.
- Alternatives rejected:
  - Branch by software layers only: rejected because it risks technical scaffolding before fun/game feel clarity.
  - Branch by game-quality pillars only: rejected because it under-specifies multiplayer, platform, and build contracts.
  - Implement Godot immediately: rejected because leaf-node tasks do not exist yet.
- Impact: Root Spec Kit is complete for planning scope; game implementation remains blocked until future leaf tasks exist. Each depth-1 branch must reach depth 4 with full Spec Kit.
