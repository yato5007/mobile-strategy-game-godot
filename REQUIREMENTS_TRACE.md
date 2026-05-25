# REQUIREMENTS_TRACE.md

No final PASS is allowed while requirements are unlinked.

| Requirement Area | Source | Spec Node | Decision | Implementation | Validation | QA | Reviewer | Status |
|---|---|---|---|---|---|---|---|---|
| Godot 4.x official engine | MASTER 2.3 | `.spec-tree/root/`, future `godot-architecture-and-delivery` | DEC-BOOT-001, DEC-ROOT-001 | Pending future leaf tasks | Root checklist | Root QA PASS | Root review PASS | ROOT_LINKED |
| Portrait orientation | MASTER 9 | `.spec-tree/root/`, future `mobile-ux-localization-accessibility`, `godot-architecture-and-delivery` | DEC-ROOT-001 | Pending future leaf tasks | Root checklist | Root QA PASS | Root review PASS | ROOT_LINKED |
| Android/iOS support | MASTER 9 | `.spec-tree/root/`, future `godot-architecture-and-delivery` | DEC-ROOT-001 | Pending future leaf tasks | Root checklist | Root QA PASS | Root review PASS | ROOT_LINKED |
| Required depth 4 | MASTER 13 | `.spec-tree/root/`, all depth-1 branches | DEC-BOOT-001, DEC-ROOT-001 | `.spec-tree/root/` created; branches pending | Root checklist/status | Root QA PASS | Root review PASS | ROOT_LINKED |
| Full Spec Kit per node | MASTER 14 | `.spec-tree/root/`, all future nodes | DEC-BOOT-001, DEC-ROOT-001 | Root artifacts complete; child nodes pending | Root checklist | Root QA PASS | Root review PASS | ROOT_LINKED |
| Multiplayer 4p/2v2/FFA | MASTER 10 | `.spec-tree/root/`, future `multiplayer-and-bots` | DEC-ROOT-001 | Pending future leaf tasks | Pending branch validation | Pending | Pending | TODO |
| Bots and styles/difficulty | MASTER 11 | `.spec-tree/root/`, future `multiplayer-and-bots` | DEC-ROOT-001 | Pending future leaf tasks | Pending branch validation | Pending | Pending | TODO |
| Balance simulator | MASTER 12 | `.spec-tree/root/`, future `balance-and-validation` | DEC-ROOT-001 | Pending future leaf tasks | Pending branch validation | Pending | Pending | TODO |
| Arabic/English RTL/LTR | MASTER 8 | `.spec-tree/root/`, future `mobile-ux-localization-accessibility` | DEC-ROOT-001 | Pending future leaf tasks | Pending branch validation | Pending | Pending | TODO |
| Asset manifest/pipeline | MASTER 22.1 | `.spec-tree/root/`, future `presentation-art-audio-motion` | DEC-ROOT-001 | `ASSET_MANIFEST.md`, `ASSET_PIPELINE.md`; assets pending | Pending branch validation | Pending | Pending | TODO |
| Android build deliverable | MASTER 9.1 | `.spec-tree/root/`, future `godot-architecture-and-delivery` | DEC-ROOT-001 | `BUILD_DELIVERABLES.md`; APK pending | Pending build validation | Pending | Pending | TODO |
| Clear win condition | MASTER 4.1.4, 6 | `.spec-tree/game-concept-and-win-condition/`, future `win-condition-clarity` | DEC-GCWC-001 | Pending future leaf tasks | Depth-1 checklist | Depth-1 QA PASS | Depth-1 review PASS | ROOT_AND_D1_LINKED |
| Win progress visibility | MASTER 4.1.4 | `.spec-tree/game-concept-and-win-condition/win-condition-clarity/`, future `claim-progress-display` | DEC-GCWC-001 | Pending future leaf tasks | Depth-2 checklist | Depth-2 QA PASS | Depth-2 review PASS | D2_LINKED |
| Visual leader threat | MASTER 4.1.4, 4.1.8 | `.spec-tree/game-concept-and-win-condition/win-condition-clarity/claim-progress-display/`, future `leader-threat-indicator` | DEC-GCWC-001 | Pending future leaf tasks | Depth-3 checklist | Depth-3 QA PASS | Depth-3 review PASS | D3_LINKED |
| Win/loss explanation | MASTER 4.1.4 | `.spec-tree/game-concept-and-win-condition/win-condition-clarity/`, future `win-loss-explanation` | DEC-GCWC-001 | Pending future leaf tasks | Depth-2 checklist | Depth-2 QA PASS | Depth-2 review PASS | D2_LINKED |
| No early match end | MASTER 6.19-20 | `.spec-tree/game-concept-and-win-condition/` | DEC-GCWC-001 | Pending future leaf tasks | Depth-1 checklist | Depth-1 QA PASS | Depth-1 review PASS | D1_LINKED |
| Comeback possible | MASTER 6.10, 6.22 | `.spec-tree/game-concept-and-win-condition/`, future `strategic-tension-and-comeback` | DEC-GCWC-001 | Pending future leaf tasks | Pending child validation | Pending | Pending | TODO |
| Anti-passive active play | MASTER 6.16-17 | `.spec-tree/game-concept-and-win-condition/`, future `anti-dominant-strategy-and-active-play` | DEC-GCWC-001 | Pending future leaf tasks | Pending child validation | Pending | Pending | TODO |
| Anti-spreadsheet game feel | MASTER 4.1.7 | `.spec-tree/game-concept-and-win-condition/`, future `concept-presentation-and-theme` | DEC-GCWC-001 | Pending future leaf tasks | Depth-1 checklist | Depth-1 QA PASS | Depth-1 review PASS | D1_LINKED |

Root links are planning-level links. Future child nodes must replace remaining `Pending` items with exact artifacts before implementation claims.
