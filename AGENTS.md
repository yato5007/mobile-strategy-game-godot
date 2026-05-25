# AGENTS.md

This file is a project-wide instruction contract for every AI agent. It is not a replacement for `MASTER_PROJECT_PLAN.md`.

## Required Reading Order

Before doing any work, read:

1. `MASTER_PROJECT_PLAN.md`
2. `AGENTS.md`
3. `AI_TOOLING_GUIDE.md`
4. `CONTINUITY_PROTOCOL.md`
5. `GAME_CONSTRAINTS.md`
6. `SPEC_TREE_RULES.md`
7. `SPEC_TREE_STATUS.md`
8. `SPEC_TREE.md`
9. `REQUIREMENTS_TRACE.md`
10. `DECISIONS.md`
11. `SYSTEM_CONTRACTS.md`
12. `DESIGN_SYSTEM.md`
13. `MCP_SERVERS_PLAN.md`
14. `PROGRESS_DASHBOARD.md`
15. `PROJECT_PROGRESS.json`

## Core Rules

- `MASTER_PROJECT_PLAN.md` is the highest source of truth.
- Godot Engine 4.x is the official engine.
- ChatGPT 5.5 via OpenCode (`openai/gpt-5.5`) is the primary model.
- The game is portrait-only.
- Android and iPhone/iOS are required targets.
- Required recursive Spec Kit depth is 4.
- Maximum recursive Spec Kit depth is 4.
- Every node at every depth must use full Spec Kit.
- Do not start coding the game during bootstrap.
- Do not create Godot game implementation before Spec Kit tasks exist.
- The game must feel like a real final game, not a prototype or text-square program.
- Use tools proactively when they improve the game, but only with artifact proof.
- Any major decision must compare options by benefit, downside, fit, and recommendation.
- Do not accept claims without artifacts.
- Full Autonomy Rule: do not ask the user for design, technical, gameplay, art, balance, branch-splitting, continue/fix, weak-node, or design-conflict decisions. `speckit-director` and `report-gatekeeper` decide autonomously using project truth files, priority rules, user taste proxy, options comparison, final game quality, artifact proof, and fun validation.
- Do not start from scratch after interruption unless the user literally says: `ابدأ من الصفر`.

## Autonomous Decision Workflow

Use `AUTONOMOUS_DECISION` instead of `USER_DECISION_REQUIRED` in most cases.

An `AUTONOMOUS_DECISION` must include:

1. Decision made.
2. Options compared.
3. Why it serves the final game goal.
4. Potential downside.
5. Why the downside is acceptable.
6. How it will be verified later.
7. Artifact proving the decision.

For high-impact decisions, also require options comparison, `spec-critic` review, `integration-architect` review when systems are affected, checkpoint before execution, and checkpoint after execution.

Only stop for the user when there is a true external blocker that cannot be solved inside the project, such as credentials, external accounts, legal/financial approvals, or an explicit user stop/change request.

## Before Large Tasks

State:

1. Priority level: P0/P1/P2/P3/P4.
2. Why the task matters.
3. What happens if it is ignored.
4. Appropriate effort level.
5. Artifact proving completion.

## Continuity

Run `./scripts/status.sh` when resuming. Continue from the first TODO, IN_PROGRESS, or BLOCKED item. Use `./scripts/checkpoint.sh "short description"` after important progress.
