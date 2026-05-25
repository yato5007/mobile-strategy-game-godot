# Node Summary — Arabic Patronage Naming

- Node slug: `arabic-patronage-naming`
- Depth: 4
- Parent: `.spec-tree/game-concept-and-win-condition/concept-presentation-and-theme/theme-narrative-framing/`
- Purpose: Define naming conventions for objectives, ranks, territories, and patronage titles so Arabic and English localization feels intentional and culturally coherent.
- Project: Banner of the Majlis, fixed-length visible Claim win condition.
- Scope: Spec Kit design planning only; no Godot game feature implementation is authorized here.
- P2 priority with P1 support: presentation must protect strategic clarity and win-condition readability.
- Mandatory rule reference: MASTER 4.1.7 Anti-Spreadsheet Game Rule applies to every visual choice.
- Mandatory rule reference: MASTER 4.1.2 Final Game Quality Rule requires a real final-game feel, not a prototype look.
- Mobile target: portrait-first Android/iOS layouts in the 360-414 logical pixel width range.
- Godot target: Godot 4.x presentation should use Control Theme, StyleBox, Texture2D, TextureRect, NinePatchRect, AnimationPlayer, Tween, CanvasLayer, and ShaderMaterial where appropriate later.

## Purpose
Define naming conventions for objectives, ranks, territories, and patronage titles so Arabic and English localization feels intentional and culturally coherent.

## Parent Link
`.spec-tree/game-concept-and-win-condition/concept-presentation-and-theme/theme-narrative-framing/`

## Decisions Made
- Adopt a Majlis-centered visual metaphor for the Claim race.
- Represent Claims through banners, seals, carpets, council markers, and motion instead of tables.
- Keep Godot implementation future-facing through Theme, StyleBox, Texture, ShaderMaterial, and AnimationPlayer guidance.
- Require Arabic RTL and English LTR compatibility at 360-414px portrait widths.

## Alternatives Rejected
- Plain scoreboards and admin panels because they violate the Anti-Spreadsheet Game Rule.
- Text-only explanation because it fails Final Game Quality expectations.
- Landscape-first board composition because the project is portrait-only.
- Decorative motifs with no gameplay purpose because they add clutter without clarity.

## Dependencies
Parent Claim concept, future presentation-art-audio-motion branch, DESIGN_SYSTEM.md, ASSET_MANIFEST.md, ASSET_PIPELINE.md, localization, and Godot UI architecture.

## Integration Risks
Ornament may reduce readability; shaders may affect mobile performance; RTL mirroring may break directional cues; too many player markers may overcrowd FFA portrait HUD.

## Implementation Status
No implementation. This node creates future design and implementation instructions only.

## Tests
Planning checklist PASS. Future validation requires screenshots, Godot scenes, localized Arabic/English layouts, and QA review against the spreadsheet baseline.

## Next Step
Use these artifacts to guide future presentation, assets, localization, and Godot UI branches without starting game implementation prematurely.
