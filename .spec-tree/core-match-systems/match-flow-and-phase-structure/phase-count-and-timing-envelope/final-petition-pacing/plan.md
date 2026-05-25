# Plan — Final Petition Pacing

## Scope

Depth-4 planning leaf for phases 7-9 of the 9-phase Majlis match. Defines accelerated urgency cadence, counterplay window, seal-commit ceremony, final-path indicators, and no-early-victory enforcement.

## Dependencies

- `phase-count-and-timing-envelope` (DEC-CMS-PCTE-001)
- `match-flow-and-phase-structure` (DEC-CMS-MFPS-001)
- `game-concept-and-win-condition` (DEC-GCWC-001/002/003)
- `opening-council-pacing` and `rising-debate-pacing` (sibling leaves)

## Plan Outline

1. **Define timings**: brief, planning, lock, reveal/update ranges for phases 7-9 with acceleration from mid-match.
2. **Define game-object outputs**: Claim-Final Path Indicators, Final Counterplay Window, Last-Chance Position Markers, Seal-Commit Ceremony Indicators, Urgency Lanterns, No-Early-Victory Banner.
3. **Define FFA specifics**: multi-player paths, counterplay reachable checks.
4. **Define 2v2 specifics**: team paths, paired seals, silent coordination.
5. **Define localization**: key families, portrait constraints, Arabic RTL fit.
6. **Define integration notes**: state machine handoffs, Claim state, multiplayer lock policy, presentation motion budget.
7. **Validate**: checklist, QA, review for planning scope.
8. **Record decision**: DEC-CMS-FPP-001 in DECISIONS.md.
9. **Update tracking files**: SPEC_TREE, SPEC_TREE_STATUS, REQUIREMENTS_TRACE, SYSTEM_CONTRACTS, PROGRESS_DASHBOARD, PROJECT_PROGRESS.

## Risks and Mitigations

| Risk | Mitigation |
|---|---|
| Urgency cues may feel punitive | Icon-first ambient cues; no penalty mechanic |
| Counterplay window too narrow for accessibility | Phase 8 is 55s planning; window is the full phase, not a sub-second event |
| Seal ceremony may confuse 2v2 | Paired icon approach; contribution explained in reveal, not seal phase |
| Portrait overload with 6+ game objects | Priority: Lanterns and Window are required; others throttleable |

## Implementation Boundary

No Godot code, scenes, game objects, assets, networking, bot code, or build files are created. Implementation is authorized only by future leaf-task authorization.
