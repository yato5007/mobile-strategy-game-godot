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
│   ├── anti-dominant-strategy-and-active-play (depth 2, DONE)
│   │   ├── strategy-diversity-enforcement (depth 3, DONE)
│   │   │   ├── objective-variety-rotation (depth 4, DONE)
│   │   │   ├── adaptive-opponent-response (depth 4, DONE)
│   │   │   └── strategy-punishment-detection (depth 4, DONE)
│   │   ├── active-play-incentives (depth 3, DONE)
│   │   │   ├── claim-momentum-bonus (depth 4, DONE)
│   │   │   ├── idle-penalty-mechanism (depth 4, DONE)
│   │   │   └── engagement-surge-events (depth 4, DONE)
│   │   └── strategy-counterplay-visibility (depth 3, DONE)
│   │       ├── opponent-claim-pattern-display (depth 4, DONE)
│   │       ├── counter-strategy-indicator (depth 4, DONE)
│   │       └── strategy-shift-incentives (depth 4, DONE)
│   └── concept-presentation-and-theme (depth 2, DONE)
│       ├── visual-identity-definition (depth 3, DONE)
│       │   ├── arabic-cultural-mandalas (depth 4, DONE)
│       │   ├── color-palette-assignment (depth 4, DONE)
│       │   └── typography-and-icon-set (depth 4, DONE)
│       ├── game-space-presentation (depth 3, DONE)
│       │   ├── majlis-board-layout (depth 4, DONE)
│       │   ├── claim-token-visualization (depth 4, DONE)
│       │   └── spatial-atmosphere-design (depth 4, DONE)
│       └── theme-narrative-framing (depth 3, DONE)
│           ├── majlis-council-concept (depth 4, DONE)
│           ├── match-narrative-arc (depth 4, DONE)
│           └── arabic-patronage-naming (depth 4, DONE)
├── core-match-systems (depth 1, DONE planning; expands below)
│   ├── match-flow-and-phase-structure (depth 2, DONE; expands below)
│   │   ├── phase-count-and-timing-envelope (depth 3, DONE; expands below)
│   │   │   ├── opening-council-pacing (depth 4, DONE)
│   │   │   ├── rising-debate-pacing (depth 4, DONE)
│   │   │   ├── final-petition-pacing (depth 4, DONE)
│   │   │   └── duration-cap-and-interruption-validation (depth 4, DONE)
│   │   ├── phase-state-machine-and-handoffs (depth 3, DONE; expands below)
│   │   │   ├── commit-lock-and-action-binding (depth 4, DONE)
│   │   │   ├── reveal-and-resolver-handoff (depth 4, DONE)
│   │   │   ├── claim-update-and-event-propagation (depth 4, DONE)
│   │   │   └── pressure-shift-and-cue-dispatch (depth 4, DONE)
│   │   └── final-reveal-and-mode-completion (depth 3, DONE; expands below)
│   │       ├── ffa-final-standings-presentation (depth 4, TODO)
│   │       ├── 2v2-team-standings-presentation (depth 4, TODO)
│   │       └── tie-break-resolution-logic (depth 4, TODO)
│   ├── simultaneous-planning-and-resolution (depth 2, DONE; expands below)
│   │   ├── conflict-resolution-engine (depth 3, TODO)
│   │   ├── action-reveal-sequencing (depth 3, TODO)
│   │   └── multi-mode-resolution (depth 3, TODO)
│   ├── action-economy-and-legal-actions (depth 2, TODO)
│   └── claim-objective-state-model (depth 2, TODO)
├── multiplayer-and-bots (depth 1, TODO)
├── balance-and-validation (depth 1, TODO)
├── presentation-art-audio-motion (depth 1, TODO)
├── mobile-ux-localization-accessibility (depth 1, TODO)
└── godot-architecture-and-delivery (depth 1, TODO)
```

## Next Required Step

All current depth-2 branches under `game-concept-and-win-condition` are complete through depth 4.

1. `phase-count-and-timing-envelope` is complete with all four depth-4 leaves.
2. Continue to the next depth-3 child under `match-flow-and-phase-structure`: `phase-state-machine-and-handoffs`.
3. Complete remaining depth-3 and depth-2 branches under `core-match-systems` until all branches reach required depth 4.
4. Do not implement game code until leaf-node tasks explicitly authorize implementation.

## Root Artifacts

Root artifacts live in `.spec-tree/root/` and include constitution, spec, clarification, plan, tasks, analysis, checklist, implementation instructions, QA, review, integration notes, and `NODE_SUMMARY.md`.

Depth-1 `game-concept-and-win-condition` artifacts live in `.spec-tree/game-concept-and-win-condition/`.
Depth-2 `win-condition-clarity` artifacts live in `.spec-tree/game-concept-and-win-condition/win-condition-clarity/`.
Depth-3 `claim-progress-display` artifacts live in `.spec-tree/game-concept-and-win-condition/win-condition-clarity/claim-progress-display/`.
Depth-3 `win-loss-explanation` artifacts live in `.spec-tree/game-concept-and-win-condition/win-condition-clarity/win-loss-explanation/`.
Depth-3 `team-and-ffa-win-readability` artifacts live in `.spec-tree/game-concept-and-win-condition/win-condition-clarity/team-and-ffa-win-readability/`.

Depth-2 `strategic-tension-and-comeback` artifacts live in `.spec-tree/game-concept-and-win-condition/strategic-tension-and-comeback/` with three depth-3 children and nine depth-4 leaves.
Depth-2 `concept-presentation-and-theme` artifacts live in `.spec-tree/game-concept-and-win-condition/concept-presentation-and-theme/` with three depth-3 children and nine depth-4 leaves.

Depth-2 `anti-dominant-strategy-and-active-play` artifacts live in `.spec-tree/game-concept-and-win-condition/anti-dominant-strategy-and-active-play/` with three depth-3 children and nine depth-4 leaves.

Depth-1 `core-match-systems` artifacts live in `.spec-tree/core-match-systems/`. Its depth-2 children are planned: `match-flow-and-phase-structure` is complete at depth 2 and must continue through depth 4; `simultaneous-planning-and-resolution`, `action-economy-and-legal-actions`, and `claim-objective-state-model` remain pending full Spec Kit.

Depth-2 `match-flow-and-phase-structure` artifacts live in `.spec-tree/core-match-systems/match-flow-and-phase-structure/`; it plans three depth-3 children: `phase-count-and-timing-envelope`, `phase-state-machine-and-handoffs`, and `final-reveal-and-mode-completion`.

Depth-3 `phase-count-and-timing-envelope` artifacts live in `.spec-tree/core-match-systems/match-flow-and-phase-structure/phase-count-and-timing-envelope/`; it plans four depth-4 leaves: `opening-council-pacing`, `rising-debate-pacing`, and `final-petition-pacing` are complete, while `duration-cap-and-interruption-validation` remains pending.
