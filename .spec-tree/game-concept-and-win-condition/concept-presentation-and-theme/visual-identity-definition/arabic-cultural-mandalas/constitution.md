# Constitution — Arabic Cultural Mandalas

- Node slug: `arabic-cultural-mandalas`
- Depth: 4
- Parent: `.spec-tree/game-concept-and-win-condition/concept-presentation-and-theme/visual-identity-definition/`
- Purpose: Specify how Islamic geometric and Arabic cultural mandala-inspired patterns appear as backgrounds, frames, borders, and subtle ornamental feedback without harming play readability.
- Project: Banner of the Majlis, fixed-length visible Claim win condition.
- Scope: Spec Kit design planning only; no Godot game feature implementation is authorized here.
- P2 priority with P1 support: presentation must protect strategic clarity and win-condition readability.
- Mandatory rule reference: MASTER 4.1.7 Anti-Spreadsheet Game Rule applies to every visual choice.
- Mandatory rule reference: MASTER 4.1.2 Final Game Quality Rule requires a real final-game feel, not a prototype look.
- Mobile target: portrait-first Android/iOS layouts in the 360-414 logical pixel width range.
- Godot target: Godot 4.x presentation should use Control Theme, StyleBox, Texture2D, TextureRect, NinePatchRect, AnimationPlayer, Tween, CanvasLayer, and ShaderMaterial where appropriate later.

## Constitution Principles
1. This node exists to make the Claim race visually legible, culturally coherent, and emotionally game-like.
2. The design must avoid admin dashboards, spreadsheet grids, bare ColorRect blocks, and text-only state explanation.
3. Every visual element must either explain a strategic state, create atmosphere, or reinforce the Arabic-first Majlis identity.
4. Arabic cultural references must be respectful, abstract, and functional; ornament must never obscure gameplay information.
5. Portrait composition is mandatory: one-handed readability and thumb-safe interaction are design constraints, not polish.
6. Player-facing wording must be localization-key ready and compatible with Arabic RTL and English LTR.
7. Future Godot scenes must separate rules from presentation; Theme, StyleBox, Texture, and ShaderMaterial react to state but do not resolve rules.
8. The Claim must look like a public banner, seal, carpet mark, or council honor object rather than a bare numeric score.
9. FFA and 2v2 must share the same visual language with mode-specific grouping, not duplicate art systems.
10. Asset work may start placeholder-first later, but placeholders must still look like deliberate game pieces.
11. Any future visual implementation must update ASSET_MANIFEST.md and ASSET_PIPELINE.md if assets are produced.
12. No implementation is performed in this planning node; tasks are future-authorizing documentation only.
13. The node must remain compatible with parent DEC-GCWC-001 fixed-length visible Claim victory.
14. The design must make leader threat, comeback possibility, and contested objectives visible through objects and motion.
15. Reviewer must block the node if its output can be represented equally well as a plain table without loss of meaning.
