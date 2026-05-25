# AI_TOOLING_GUIDE.md

This guide explains how AI tooling is prepared during bootstrap. It does not override `MASTER_PROJECT_PLAN.md`.

## Mandatory Now

| Tooling | Status | Purpose | Artifact |
|---|---|---|---|
| Spec Kit | Installed/available via `.opencode/commands/speckit.*.md` and `.specify/` | Main methodology for constitution/specify/clarify/plan/tasks/analyze/checklist/implement | Spec Kit commands and future `.spec-tree/` nodes |
| AGENTS.md | Active | Shared agent rules and continuity contract | `AGENTS.md` |
| OpenCode agents | Active | Role-specific workflow control | `.opencode/agents/*.md` |
| OpenCode skills | Active | Reusable OpenCode workflows | `.opencode/skills/*/SKILL.md` |
| Agent Skill templates | Active | Portable task templates outside OpenCode agent files | `.ai-skills/` |
| Checkpoint/status scripts | Active | Continuity and git checkpointing | `scripts/checkpoint.sh`, `scripts/status.sh`, `scripts/progress_snapshot.sh` |

## Mandatory When Needed

| Tooling | Use When | Rule |
|---|---|---|
| Context7 | Any Godot/GDScript/export/multiplayer API is uncertain | Query docs before implementation; do not use as a substitute for tests |
| Repomix | Architecture review, large handoff, debugging, or Spec Tree review | Do not run after every small edit |
| MCP servers | A server directly improves workflow | Plan in `MCP_SERVERS_PLAN.md` first; add config only after justified |

## Optional Only After Spec Kit Tasks Exist

| Tooling | Activation Condition | Stop Condition |
|---|---|---|
| Task Master AI | Tasks become too large after `/speckit.tasks` | It duplicates Spec Kit or creates parallel truth |
| BMAD Method | Extra critique improves requirements/design | It slows progress or conflicts with Spec Kit |
| Kiro | User later compares/uses alternate IDE | It competes with OpenCode as primary environment |
| Cursor Rules | User opens the project in Cursor | It diverges from `MASTER_PROJECT_PLAN.md` |
| Claude Project Instructions | User uses Claude/Claude Code externally | It diverges from `MASTER_PROJECT_PLAN.md` |

## Asset/Creative Tools

Blender, Krita, GIMP, Inkscape, Audacity, LMMS, Tiled, and procedural scripts may be used when they serve P1/P2/P3/P4 and produce a real artifact. Usage must update `ASSET_MANIFEST.md`, `ASSET_PIPELINE.md`, or `TOOL_USAGE_LOG.md` as appropriate.

## Required Tool Evaluation

Before enabling a new optional tool, record:

1. Tool name.
2. Need.
3. Priority served.
4. Benefit.
5. Downside/complexity.
6. Artifact produced.
7. Stop condition.

Tools serve the game. The game does not serve the tools.
