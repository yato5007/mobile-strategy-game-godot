# Tasks — Duration Cap and Interruption Validation

## Planning tasks (this depth-4 node)

| ID | Task | Priority | Effort | Acceptance |
|---|---|---|---|---|
| DCV-01 | Compute duration formula and validation table | P1 | Done | Duration table in spec.md |
| DCV-02 | Define 4 interruption scenarios | P1 | Done | Scenarios A-D in spec.md |
| DCV-03 | Define interruption reserve policy | P1 | Done | 120s per-player capped reserve |
| DCV-04 | Define auto-ready and default plan rules | P1 | Done | Auto-ready table in spec.md |
| DCV-05 | Define FFA and 2v2 differences | P1 | Done | Per-player reserve; 2v2 teammate coverage |
| DCV-06 | Define hard cap enforcement mechanism | P1 | Done | Hard cap jumps to Final Majlis Reveal |
| DCV-07 | Define localization constraints | P2 | Done | Icon-first disconnect/reconnect labels |
| DCV-08 | Validate with checklist/QA/review | P1 | Done | PASS |
| DCV-09 | Update tracking files | P2 | Done | SPEC_TREE, SPEC_TREE_STATUS, REQUIREMENTS_TRACE, PROGRESS, etc. |

## Future implementation tasks

| ID | Task | Priority | Depends On |
|---|---|---|---|
| DCV-IMPL-01 | Implement duration tracking and hard cap enforcement | P1 | phase-state-machine |
| DCV-IMPL-02 | Implement interrupt detection (disconnect/background) | P1 | godot-architecture, multiplayer |
| DCV-IMPL-03 | Implement per-player interruption reserve | P2 | multiplayer, state-machine |
| DCV-IMPL-04 | Implement auto-ready policy with default plan | P1 | state-machine, action-economy |
| DCV-IMPL-05 | Implement reconnect grace window (min 15s remaining) | P2 | state-machine |
| DCV-IMPL-06 | Implement disconnect/reconnect UI indicators | P2 | presentation, localization |
| DCV-IMPL-07 | Test interruption scenarios on mobile devices | P2 | godot-build, mobile-ux |
| DCV-IMPL-08 | Simulator metrics: interruption frequency impact on match fairness | P3 | balance-simulator |

## No Game Implementation

This node is planning only. No code created.
