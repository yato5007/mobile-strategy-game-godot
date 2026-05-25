# Tasks — Final Petition Pacing

## Planning tasks (this depth-4 node)

| ID | Task | Priority | Effort | Acceptance |
|---|---|---|---|---|
| FPP-01 | Specify phase 7-9 timing table | P1 | Done | Phase 7-9 timing table in spec.md |
| FPP-02 | Define game-object outputs for final-act tension | P2 | Done | 6 named outputs in spec.md |
| FPP-03 | Define FFA requirements | P1 | Done | FFA section in spec.md |
| FPP-04 | Define 2v2 requirements | P1 | Done | 2v2 section in spec.md |
| FPP-05 | Define localization constraints | P2 | Done | Localization section in spec.md |
| FPP-06 | Record autonomous decision | P1 | Done | DEC-CMS-FPP-001 in DECISIONS.md |
| FPP-07 | Create integration notes | P2 | Done | integration-notes.md |
| FPP-08 | Validate with checklist/QA/review | P1 | Done | checklist PASS, QA PASS, review PASS |
| FPP-09 | Update tracking files | P2 | Done | SPEC_TREE, SPEC_TREE_STATUS, REQUIREMENTS_TRACE, SYSTEM_CONTRACTS, PROGRESS_DASHBOARD, PROJECT_PROGRESS |

## Future implementation tasks (not executed now)

| ID | Task | Priority | Depends On |
|---|---|---|---|
| FPP-IMPL-01 | Implement phase 7-9 timing configuration | P1 | phase-state-machine |
| FPP-IMPL-02 | Implement Claim-Final Path Indicator widget | P2 | presentation, Claim state |
| FPP-IMPL-03 | Implement Final Counterplay Window widget | P2 | presentation |
| FPP-IMPL-04 | Implement Urgency Lanterns ambient cue | P2 | presentation, audio |
| FPP-IMPL-05 | Implement Seal-Commit Ceremony indicator | P2 | presentation, multiplayer lock |
| FPP-IMPL-06 | Implement No-Early-Victory Banner | P1 | localization, presentation |
| FPP-IMPL-07 | Implement FFA final-path multi-player view | P2 | presentation, Claim state |
| FPP-IMPL-08 | Implement 2v2 paired seal ceremony | P2 | presentation, multiplayer |
| FPP-IMPL-09 | Localize Final Petition strings (Arabic/English) | P2 | localization system |
| FPP-IMPL-10 | Test urgency cues at 360px portrait, Arabic RTL | P2 | UX, localization |
| FPP-IMPL-11 | Simulator metrics: final-phase uncertainty, counterplay effectiveness | P3 | balance simulator |

## No Game Implementation

This node is planning only. No Godot project, scenes, assets, networking code, bot code, audio, animations, or APK are created.
