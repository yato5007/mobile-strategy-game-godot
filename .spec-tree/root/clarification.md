# Root Clarification

## Clarified Requirements

| Topic | Clarification |
|---|---|
| Engine | Godot 4.x is final unless a severe documented blocker appears. |
| Orientation | Portrait-only; landscape exceptions are forbidden unless documented as true BLOCKED and reviewed. |
| Platforms | Android and iPhone/iOS are required in design and architecture; Android installable build is a final deliverable. |
| Spec depth | Required depth and max depth are both 4. Depth 4 is mandatory and meaningful. |
| Game type | Strategic multiplayer; exact structure is open. Area control is not mandatory. |
| Multiplayer | Mock multiplayer first; online adapter later. Supports 4p, 2v2, FFA. |
| Implementation | Root produces instructions and branch tasks only; no Godot code. |
| Presentation | Art/audio/motion/game feel are core requirements, not polish-only extras. |
| Assets | Placeholder-first is allowed, but all assets must be tracked and importable into Godot. |
| Optional tools | Context7/Repomix/MCP/Task Master/BMAD/Kiro may not replace Spec Kit. |

## Open Questions Deferred to Child Nodes

1. What exact strategic structure best fits the constraints?
2. What is the final win condition?
3. What board/map/arena/token model best communicates strategy in portrait?
4. What bot decision model is appropriate after game rules are chosen?
5. What online multiplayer solution is best after mock multiplayer proves contracts?
6. Which art tools are necessary once visual direction is chosen?

## Assumptions

- Codespaces/OpenCode remains the main workflow.
- Godot CLI/export setup may happen after planning, not during root.
- Child nodes can use Context7 for current Godot documentation before implementation details.

## Clarification Decisions

- Root will create a branch architecture, not a final game concept.
- Depth-1 branches are broad enough to cover systems but specific enough to generate executable child nodes.
- The first downstream priority is P1/P2 discovery, not P4 tooling expansion.
