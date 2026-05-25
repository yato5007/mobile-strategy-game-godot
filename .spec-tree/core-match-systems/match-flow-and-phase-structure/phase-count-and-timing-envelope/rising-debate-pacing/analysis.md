# Analysis — Rising Debate Pacing

## Fit Against Parent Timing Envelope

The parent node selected a variable capped 9-phase envelope with under-30-minute validation. Rising Debate uses shorter planning than Opening Council but longer reveal/update than a simple numeric update because mid-match pressure requires explanation. Estimated phase totals:

- Phase 4: 7-8s brief + 60-70s planning + 4s lock + 40-45s reveal/update = 111-127s.
- Phase 5: 6-8s brief + 55-65s planning + 4s lock + 42-48s reveal/update = 107-125s.
- Phase 6: 8s brief + 55-65s planning + 4-5s lock + 45-50s reveal/update = 112-128s.

Total mid-act range: approximately 5.5-6.3 minutes including transitions if implemented tightly. This is acceptable only if opening/final/interruption budgets remain controlled by sibling leaves.

## Why This Is Not Template-Like

Concrete outputs include exact phase numbers, timing ranges, reveal beat budgets, named UI/game-object outputs, FFA and 2v2 differences, event names for future contracts, localization key families, future metrics, and Godot-facing acceptance criteria.

## Strategic Impact

- **Phase 4** changes player attention from learning to threat reading.
- **Phase 5** pressures repeated strategies and creates the strongest pivot moment.
- **Phase 6** warns players before final act, preserving agency and comeback possibility.

## Risks and Mitigations

| Risk | Impact | Mitigation |
|---|---|---|
| Cue overload in portrait HUD | Player misses key pressure signal | Icon-first hierarchy, tap-to-expand cards, one short brief sentence. |
| FFA dogpile on leader | Unfun leader punishment or kingmaking | Show nearest challenger and exposed-player context, not only leader. |
| 2v2 coordination burden | Players need chat/voice | Teammate Intent Braid and alignment labels support silent coordination. |
| Strategy-shift cue feels like forced advice | Reduces player agency | Use neutral continue/counter/pivot options, not optimal commands. |
| Reveal/update too long | Match exceeds target | Hard ranges and future duration validation. |

## Validation Rules

1. No Rising Debate timer may be below 55s planning target range unless future accessibility/bot-only mode explicitly documents the exception.
2. Phase 6 may increase pressure but cannot set a terminal win flag.
3. Every Rising Debate reveal/update must include a visual Claim delta plus at least one pressure/shift cue.
4. FFA mode must expose leader and nearest challenger together.
5. 2v2 mode must expose teammate alignment/contribution together with team Claim.
6. Arabic and English strings must be externalized and verified for portrait layout.

## Future Test Metrics

- Median total phases 4-6 duration: target under 6 minutes; hard concern above 6.5 minutes.
- Player comprehension QA: 80%+ of testers identify leader and next pressure within 5 seconds after phase 4 reveal.
- Strategy adaptation metric: players/bots that shift strategy after phase 5 cue should have competitive win rates versus repetition.
- FFA dogpile metric: leader targeting should correlate with actual threat, not automatic all-player focus every seed.
- 2v2 alignment metric: teammate-support actions should be recognized correctly by testers in 80%+ of walkthroughs.
