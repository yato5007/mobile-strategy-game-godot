# ASSET_PIPELINE.md

Bootstrap pipeline plan only. No asset production is required during bootstrap.

## Rules

- Spec Kit decides which assets are necessary.
- Placeholder-first is allowed, but placeholders must be documented.
- Every asset must be legal/original or have documented rights.
- Every asset must be importable into Godot.
- Update `ASSET_MANIFEST.md` for every asset.

## Candidate Tools

| Tool | Use | Priority Served | Activation Condition |
|---|---|---|---|
| Blender | Rendered tokens, props, visual references, simple animations | P2 | Needed to avoid text-square presentation |
| Krita/GIMP | 2D art, placeholders, UI art | P2 | Needed for readable portrait game visuals |
| Inkscape | Icons, vector tokens, UI symbols | P2 | Needed for scalable clear symbols |
| Audacity/LMMS | SFX/ambient audio | P2 | Needed for feedback and polish |
| Godot import pipeline | Texture/audio import and validation | P2/P4 | After Godot project exists |

## Required Documentation Per Asset

1. Source/tool.
2. Purpose.
3. Required vs decorative.
4. Placeholder vs final.
5. Export settings.
6. Godot import path.
7. QA/reviewer clarity notes.
