# Tasks — Game Space Presentation

- Node slug: `game-space-presentation`
- Depth: 3
- Parent: `.spec-tree/game-concept-and-win-condition/concept-presentation-and-theme/`
- Purpose: Define the design direction for the play area as a portrait-friendly Majlis board/arena that visualizes Claims as physical game objects, not lists or tables.
- Project: Banner of the Majlis, fixed-length visible Claim win condition.
- Scope: Spec Kit design planning only; no Godot game feature implementation is authorized here.
- P2 priority with P1 support: presentation must protect strategic clarity and win-condition readability.
- Mandatory rule reference: MASTER 4.1.7 Anti-Spreadsheet Game Rule applies to every visual choice.
- Mandatory rule reference: MASTER 4.1.2 Final Game Quality Rule requires a real final-game feel, not a prototype look.
- Mobile target: portrait-first Android/iOS layouts in the 360-414 logical pixel width range.
- Godot target: Godot 4.x presentation should use Control Theme, StyleBox, Texture2D, TextureRect, NinePatchRect, AnimationPlayer, Tween, CanvasLayer, and ShaderMaterial where appropriate later.

## Tasks
1. Document the visual metaphor that turns Claim into banners, seals, carpets, or council honor objects.
2. Document how each visual state avoids spreadsheet presentation and text-only explanation.
3. Document portrait-specific layout expectations for 360-414px phone widths.
4. Document Godot 4 presentation primitives expected later: Theme, StyleBox, TextureRect, NinePatchRect, ShaderMaterial, Tween, and AnimationPlayer.
5. Document Arabic RTL considerations and English LTR parity for every player-facing naming or layout choice.
6. Document FFA and 2v2 readability requirements without duplicating the identity system.
7. Document placeholder standards so early assets still look like intentional game pieces.
8. Document acceptance criteria that future QA can validate through screenshots, scenes, and localization checks.
9. Add trace links for anti-spreadsheet presentation, Arabic identity, portrait board feel, and narrative cohesion.
10. Keep all tasks as future planning instructions; no game scenes, scripts, textures, or audio files are created here.
11. Future implementation task: create Resource-driven style constants rather than hardcoded colors in Control scripts.
12. Future implementation task: make token and panel scenes reusable across FFA and 2v2.
13. Future implementation task: connect rule events to presentation through signals, not UI-side rule calculation.
14. Future implementation task: include Arabic and English screenshot review before PASS.
15. Future implementation task: update ASSET_MANIFEST.md for every generated texture, icon, or placeholder.
16. Future implementation task: update ASSET_PIPELINE.md with export paths for Godot imports.
