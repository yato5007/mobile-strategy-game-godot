# Tasks — Rising Debate Pacing

## Future Implementation Tasks Only

These tasks are instructions for a future authorized implementer. They are not authorization to implement code now.

### Timing Configuration

- [ ] Add phase 4-6 data config with brief/planning/lock/reveal-update ranges from `spec.md`.
- [ ] Ensure phase 4 planning target is 65s and phases 5-6 target 60s unless future accessibility settings explicitly adjust within range.
- [ ] Enforce 4-5s lock grace as stabilization only, not extra strategy-edit time.
- [ ] Add validation that phases 4-6 total timing remains inside parent 18-23 minute expected match target.

### State and Event Contracts

- [ ] Emit mid-act timing/state events for Rising Debate start, phase brief, planning countdown, commit lock, reveal/update, Claim update, pressure bridge, and next phase.
- [ ] Emit or consume future Claim events for leader-threat state: `watch`, `danger`, `urgent`.
- [ ] Emit strategy-shift availability as a public event without revealing hidden committed actions.
- [ ] Emit 2v2 teammate-awareness event showing support/split/contest/prepare alignment.

### UI/Game-Object Outputs

- [ ] Implement presentation hooks for Leader Threat Ring, Rising Debate Pressure Lanterns, Strategy Shift Tile, Comeback Lane Marker, FFA Threat Fan, and 2v2 Teammate Intent Braid.
- [ ] Keep the primary explanation visual/game-object based; numeric deltas are secondary.
- [ ] Prevent portrait HUD overlap between timer, Claim banner, action buttons, and pressure cues.

### FFA and 2v2 Rules

- [ ] In FFA, show leader + nearest challenger + exposed player context compactly.
- [ ] In 2v2, show team total and teammate contribution/alignment without requiring chat.
- [ ] Verify the same timing model supports both modes.

### Localization and Readability

- [ ] Add string keys under `phase.rising_debate.*`, `pressure.leader_threat.*`, `strategy.shift.*`, `team.intent.*`, and `ffa.threat.*`.
- [ ] Validate Arabic RTL and English LTR at 360px logical portrait width.
- [ ] Keep phase brief copy to one short sentence plus icon row.

### Balance and QA Metrics

- [ ] Simulator metric: repeated same strategy family across phases 1-5 should not outperform adaptive strategies across broad seeds.
- [ ] Simulator metric: FFA leader after phase 4 should not win above the future balance threshold without further active play.
- [ ] QA metric: testers can identify leader, nearest challenger, and one comeback/shift path within 5 seconds after reveal/update.
- [ ] QA metric: 2v2 testers can identify teammate alignment within 5 seconds without chat.
