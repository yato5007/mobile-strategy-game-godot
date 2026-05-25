# CONTINUITY_PROTOCOL.md

Do not restart from scratch after interruption unless the user literally says: `ابدأ من الصفر`.

## Resume Checklist

1. Read `MASTER_PROJECT_PLAN.md`.
2. Read `AGENTS.md`.
3. Read `AI_TOOLING_GUIDE.md`.
4. Read this file.
5. Read `GAME_CONSTRAINTS.md`.
6. Read `SPEC_TREE_RULES.md`.
7. Read `SPEC_TREE_STATUS.md`.
8. Read `SPEC_TREE.md`.
9. Read `REQUIREMENTS_TRACE.md`.
10. Read `DECISIONS.md`.
11. Read `SYSTEM_CONTRACTS.md`.
12. Read `DESIGN_SYSTEM.md`.
13. Read `MCP_SERVERS_PLAN.md`.
14. Read `PROGRESS_DASHBOARD.md`.
15. Read `PROJECT_PROGRESS.json`.
16. Check git log and git status.
17. Inspect `.spec-tree/`.
18. Run `./scripts/status.sh`.

## Resume Rule

Continue from the first item marked TODO, IN_PROGRESS, or BLOCKED. Do not discard previous work without a documented decision and checkpoint.

## Full Autonomy Resume Rule

After resuming, do not ask the user which design, technical, gameplay, art, balance, branch, continue/fix, weak-node, or design-conflict choice to make. Use `AUTONOMOUS_DECISION`, document it, and continue from the first actionable TODO/IN_PROGRESS/BLOCKED item.

Only stop for user input when there is a true external blocker that cannot be solved inside the project, such as credentials, external accounts, legal/financial approval, or an explicit user stop/change request.

## Checkpoints

Use `./scripts/checkpoint.sh "short description"` after important progress, including bootstrap completion, Spec Kit milestones, node completion, QA/review/integration, and progress updates.
