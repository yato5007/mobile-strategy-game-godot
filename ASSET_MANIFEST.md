# ASSET_MANIFEST.md

| Asset | Need | Required/Decorative | Placeholder/Final | Path | Gameplay/UI/Identity Link | Status | Rights/Source | Tool | Export/Import Notes |
|---|---|---|---|---|---|---|---|---|---|
| Arabic geometric motifs | Arabic-first identity, anti-spreadsheet | Required | Procedural (final) | `geometric_art.gd` | Board identity, phase transitions | DONE | Original procedural (Godot draw) | Godot draw API | In-project Godot code |
| Player color palette (4 players) | Player identity, board clarity | Required | Defined in code (final) | `game_board.gd` | Player-colored claim banners | DONE | Original | Godot theme | Hex colors: Crimson/Sapphire/Emerald/Gold |
| Claim banners | Win condition display | Required | Placeholder (code-based) | `claim_banner.tscn` | Visible Claim tracking | DONE | Original | Godot Panel/Label | Color-coded per player |
| Seal stamp icon | Commit lock feedback | Required | Placeholder (code-based) | `seal_effect.tscn` | Phase commit feedback | DONE | Original | Godot TextureRect/Tween | Animated with tween |
| Threat ring | Leader threat indicator | Required | Placeholder (code-based) | `threat_ring.tscn` | Strategic pressure visibility | DONE | Original | Godot Panel/colors | 3 intensities: watch/danger/urgent |
| Phase lanterns | Phase tension gauge | Required | Placeholder (code-based) | `phase_lantern.tscn` | Act progression feel | DONE | Original | Godot Panel/colors | 3 levels: unlit/lit/bright |
| Main menu texture | Title screen identity | Decorative | Placeholder (code-based) | `main_menu.tscn` | First-impression identity | DONE | Original | Godot Panel/Label | Arabic+English title |
| Icon | App launcher | Required | Placeholder (64×64 PNG) | `assets/sprites/icon.png` | App identity | DONE | Original procedural | Python/PIL | Gold color, simple |
| Action select SFX | Button feedback | Required | Placeholder (WAV) | `assets/audio/action_select.wav` | UI feedback | DONE | Original procedural | Python/WAV generator | 0.15s, 880Hz sine |
| Action confirm SFX | Commit confirmation | Required | Placeholder (WAV) | `assets/audio/action_confirm.wav` | UI feedback | DONE | Original procedural | Python/WAV generator | 0.2s, 660Hz sine |
| Phase start SFX | Phase transition feel | Required | Placeholder (WAV) | `assets/audio/phase_start.wav` | Match flow feedback | DONE | Original procedural | Python/WAV generator | 0.5s, 220Hz sine |
| Phase resolve SFX | Resolution feedback | Required | Placeholder (WAV) | `assets/audio/phase_resolve.wav` | Match flow feedback | DONE | Original procedural | Python/WAV generator | 0.4s, 440Hz sine |
| Claim gain SFX | Claim earned feedback | Required | Placeholder (WAV) | `assets/audio/claim_gain.wav` | Strategic feedback | DONE | Original procedural | Python/WAV generator | 0.3s, 660Hz sine |
| Leader threat SFX | Threat escalation cue | Required | Placeholder (WAV) | `assets/audio/leader_threat.wav` | Pressure feedback | DONE | Original procedural | Python/WAV generator | 0.6s, 120Hz sine |
| Comeback cue SFX | Comeback opportunity | Required | Placeholder (WAV) | `assets/audio/comeback_cue.wav` | Strategic feedback | DONE | Original procedural | Python/WAV generator | 0.4s, 880Hz sine |
| Win fanfare SFX | Victory celebration | Required | Placeholder (WAV) | `assets/audio/win_fanfare.wav` | Win/loss clarity | DONE | Original procedural | Python/WAV generator | 1.0s, 440Hz sine |
| Loss sound SFX | Defeat feedback | Required | Placeholder (WAV) | `assets/audio/loss_sound.wav` | Win/loss clarity | DONE | Original procedural | Python/WAV generator | 0.5s, 150Hz sine |
| Seal stamp SFX | Lock feedback | Required | Placeholder (WAV) | `assets/audio/seal_stamp.wav` | Commit feedback | DONE | Original procedural | Python/WAV generator | 0.2s, 200Hz sine |
| Button click SFX | General UI click | Decorative | Placeholder (WAV) | `assets/audio/button_click.wav` | UI feedback | DONE | Original procedural | Python/WAV generator | 0.1s, 1000Hz sine |

## Pipeline Notes

- Visual assets: Godot built-in drawing API for geometric motifs; Panel/StyleBox for UI elements.
- Audio assets: Python-generated WAV files (sine wave tones). Replace with production sounds as needed.
- All assets: original, no third-party licensing concerns.
- Future: Inkscape for SVG icons, Krita for backgrounds, Audacity for production audio.
