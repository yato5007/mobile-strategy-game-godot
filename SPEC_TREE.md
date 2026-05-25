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
│   ├── win-condition-clarity (depth 2, DONE)
│   │   ├── claim-progress-display (depth 3, DONE)
│   │   │   ├── leader-threat-indicator (depth 4, DONE)
│   │   │   └── comeback-path-cue (depth 4, DONE)
│   │   ├── win-loss-explanation (depth 3, DONE)
│   │   │   ├── win-postmortem (depth 4, DONE)
│   │   │   ├── loss-decision-crossroads (depth 4, DONE)
│   │   │   └── closeness-gauge (depth 4, DONE)
│   │   └── team-and-ffa-win-readability (depth 3, DONE)
│   │       ├── team-contribution-display (depth 4, DONE)
│   │       ├── ffa-final-standings-board (depth 4, DONE)
│   │       └── mode-specific-hud-adaptation (depth 4, DONE)
│   ├── strategic-tension-and-comeback (depth 2, DONE)
│   │   ├── comeback-mechanics-and-events (depth 3, DONE)
│   │   │   ├── catch-up-claim-bonus (depth 4, DONE)
│   │   │   ├── leader-target-pressure (depth 4, DONE)
│   │   │   └── strategic-reset-points (depth 4, DONE)
│   │   ├── phase-progression-and-tension (depth 3, DONE)
│   │   │   ├── early-game-ramp-up (depth 4, DONE)
│   │   │   ├── mid-game-intensification (depth 4, DONE)
│   │   │   └── final-phase-showdown (depth 4, DONE)
│   │   └── anti-snowball-and-balance (depth 3, DONE)
│   │       ├── claim-cost-escalation (depth 4, DONE)
│   │       ├── leader-vulnerability-windows (depth 4, DONE)
│   │       └── comeback-threshold-adaptation (depth 4, DONE)
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

Continue the next TODO depth-2 branch under `game-concept-and-win-condition`:

1. `.spec-tree/game-concept-and-win-condition/strategic-tension-and-comeback/`
2. Expand it to meaningful depth-3 and depth-4 leaves.
3. Continue all sibling nodes until the full branch reaches required depth 4.
4. Do not implement game code until leaf-node tasks exist.

## Root Artifacts

Root artifacts live in `.spec-tree/root/` and include constitution, spec, clarification, plan, tasks, analysis, checklist, implementation instructions, QA, review, integration notes, and `NODE_SUMMARY.md`.

Depth-1 `game-concept-and-win-condition` artifacts live in `.spec-tree/game-concept-and-win-condition/`.
Depth-2 `win-condition-clarity` artifacts live in `.spec-tree/game-concept-and-win-condition/win-condition-clarity/`.
Depth-3 `claim-progress-display` artifacts live in `.spec-tree/game-concept-and-win-condition/win-condition-clarity/claim-progress-display/`.
Depth-3 `win-loss-explanation` artifacts live in `.spec-tree/game-concept-and-win-condition/win-condition-clarity/win-loss-explanation/`.
Depth-3 `team-and-ffa-win-readability` artifacts live in `.spec-tree/game-concept-and-win-condition/win-condition-clarity/team-and-ffa-win-readability/`.

Depth-2 `strategic-tension-and-comeback` artifacts live in `.spec-tree/game-concept-and-win-condition/strategic-tension-and-comeback/` with three depth-3 children and nine depth-4 leaves.
