# SPEC_TREE_STATUS.md

| Item | Depth | Status | Notes |
|---|---:|---|---|
| Bootstrap files and tooling | N/A | DONE | Checkpoint: complete bootstrap ai tooling and controls |
| Root Spec Kit | 0 | DONE | Root artifacts created in `.spec-tree/root/`; no game implementation |
| game-concept-and-win-condition | 1 | DONE | Full depth-1 artifacts complete; child nodes must reach depth 4 |
| game-concept-and-win-condition/win-condition-clarity | 2 | DONE | Full depth-2 artifacts complete; child nodes must reach depth 4 |
| game-concept-and-win-condition/win-condition-clarity/claim-progress-display | 3 | DONE | Full depth-3 artifacts complete; depth-4 children pending |
| game-concept-and-win-condition/win-condition-clarity/claim-progress-display/leader-threat-indicator | 4 | DONE | Full depth-4 leaf artifacts complete |
| game-concept-and-win-condition/win-condition-clarity/claim-progress-display/comeback-path-cue | 4 | DONE | Full depth-4 leaf artifacts complete |
| game-concept-and-win-condition/win-condition-clarity/win-loss-explanation | 3 | DONE | Full depth-3 artifacts complete; depth-4 children complete |
| game-concept-and-win-condition/win-condition-clarity/win-loss-explanation/win-postmortem | 4 | DONE | Full depth-4 leaf artifacts complete |
| game-concept-and-win-condition/win-condition-clarity/win-loss-explanation/loss-decision-crossroads | 4 | DONE | Full depth-4 leaf artifacts complete |
| game-concept-and-win-condition/win-condition-clarity/win-loss-explanation/closeness-gauge | 4 | DONE | Full depth-4 leaf artifacts complete |
| game-concept-and-win-condition/win-condition-clarity/team-and-ffa-win-readability | 3 | DONE | Full depth-3 artifacts complete; depth-4 children complete |
| game-concept-and-win-condition/win-condition-clarity/team-and-ffa-win-readability/team-contribution-display | 4 | DONE | Full depth-4 leaf artifacts complete |
| game-concept-and-win-condition/win-condition-clarity/team-and-ffa-win-readability/ffa-final-standings-board | 4 | DONE | Full depth-4 leaf artifacts complete |
| game-concept-and-win-condition/win-condition-clarity/team-and-ffa-win-readability/mode-specific-hud-adaptation | 4 | DONE | Full depth-4 leaf artifacts complete |
| game-concept-and-win-condition/strategic-tension-and-comeback | 2 | TODO | Must define fair comeback and tension model |
| game-concept-and-win-condition/anti-dominant-strategy-and-active-play | 2 | TODO | Must prevent one perfect plan and passive hiding |
| game-concept-and-win-condition/concept-presentation-and-theme | 2 | TODO | Must prevent text-square concept presentation |
| core-match-systems | 1 | TODO | Must reach depth 4 |
| multiplayer-and-bots | 1 | TODO | Must reach depth 4 |
| balance-and-validation | 1 | TODO | Must reach depth 4 |
| presentation-art-audio-motion | 1 | TODO | Must reach depth 4 |
| mobile-ux-localization-accessibility | 1 | TODO | Must reach depth 4 |
| godot-architecture-and-delivery | 1 | TODO | Must reach depth 4 |
| Depth-2 nodes | 2 | IN_PROGRESS | First depth-1 branch has four meaningful depth-2 nodes pending |
| Depth-3 nodes under win-condition-clarity | 3 | DONE | claim-progress-display, win-loss-explanation, and team-and-ffa-win-readability complete |
| Depth-4 nodes under win-condition-clarity | 4 | DONE | Eight depth-4 leaves complete under the depth-2 node |

## Current Blockers

- Game implementation is intentionally blocked until leaf Spec Kit tasks exist.
