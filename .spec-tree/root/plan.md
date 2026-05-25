# Root Plan

## Strategy

Use the root node to establish a controlled recursive Spec Kit tree. The tree must produce design clarity before implementation and must preserve game-feel quality as a first-class requirement.

## Phase Plan

### Phase 1 — Root Spec Kit Completion

- Complete root artifacts.
- Define depth-1 branches.
- Update trace/status/progress.
- Checkpoint.

### Phase 2 — Depth-1 Branch Spec Kit

Execute full Spec Kit for each depth-1 branch:

1. `game-concept-and-win-condition`
2. `core-match-systems`
3. `multiplayer-and-bots`
4. `balance-and-validation`
5. `presentation-art-audio-motion`
6. `mobile-ux-localization-accessibility`
7. `godot-architecture-and-delivery`

Each branch must define depth-2 children that are meaningful and necessary.

### Phase 3 — Depth 2 to Depth 4 Expansion

For every depth-1 branch:

- Expand to depth 2, 3, and 4.
- Complete full Spec Kit per node.
- Reject placeholder nodes.
- Use `spec-critic` before accepting branch completion.

### Phase 4 — Leaf Implementation Only

After leaf nodes have approved tasks, implementation may begin. Implementation must not jump ahead of tasks.

### Phase 5 — Integration Freeze and Delivery

Only after core branches are complete: integration fixes, QA, review, handoff, build deliverables.

## Depth-1 Branch Rationale

| Branch | Why Necessary | Primary Priority |
|---|---|---|
| game-concept-and-win-condition | Prevents vague game identity and unclear win condition | P1/P2 |
| core-match-systems | Defines actual strategic mechanics and match state | P1/P3 |
| multiplayer-and-bots | Required by multiplayer/bot constraints and balance testing | P3 |
| balance-and-validation | Prevents dominant strategy and passive play | P1/P3 |
| presentation-art-audio-motion | Prevents text-square prototype output | P2 |
| mobile-ux-localization-accessibility | Ensures portrait, Arabic/English, RTL/LTR from the start | P2/P3 |
| godot-architecture-and-delivery | Ensures Godot, Android/iOS, build, tests, handoff readiness | P0/P4 |

## Root Integration Plan

- `SYSTEM_CONTRACTS.md` remains high-level until branches refine contracts.
- Every contract change requires `integration-architect` review.
- `REQUIREMENTS_TRACE.md` must map requirements to exact branches before implementation.
- `ASSET_MANIFEST.md` and `ASSET_PIPELINE.md` must be refined by presentation nodes before asset production.

## Tool Plan

- Context7: use for current Godot/export/API questions before implementation.
- Blender/Krita/Inkscape/Audacity: may be evaluated by presentation branch, not activated by root.
- Repomix: reserve for large review/handoff.
- Task Master/BMAD/Kiro: optional only after Spec Kit tasks exist or critique is needed.

## No-Implementation Guard

This root plan authorizes no game code, no Godot project creation, no assets, and no builds. It authorizes only Spec Kit tree creation and documentation updates.
