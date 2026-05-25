# GAME_CONSTRAINTS.md

Source of truth order: this file is below `MASTER_PROJECT_PLAN.md` and above `SPEC_TREE_RULES.md`.

## P0 Constraints

- Engine: Godot Engine 4.x.
- Default implementation language: GDScript unless Spec Kit documents a stronger reason for C#.
- Orientation: portrait only.
- Platforms: Android and iPhone/iOS.
- Recursive Spec Kit required depth: 4.
- Recursive Spec Kit maximum depth: 4.
- Full Spec Kit is required for every node at every depth.
- The project must not become a text-square prototype or spreadsheet-like program.
- Win condition must be clear from the first match.

## Gameplay Constraints

- Strategic multiplayer mobile game.
- Spec Kit selects the exact strategic structure; area control is allowed but not required.
- Supports 4 players, FFA, and 2v2.
- No turn waiting; planning or actions happen simultaneously.
- Match duration target: under 30 minutes.
- Active play must be rewarded; passive hiding must not dominate.
- Comebacks must remain possible until late match.
- No single dominant strategy.

## Language and Presentation Constraints

- Arabic-first visual/cultural style.
- Arabic and English support from the beginning.
- Arabic RTL and English LTR must be planned and validated.
- No hardcoded player-facing UI strings.
- Game feel, feedback, animation, VFX, and SFX are quality requirements, not optional decoration.

## Bootstrap Boundary

Bootstrap prepares files, agents, scripts, plans, and tooling only. It must not build the game implementation.
