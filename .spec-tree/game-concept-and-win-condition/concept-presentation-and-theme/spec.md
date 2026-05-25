# Spec — Concept Presentation And Theme

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

## Specification
1. Primary design outcome: Define the Arabic-first visual identity, cultural theme, and presentation approach that makes Banner of the Majlis feel like a real strategic mobile game rather than a prototype, spreadsheet, or administrative panel.
2. Core focus areas: overall presentation covenant, anti-spreadsheet identity, portrait game readability, Claim theme coherence.
3. Player perception target: within five seconds, the board should read as a Majlis-themed strategic contest, not a data screen.
4. Claim status should be embodied by visible objects such as banners, carpet medallions, seals, council seats, or illuminated tokens.
5. Objective state should use icon, color, ornament density, and subtle motion; labels support the state but do not carry it alone.
6. Godot 4 future implementation should prefer reusable Control scenes and Resource-driven style settings.
7. Theme resources should define margins, typography, panel shapes, and RTL-safe spacing for portrait mobile.
8. StyleBoxFlat or StyleBoxTexture may support carved panels, parchment cards, and soft shadowed council tiles.
9. TextureRect and NinePatchRect should carry banners, frames, seals, and patterned borders without stretching artifacts.
10. ShaderMaterial may be used later for glow, heat, contested shimmer, or gold Claim emphasis when performance allows.
11. AnimationPlayer and Tween should communicate Claim gain, contest, threat, and final reveal as strategic feedback.
12. The 360-414px portrait width budget requires compact icon grammar and layered disclosure, not dense text panels.
13. Arabic RTL must be planned from the start: icon placement, reading flow, and mirrored panels cannot break game meaning.
14. English LTR must remain a first-class layout with equivalent hierarchy and no clipped objective names.
15. The node accepts placeholders only if they preserve silhouettes and hierarchy for future art replacement.
16. Success means the same information becomes less understandable if stripped of its visual game objects.
17. Failure means the concept can be shipped as a list of scores, timers, and text buttons with no loss of clarity.

## Required Child Branches
18. `visual-identity-definition` — Define the core visual language: colors, motifs, iconography, typographic direction, and token vocabulary for the Banner of the Majlis identity.
19. `game-space-presentation` — Define the design direction for the play area as a portrait-friendly Majlis board/arena that visualizes Claims as physical game objects, not lists or tables.
20. `theme-narrative-framing` — Define the story and framing that make the Claim race cohesive: a council of rival houses competing for honor through visible public commitments.
