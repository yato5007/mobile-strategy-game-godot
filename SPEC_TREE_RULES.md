# SPEC_TREE_RULES.md

## Required Depth

```text
REQUIRED_DEPTH = 4
MAX_DEPTH = 4
```

- Root is depth 0.
- Every depth-1 branch must continue to depth 4.
- Every node at depths 1, 2, 3, and 4 must complete full Spec Kit.
- No early stopping before depth 4.
- No depth beyond 4.
- No placeholder-only nodes.
- No depth-4 node may be accepted as complete if it is formal, generic, repetitive without game value, or template-like.

## Full Spec Kit Per Node

Each `.spec-tree/` node must include:

- `constitution.md`
- `spec.md`
- `clarification.md`
- `plan.md`
- `tasks.md`
- `analysis.md`
- `checklist.md`
- `implementation-result.md`
- `qa-result.md`
- `review-result.md`
- `NODE_SUMMARY.md`

## Node Summary Required Sections

- Purpose
- Parent link
- Decisions made
- Alternatives rejected
- Dependencies
- Integration risks
- Implementation status
- Tests
- Next step

## Branch Necessity

A branch is allowed only if it represents an independent system, reduces parent complexity, solves a real design/technical/integration problem, or prevents future conflict. Branches must not exist only to increase count.

## Strict Depth-4 Quality Rule

Depth 4 is not a paperwork target. Every depth-4 node must contain important, concrete, game-serving content. At least one of the following must be present in every depth-4 node:

- data contract or event schema,
- UI/game-object output,
- simulator or balance metric,
- Godot-facing acceptance criterion,
- asset/audio/motion requirement,
- concrete gameplay decision,
- concrete validation rule,
- localization/RTL/LTR rule with testable acceptance.

If any depth-4 node is discovered to be weak, shape-only, too general, or template-like, it must be sharpened immediately at discovery. Do not defer the fix to implementation. Do not mark it complete or final until it is useful to the actual game.

If the director cannot find a meaningful depth-4 split or repair, call `spec-critic` to propose a stronger branch or concrete artifacts. Creating placeholders to satisfy depth count is forbidden.

## Critic and Reviewer Duties

`spec-critic` and `reviewer` must reject shallow output, repetitive branches, premature implementation, missing option comparison, any tree that fails required depth 4, and any depth-4 leaf that is only template-like or not concretely useful to the game.

## Full Autonomy Rule for Spec Tree Decisions

- Do not pause with `USER_DECISION_REQUIRED` for branch design, gameplay direction, art direction, balance direction, weak-node repair, continue/fix choices, or design conflicts.
- Use `AUTONOMOUS_DECISION` by default.
- `speckit-director` and `report-gatekeeper` decide whether to continue, repair, split, reject, or revise nodes.
- Document autonomous decisions in `DECISIONS.md` and gatekeeping decisions in `GATEKEEPER_REVIEW.md`.
- High-impact decisions require options comparison, `spec-critic` review, `integration-architect` review if integration is affected, checkpoint before execution, and checkpoint after execution.
- Stop for the user only for true external blockers that cannot be solved inside the project.
