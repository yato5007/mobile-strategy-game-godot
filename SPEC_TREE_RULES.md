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

## Critic and Reviewer Duties

`spec-critic` and `reviewer` must reject shallow output, repetitive branches, premature implementation, missing option comparison, and any tree that fails required depth 4.
