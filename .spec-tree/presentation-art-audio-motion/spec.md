# spec.md — Presentation, Art, Audio, and Motion

Define P2 game-feel direction: visual identity, Majlis game-object systems, audio direction, motion/animation rules, and asset pipeline integration for Banner of the Majlis.

## Visual Identity

Arabic-first council aesthetic: geometric Islamic motifs, four-player color palette (Gold/Crimson/Sapphire/Emerald), Arabic-first typography (Noto Naskh Arabic), icon grammar replacing text tables. All UI: icon-first, text-secondary. Portrait layout: 360px logical width.

## Majlis Game Objects

Replace all score/Claim indicators with game objects:

| Game Object | Replaces | Visual Direction |
|---|---|---|
| Claim Banners | Score numbers | Ornate banners with player color + Claim value inscribed |
| Seals | Lock/commit indicators | Wax seal icons in player/team color |
| Carpet Medallions | Objective list | Illuminated carpet segments with objective icons |
| Threat Ring | Leader gap indicator | Glowing ring around leader banner: watch/danger/urgent |
| Pressure Lanterns | Phase tension gauge | 3 lanterns per act, increasing brightness |
| Urgency Lanterns | Final-act countdown | 3 lanterns: amber→orange→deep red |
| Final Path Indicators | Remaining phases | Carpet-strand arcs from player tokens to reveal position |
| Comeback Lane Marker | Trailing player path | Highlighted carpet path toward contested objective |

## Audio Direction

- SFX: functional feedback per action (contest clash, support chime, counter block, seal stamp, banner unfurl, victory fanfare).
- No background music by default (reduces mobile distraction); optional ambient council-hall murmur.
- Audio must be togglable; mobile-appropriate volume ranges.
- Localized audio cues: distinct for Arabic/English (victory announcement voice variant).

## Motion and Animation

- Phase transitions: carpet slide or council-curtain reveal (0.5-1s).
- Claim change: banner number scroll or medallion glow pulse.
- Commit lock: seal stamp animation with wax-spread effect.
- Leader threat: ring pulse animation (3 intensities).
- Victory: banner unfurl + confetti/calligraphy flourish.
- All animations must be interruptible (tappable skip) and capped at 300ms-1.5s.

## Asset Pipeline

- Primary: Inkscape for 2D icons, banners, seals (SVG→Godot Texture).
- Secondary: Krita for backgrounds, carpet textures.
- Optional: Blender for simple 3D-rendered tokens if 2D sprites insufficient.
- All assets documented in `ASSET_MANIFEST.md` and `ASSET_PIPELINE.md`.
- Placeholder-first: gray-box shapes until leaf tasks authorize production.

## Proposed Depth-2 Children

1. `visual-identity-and-theme-system` — Color palette, typography, icon grammar, motif library, Arabic-first UI theme.
2. `game-object-and-token-visualization` — Banners, seals, medallions, threat rings, lanterns, path indicators.
3. `audio-and-sfx-feedback` — SFX catalog, audio pipeline, mobile volume, localization.
4. `motion-and-animation-feedback` — Transition rules, animation timing, interruptibility, accessibility.

## Acceptance

4 depth-2 children. All replace tables with game objects. Arabic-first. Portrait 360px. No implementation.
