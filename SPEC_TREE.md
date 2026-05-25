# SPEC_TREE.md

## Status

Bootstrap prepared. Root Spec Kit completed for planning scope. Game implementation has not started.

## Depth Contract

- Required depth: 4.
- Max depth: 4.
- Every node at every depth must use full Spec Kit.

## Current Tree

```text
root: mobile-strategy-game-godot (depth 0)
├── game-concept-and-win-condition (depth 1, TODO)
├── core-match-systems (depth 1, TODO)
├── multiplayer-and-bots (depth 1, TODO)
├── balance-and-validation (depth 1, TODO)
├── presentation-art-audio-motion (depth 1, TODO)
├── mobile-ux-localization-accessibility (depth 1, TODO)
└── godot-architecture-and-delivery (depth 1, TODO)
```

## Next Required Step

Run full Spec Kit for the first depth-1 branch:

1. `.spec-tree/game-concept-and-win-condition/`
2. Continue branch expansion until required depth 4.
3. Do not implement game code until leaf-node tasks exist.

## Root Artifacts

Root artifacts live in `.spec-tree/root/` and include constitution, spec, clarification, plan, tasks, analysis, checklist, implementation instructions, QA, review, integration notes, and `NODE_SUMMARY.md`.
