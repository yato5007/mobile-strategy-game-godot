# Integration Notes — Final Petition Pacing

## Connections to Other Systems

### Phase State Machine (pending depth-3 `phase-state-machine-and-handoffs`)
- Phase 7-9 state transitions: brief → planning → commit → lock → reveal → update → next-phase or final-reveal.
- Phase 9 must NOT transition directly to victory; output is `FINAL_MAJLIS_REVEAL_NEEDED` event.
- Lock grace values (4-5s) must be consumed by the state machine.

### Claim Objective State (pending depth-2 `claim-objective-state-model`)
- Phase 7-9 reveal/update beats must trigger Claim delta events.
- Final-path indicators read Claim state to compute remaining steps to threshold.
- Counterplay window must compare Claim deltas across players without modifying Claim rules.

### Action Economy (pending depth-2 `action-economy-and-legal-actions`)
- Phase 9 commit lock is the last action-input window. After lock, no further actions accepted.
- Counterplay window in phase 8 must not restrict legal actions; it only signals urgency.

### Multiplayer and Bots (pending depth-1 `multiplayer-and-bots`)
- Phase 9 lock must sync across all players/bots.
- Default-plan policy for disconnected players during phase 9 needed in duration-cap node.
- Bot difficulty should influence phase 8 counterplay quality.

### Presentation and Assets (pending depth-1 `presentation-art-audio-motion`)
- 6 game-object outputs need visual implementation: lanterns, window ring, path strands, markers, seals, banner.
- Urgency lantern color progression: amber → orange → deep orange.
- Seal ceremony needs visual wax-seal icon and team-color pairing.

### Localization and UX (pending depth-1 `mobile-ux-localization-accessibility`)
- 5 string key families: `phase.final_petition.*`, `urgency.window.*`, `counterplay.*`, `final_path.*`, `seal.*`.
- "Final Majlis Reveal after Phase 9" banner: one short sentence, Arabic RTL fit at 360px.

### Balance and Validation (pending depth-1 `balance-and-validation`)
- Future simulator metrics: final-phase uncertainty, counterplay effectiveness, percentage of matches where phase 8 changes final outcome.
- Anti-dominant validation: no single phase-9 action family should dominate across multiple simulated matches.

## Integration Contract Summary

| Output Event | Producer | Consumer |
|---|---|---|
| `FINAL_PETITION_PHASE_STARTED(phase)` | State Machine | Presentation, HUD |
| `COUNTERPLAY_WINDOW_OPEN` | State Machine (phase 8) | HUD, Bots |
| `COUNTERPLAY_WINDOW_CLOSED` | State Machine (end phase 8) | HUD, Presentation |
| `SEAL_COMMIT_LOCKED(team_or_player)` | State Machine (phase 9) | Multiplayer, HUD |
| `FINAL_MAJLIS_REVEAL_NEEDED` | State Machine (end phase 9) | Final Reveal System |
| `CLAIM_FINAL_PATH_UPDATED(player, steps_remaining)` | Claim State | Presentation |

No implementation code, data schemas, or Godot scenes are created at this planning depth.
