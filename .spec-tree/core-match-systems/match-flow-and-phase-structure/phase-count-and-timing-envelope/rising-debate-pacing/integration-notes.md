# Integration Notes — Rising Debate Pacing

## State Machine Integration

- Requires future phase state machine to recognize phases 4, 5, and 6 as act `Rising Debate`.
- Required event sequence: `phase_brief_started` → `planning_started` → `commit_lock_started` → `commit_lock_closed` → `reveal_started` → `claim_update_started` → `pressure_bridge_started` → `phase_completed`.
- Recommended public events: `rising_debate_started`, `leader_threat_changed`, `strategy_shift_available`, `team_alignment_changed`.

## Claim State Integration

- Consumes visible Claim totals/deltas from future Claim Objective State.
- Needs derived threat states `watch`, `danger`, `urgent`; exact thresholds are deferred to Claim/balance nodes.
- Must not set final winner during phases 4-6.
- Phase 6 should expose unresolved final-act pressure, not final outcome.

## Action Economy Integration

- Strategy-shift cue depends on future action-family taxonomy such as build/contest/support/prepare/disrupt.
- Cue must not reveal hidden committed actions before lock/reveal.
- Legal action affordances should remain stable during planning; cue is advisory/attention, not a new hidden action system.

## Multiplayer and Bots Integration

- Same timing model is used for local/mock, FFA, and 2v2.
- Bots must consume the same visible pressure cues as humans; no hidden knowledge advantage.
- Timeout/default-plan policy must fit 4-5s lock grace and cannot extend Rising Debate indefinitely.
- 2v2 teammate-awareness display should be generated from public teammate actions/intents after reveal or from explicitly shared pre-lock intent only if future multiplayer contracts allow it.

## Balance and Validation Integration

- Balance simulator must track phase 4 leader conversion rate, phase 5 pivot frequency, phase 6 comeback openness, repeated strategy success, FFA dogpile rates, and 2v2 support fairness.
- If phase 4 leader win rate is too high across seeds, Claim formulas or leader exposure must be revisited.
- If phase 5 shift cues create one obvious best pivot, anti-dominance nodes must revise objective variety/counterpressure.

## Presentation Integration

- Presentation owns threat ring, lanterns, shift tile, comeback lane, FFA fan, and teammate braid visuals.
- Rule/state systems emit semantic events only; presentation must not calculate Claim or action legality.
- Future assets should be recorded in `ASSET_MANIFEST.md` and pipeline details in `ASSET_PIPELINE.md` when created.

## Localization and UX Integration

- Localization owns text keys and directionality.
- UX must ensure Arabic RTL and English LTR fit in portrait without clipping timer/action/Claim controls.
- Brief/cue content must remain icon-first and tap-to-expand rather than paragraph-heavy.
