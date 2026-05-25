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
