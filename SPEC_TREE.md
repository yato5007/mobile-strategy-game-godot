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
├── game-concept-and-win-condition (depth 1, DONE planning; expands below)
│   ├── win-condition-clarity (depth 2, TODO)
│   │   ├── claim-progress-display (depth 3, TODO)
│   │   │   ├── leader-threat-indicator (depth 4, TODO)
│   │   │   └── comeback-path-cue (depth 4, DONE)
│   │   ├── win-loss-explanation (depth 3, TODO)
│   │   └── team-and-ffa-win-readability (depth 3, TODO)
│   ├── strategic-tension-and-comeback (depth 2, TODO)
│   ├── anti-dominant-strategy-and-active-play (depth 2, TODO)
│   └── concept-presentation-and-theme (depth 2, TODO)
├── core-match-systems (depth 1, TODO)
├── multiplayer-and-bots (depth 1, TODO)
├── balance-and-validation (depth 1, TODO)
├── presentation-art-audio-motion (depth 1, TODO)
├── mobile-ux-localization-accessibility (depth 1, TODO)
└── godot-architecture-and-delivery (depth 1, TODO)
```

## Next Required Step

Run full Spec Kit for the first depth-4 node under the first depth-3 node:

1. `.spec-tree/game-concept-and-win-condition/win-condition-clarity/win-loss-explanation/`
2. Expand it to meaningful depth-4 leaves.
3. Continue all sibling nodes until the full branch reaches required depth 4.
3. Do not implement game code until leaf-node tasks exist.

## Root Artifacts

Root artifacts live in `.spec-tree/root/` and include constitution, spec, clarification, plan, tasks, analysis, checklist, implementation instructions, QA, review, integration notes, and `NODE_SUMMARY.md`.

Depth-1 `game-concept-and-win-condition` artifacts live in `.spec-tree/game-concept-and-win-condition/`.
Depth-2 `win-condition-clarity` artifacts live in `.spec-tree/game-concept-and-win-condition/win-condition-clarity/`.
Depth-3 `claim-progress-display` artifacts live in `.spec-tree/game-concept-and-win-condition/win-condition-clarity/claim-progress-display/`.
