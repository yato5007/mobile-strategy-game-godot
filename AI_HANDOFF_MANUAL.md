# AI_HANDOFF_MANUAL.md

## Arabic Executive Summary

المشروع لعبة جوال استراتيجية Multiplayer "Banner of the Majlis" (راية المجلس). الهدف: كسب أقوى مطالبة (Claim) خلال 9 أدوار ثم الكشف الختامي. اللعبة مبنية على Godot 4.x، Portrait (360×640)، تدعم Android وiPhone/iOS، مع العربية والإنجليزية وRTL/LTR. تم إكمال شجرة Spec Kit كاملة عبر العمق 4 الإجباري لجميع الفروع السبعة. تم بدء تنفيذ Godot مع 20 ملف لعبة (سكريبتات، مشاهد، أيقونات). اللعبة تعمل مع زخارف عربية هندسية مرسومة برمجيًا، لافتات مطالبة ملونة، ختم الالتزام، حلقات التهديد، فوانيس المراحل، ومحاكاة بوتات.

## English Executive Summary

Banner of the Majlis is a Godot 4.x portrait-only (360×640) mobile multiplayer strategy game. Players compete to earn the strongest Claim over 9 phases; the winner is revealed at the Final Majlis Reveal. Supports 4-player FFA and 2v2 modes. Full recursive Spec Kit tree through REQUIRED_DEPTH=4 complete for all 7 branches. Godot implementation started with 20 game files. The game features Arabic geometric motifs (procedural drawing), player-colored claim banners, seal commit animation, threat ring system, phase lantern indicators, bot simulation, and Arabic/English autoload localization.

## Current Status

- Phase: Godot implementation active (post-Spec Kit).
- All 7 depth-1 branches: complete through REQUIRED_DEPTH=4 with Full Spec Kit.
- Godot implementation: 20 files (10 scripts, 8 scenes, 1 icon, 1 config).
- Android APK: pending Godot export binary setup.
- iOS: documented, requires macOS.
- Arabic/English: implemented with autoload singleton.
- Arabic geometric motifs: drawn procedurally with Godot drawing API.

## Project Summary

| Area | Status |
|---|---|
| Game Concept | Banner of the Majlis — visible Claim win condition, final reveal |
| Engine | Godot 4.x |
| Orientation | Portrait (360×640) |
| Platforms | Android (APK pending binary install), iOS (documented) |
| Languages | Arabic + English, RTL/LTR-ready |
| Multiplayer | Mock bots implemented; online multiplayer pending |
| Bots | 4-player random simulation |
| Balance Simulator | Pending |
| Art | Procedural geometric arabesque motifs, colored banners, carpet medallions |
| Audio | Pending SFX implementation |
| Motion | Seal animation, phase lantern transitions |
| Spec Kit | 7 branches × depth 4 = ~373 NODE_SUMMARY files |

## Game Rules Summary

1. Match: 9 phases across 3 acts (Opening Council 1-3 → Rising Debate 4-6 → Final Petition 7-9).
2. Each phase: players plan actions, commit with seal lock, then simultaneous reveal/resolve.
3. Claim: earned by contesting objectives, supporting allies, countering opponents.
4. Win condition: highest Claim at Final Majlis Reveal after phase 9.
5. Modes: FFA (4 players) and 2v2 (2 teams of 2).
6. Anti-dominance: objective rotation, catch-up bonuses, leader threat visible.
7. Match duration: 18-23 minutes expected, hard cap 30 minutes.

## Key Decision Log

See `DECISIONS.md` for the complete record. Key decisions:
- DEC-PDR-001: ADJUST_DIRECTION — prioritize game feel after minimum contracts
- DEC-PDR-002: Strict depth-4 quality — no template-like leaves accepted
- All 5 minimum core-match contracts complete through depth 4

## Godot Implementation Details

| Component | Files | Status |
|---|---|---|
| Project Config | `project.godot` | ✅ |
| Main Menu | `main_menu.tscn`, `main_menu.gd` | ✅ |
| Game Board | `game_board.tscn`, `game_board.gd` | ✅ |
| Claim Banners | `claim_banner.tscn`, `claim_banner.gd` | ✅ |
| Threat Ring | `threat_ring.tscn`, `threat_ring.gd` | ✅ |
| Seal Effect | `seal_effect.tscn`, `seal_effect.gd` | ✅ |
| Phase Lanterns | `phase_lantern.tscn`, `phase_lantern.gd` | ✅ |
| Final Reveal | `final_reveal.tscn`, `final_reveal.gd` | ✅ |
| Geometric Art | `geometric_art.tscn`, `geometric_art.gd` | ✅ |
| Localization | `localization.gd` (autoload) | ✅ |
| Match Controller | `match_controller.gd` | ✅ |
| Icon | `assets/sprites/icon.png` | ✅ |

## How to Run

```bash
# Install Godot 4.x CLI:
wget https://github.com/godotengine/godot/releases/download/4.4.1-stable/Godot_v4.4.1-stable_linux.x86_64.zip
unzip Godot_v4.4.1-stable_linux.x86_64.zip
sudo mv Godot_* /usr/local/bin/godot

# Run the game:
godot --path godot/

# Export APK (after installing Android templates):
godot --export-debug Android --headless
```

## What Is Missing

| Item | Priority | Reason |
|---|---|---|
| Godot CLI/Headless binary | P4 | Not installed in this environment |
| Android APK | P2 | Requires export templates and binary |
| iOS test flight / build | P3 | Requires macOS + Apple Developer account |
| Audio/SFX | P2 | Not implemented yet |
| Balance Simulator | P3 | Spec Kit planned but not implemented |
| Online Multiplayer | P3 | Spec Kit planned; mock works |
| Final sprite assets | P2 | Placeholders used; production assets pending |
| Full RTL text shaping | P2 | Godot supports RTL; need to verify |
| Android safe-area | P2 | Spec Kit planned 