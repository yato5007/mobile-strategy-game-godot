# Analysis — Final Petition Pacing

## Constraints Analysis

| Constraint | Source | Satisfied? | How |
|---|---|---|---|
| No early victory | MASTER 6.19-20 | Yes | Victory only at Final Majlis Reveal; no-early-victory banner throughout phases 7-9 |
| Strategic, not speed | MASTER 6.1 | Yes | 50-55s planning preserves deliberation; lanterns/indicators are ambient, not countdown pressure |
| Under 30 minutes | MASTER 6.8 | Yes | Phases 7-9 consume ~5.5-6m; total match 18-23m |
| 4 players FFA | MASTER 6.12 | Yes | Multi-player path indicators; counterplay reachable per-player check |
| 2v2 | MASTER 6.13 | Yes | Team path, paired seals, silent coordination cues |
| Portrait mobile | MASTER 9 | Yes | 360px constraints documented; icon-first approach |
| No scoring table | MASTER 4.1.7 | Yes | Path arcs, lanterns, seal icons replace numeric ranked tables |
| Arabic/English | MASTER 8 | Yes | Key families documented; RTL constraints in spec |

## Completeness Check

- Timing table: complete for all three phases.
- Game-object outputs: 6 named with descriptions.
- FFA and 2v2 handling: complete.
- Localization: key families and portrait constraints documented.
- Integration: notes file connects to state machine, Claim state, action economy, multiplayer, presentation.
- Acceptance criteria: 7 items in spec.

## Risk Assessment

| Risk | Likelihood | Impact | Mitigation |
|---|---|---|---|
| Urgency felt as pressure, not excitement | Medium | Medium | Lanterns are ambient; no penalty; full planning time preserved |
| 6 game objects clutter portrait | Medium | Medium | Priority ranking: Lanterns + Window + Banner required; Path/Markers/Seals throttleable |
| Counterplay window exploited by bots | Low | Medium | Bot difficulty logic in future `multiplayer-and-bots` branch |
| 2v2 seal ceremony confusing | Low | Medium | Paired icons; contribution explained in reveal phase |

## Validation Metrics (future)

- Phase 7-9 total duration distribution across 100+ simulated matches.
- Percentage of matches where counterplay window changes final top-two standing.
- Percentage of FFA matches where at least 3 players show "can overtake" at start of phase 8.
- Arabic RTL portrait fit at 360px for "Final Majlis Reveal after Phase 9" banner text.
