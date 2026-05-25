# Root Constitution — Mobile Strategy Game Godot

## Node

- Path: `.spec-tree/root/`
- Depth: 0
- Parent: none
- Status: Root Spec Kit active

## Non-Negotiable Principles

1. `MASTER_PROJECT_PLAN.md` is the highest source of truth.
2. Godot Engine 4.x is the official engine.
3. GDScript is the default implementation language unless a future Spec Kit node proves C# is better.
4. The game is portrait-only.
5. Android and iPhone/iOS are required targets.
6. Required recursive depth is exactly 4 and maximum depth is exactly 4.
7. Every node at depths 1, 2, 3, and 4 must complete full Spec Kit.
8. No game implementation begins from this root node. Root implementation means instructions, scaffolding decisions, and child-node preparation only.
9. The game must be strategic, multiplayer, and final-game quality in direction, not a text-square prototype.
10. Art, audio, motion, feedback, and game feel are core quality requirements.
11. Arabic-first visual/cultural style and Arabic/English RTL/LTR support are required from the beginning.
12. No major gameplay/platform/presentation decision may be accepted without option comparison.
13. No claim is accepted without artifacts.

## Priority Constitution

- P0: engine, platforms, portrait, depth 4, full Spec Kit, final-game quality, clear win condition.
- P1: strategic fun, win condition, core loop, comeback, anti-passive play, anti-dominant strategy.
- P2: presentation, Arabic visual identity, playable-feeling board/arena, animation, VFX, SFX, feedback.
- P3: bots, multiplayer modes, balance simulator, localization.
- P4: build/export, handoff, Repomix, MCP, optional tools, CI.

If P1 or P2 conflicts with P4, P1/P2 wins.

## Root Authority and Boundary

The root node defines project-wide direction, required branches, contracts, and validation gates. It does not select final detailed game rules beyond constraints that must be refined by child nodes. It does not create Godot game code.

## Required Root Outcomes

- A meaningful depth-1 branch plan that can reach depth 4.
- A full node artifact set for the root.
- Trace updates linking project requirements to root and future branches.
- Implementation instructions only.
- QA, review, and integration notes for the root plan.
