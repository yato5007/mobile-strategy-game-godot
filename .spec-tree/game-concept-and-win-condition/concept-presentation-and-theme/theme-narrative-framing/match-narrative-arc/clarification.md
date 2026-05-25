# Clarification — Match Narrative Arc

- Node slug: `match-narrative-arc`
- Depth: 4
- Parent: `.spec-tree/game-concept-and-win-condition/concept-presentation-and-theme/theme-narrative-framing/`
- Purpose: Specify how the visual story of a fixed-length match unfolds from invitation, pledges, contest, reversal, final address, and Claim reveal.
- Project: Banner of the Majlis, fixed-length visible Claim win condition.
- Scope: Spec Kit design planning only; no Godot game feature implementation is authorized here.
- P2 priority with P1 support: presentation must protect strategic clarity and win-condition readability.
- Mandatory rule reference: MASTER 4.1.7 Anti-Spreadsheet Game Rule applies to every visual choice.
- Mandatory rule reference: MASTER 4.1.2 Final Game Quality Rule requires a real final-game feel, not a prototype look.
- Mobile target: portrait-first Android/iOS layouts in the 360-414 logical pixel width range.
- Godot target: Godot 4.x presentation should use Control Theme, StyleBox, Texture2D, TextureRect, NinePatchRect, AnimationPlayer, Tween, CanvasLayer, and ShaderMaterial where appropriate later.

## Clarifications
1. This node does not create final art; it defines a concrete art and presentation direction for later authorized branches.
2. Arabic-first does not mean text-heavy; it means visual culture, RTL readiness, naming discipline, and respectful motifs.
3. Anti-Spreadsheet compliance requires physicalized game metaphors, not only rounded UI panels around tables.
4. Final Game Quality compliance requires motion, feedback, mood, and player-readable objects that feel shippable.
5. Portrait width of 360-414px means details should scale down to icon-level readability on phones.
6. Godot Theme resources should eventually centralize UI style; gameplay scenes should not duplicate visual constants.
7. Texture and shader use should remain performance-aware for Android and iOS mobile GPUs.
8. The Majlis theme is a metaphorical council/gathering structure, not an obligation to simulate real politics.
9. 2v2 presentation groups allied Claims without hiding individual contributions.
10. FFA presentation keeps all four players visible without turning the HUD into a standings spreadsheet.
11. All visible strings are localization-key candidates and must remain compatible with Arabic RTL and English LTR.
12. The design must not depend on landscape space, desktop hover, or keyboard interaction.
13. Ornament, naming, and narrative must help decisions, not slow match comprehension.
14. Future QA should test screenshots at small phone width before accepting visual density.
15. Future review should compare the UI against the banned baseline: plain grid, text rows, and numeric table.
16. If a future implementation uses placeholders, they must still include banner/token/card silhouettes, not raw rectangles.
