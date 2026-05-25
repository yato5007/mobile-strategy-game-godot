# Plan — Concept Presentation And Theme

- Node slug: `concept-presentation-and-theme`
- Depth: 2
- Parent: `.spec-tree/game-concept-and-win-condition/`
- Purpose: Define the Arabic-first visual identity, cultural theme, and presentation approach that makes Banner of the Majlis feel like a real strategic mobile game rather than a prototype, spreadsheet, or administrative panel.
- Project: Banner of the Majlis, fixed-length visible Claim win condition.
- Scope: Spec Kit design planning only; no Godot game feature implementation is authorized here.
- P2 priority with P1 support: presentation must protect strategic clarity and win-condition readability.
- Mandatory rule reference: MASTER 4.1.7 Anti-Spreadsheet Game Rule applies to every visual choice.
- Mandatory rule reference: MASTER 4.1.2 Final Game Quality Rule requires a real final-game feel, not a prototype look.
- Mobile target: portrait-first Android/iOS layouts in the 360-414 logical pixel width range.
- Godot target: Godot 4.x presentation should use Control Theme, StyleBox, Texture2D, TextureRect, NinePatchRect, AnimationPlayer, Tween, CanvasLayer, and ShaderMaterial where appropriate later.

## Plan
1. Establish the non-negotiable presentation covenant: every Claim state must have a game-object representation.
2. Define motif, color, typography, board, token, atmosphere, and narrative framing before any visual implementation.
3. Keep the work within Spec Kit planning scope; do not create Godot scenes or art files from this node.
4. Feed decisions later into DESIGN_SYSTEM.md, ASSET_MANIFEST.md, ASSET_PIPELINE.md, and presentation-art-audio-motion.
5. Ensure visual decisions can be implemented in Godot 4.x using Theme, StyleBox, Texture2D, ShaderMaterial, and AnimationPlayer.
6. Validate portrait composition against 360, 390, and 414 logical pixel widths in future UI tasks.
7. Specify how Arabic RTL affects panel order, naming length, icon pairing, and reading flow.
8. Specify how English LTR uses the same visual hierarchy without becoming a separate design.
9. Make child branches meaningful to depth 4 without creating placeholder-only nodes.
10. Align all child tasks with parent DEC-GCWC-001 and sibling win clarity/comeback branches.
11. Use options comparison where visual direction choices affect player comprehension or system integration.
12. Require future implementation tasks to include screenshots or scene artifacts before claiming visual readiness.
13. Require future QA to ask whether the game feels like a crafted mobile strategy game.
14. Require future reviewer to block spreadsheet-like layouts, raw debug labels, and unsupported Arabic text.
15. Complete the node by updating SPEC_TREE.md, SPEC_TREE_STATUS.md, and REQUIREMENTS_TRACE.md.

## Child Execution Order
16. Complete `visual-identity-definition` because Define the core visual language: colors, motifs, iconography, typographic direction, and token vocabulary for the Banner of the Majlis identity.
17. Complete `game-space-presentation` because Define the design direction for the play area as a portrait-friendly Majlis board/arena that visualizes Claims as physical game objects, not lists or tables.
18. Complete `theme-narrative-framing` because Define the story and framing that make the Claim race cohesive: a council of rival houses competing for honor through visible public commitments.
