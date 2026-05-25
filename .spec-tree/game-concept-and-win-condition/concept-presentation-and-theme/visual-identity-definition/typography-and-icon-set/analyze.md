# Analyze — Typography And Icon Set

- Node slug: `typography-and-icon-set`
- Depth: 4
- Parent: `.spec-tree/game-concept-and-win-condition/concept-presentation-and-theme/visual-identity-definition/`
- Purpose: Define Arabic-first font strategy and icon style guide so labels, objective names, Claim values, and player actions feel crafted rather than hardcoded text panels.
- Project: Banner of the Majlis, fixed-length visible Claim win condition.
- Scope: Spec Kit design planning only; no Godot game feature implementation is authorized here.
- P2 priority with P1 support: presentation must protect strategic clarity and win-condition readability.
- Mandatory rule reference: MASTER 4.1.7 Anti-Spreadsheet Game Rule applies to every visual choice.
- Mandatory rule reference: MASTER 4.1.2 Final Game Quality Rule requires a real final-game feel, not a prototype look.
- Mobile target: portrait-first Android/iOS layouts in the 360-414 logical pixel width range.
- Godot target: Godot 4.x presentation should use Control Theme, StyleBox, Texture2D, TextureRect, NinePatchRect, AnimationPlayer, Tween, CanvasLayer, and ShaderMaterial where appropriate later.

## Analysis
1. Anti-Spreadsheet risk: Claim could become a score table if state is expressed only as labels and numbers.
2. Mitigation: Claim is embodied as banners, seals, carpet medallions, animated tokens, and council seats.
3. Final Game Quality risk: a correct rules concept may still feel like a prototype if it lacks motion and atmosphere.
4. Mitigation: future Godot presentation uses Theme resources, StyleBox depth, Texture2D ornaments, ShaderMaterial glow, and AnimationPlayer feedback.
5. Portrait risk: four-player FFA information may overcrowd the 360-414px width range.
6. Mitigation: prioritize icon grammar, short localized labels, grouped HUD strips, and bottom-sheet details.
7. Arabic RTL risk: mirrored reading order may invert cause/effect cues or make arrow icons misleading.
8. RTL mitigation: directional icons must be authored in semantic pairs or mirrored deliberately per locale.
9. Arabic text risk: decorative fonts can reduce readability at phone scale.
10. Mitigation: use a readable Arabic UI font for labels and reserve calligraphic styling for titles or emblems.
11. Cultural risk: motifs could become shallow decoration unrelated to play.
12. Mitigation: motifs frame objectives, signal Claim status, and support the Majlis gathering metaphor.
13. Performance risk: shaders and layered textures can hurt older Android phones.
14. Mitigation: use optional ShaderMaterial effects, atlas textures, simple tweens, and profile later on target devices.
15. Integration risk: presentation may accidentally resolve rule state if UI scripts compute winners.
16. Mitigation: UI only receives state and events from rules; it displays, animates, and localizes.
17. 2v2 risk: team colors can obscure individual agency.
18. Mitigation: use team grouping plus individual pattern marks, seat markers, or secondary emblems.
19. FFA risk: four equal players can create visual noise.
20. Mitigation: leader, contested, and comeback states receive transient emphasis while quiet states remain subdued.
21. Validation later: compare screenshots against the banned spreadsheet baseline and require visible game-object semantics.
22. Arabic RTL validation later: inspect Arabic strings, mirrored panel order, icon direction, and text clipping on 360px width.
23. English LTR validation later: verify equivalent hierarchy without different gameplay meaning.
24. Fun validation later: ask if the player wants to tap the board because it feels like a competitive Majlis arena.
