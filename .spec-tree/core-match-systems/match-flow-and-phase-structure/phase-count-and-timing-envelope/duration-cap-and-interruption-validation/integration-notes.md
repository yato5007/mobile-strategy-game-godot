# Integration Notes — Duration Cap and Interruption Validation

## Connections to Other Systems

### Phase State Machine (pending `phase-state-machine-and-handoffs`)
- Auto-ready transitions: when timer expires without commit → auto-ready state.
- Hard cap transition: when match clock reaches 1800s → skip to Final Majlis Reveal after current phase.
- Interruption detection: pause/resume transitions triggered by disconnect/reconnect events.
- Event: `MATCH_HARD_CAP_REACHED`

### Multiplayer and Bots (pending `multiplayer-and-bots`)
- Disconnect detection: transport layer signals disconnect events to state machine.
- Per-player reserve tracking: multiplayer layer maintains `player.reserve_remaining` (max 120s).
- Default plan: bots use neutral balanced plan when filling for disconnected human.
- Reconnect: player receives remaining planning time (minimum 15s grace).

### Action Economy (pending `action-economy-and-legal-actions`)
- Default plan must be a legal action set under the economy rules.
- Auto-ready does NOT consume action budget (it is a system action, not a player action).
- Idle penalty (from anti-dominant system) is separate from auto-ready.

### Localization and UX (pending `mobile-ux-localization-accessibility`)
- Key families: `interrupt.disconnect.*`, `interrupt.reconnect.*`, `interrupt.auto_ready.*`, `duration.hard_cap.*`
- Disconnect indicator: icon + short label + reserve bar.
- Hard cap warning: icon + label at 25-minute mark (5-minute advance notice).

### Balance and Validation (pending `balance-and-validation`)
- Simulator must track: matches reaching hard cap (target: 0%), average reserve consumption, disconnect frequency impact.

## Events

| Event | Producer | Consumer |
|---|---|---|
| `PLAYER_DISCONNECTED(player_id)` | Multiplayer transport | State Machine |
| `PLAYER_RECONNECTED(player_id, time_remaining)` | Multiplayer transport | State Machine |
| `INTERRUPTION_RESERVE_CONSUMED(player_id, seconds)` | State Machine | HUD |
| `AUTO_READY_TRIGGERED(player_id, reason)` | State Machine | HUD, Action Economy |
| `MATCH_HARD_CAP_REACHED` | State Machine | Phase Machine, HUD |

No implementation code created.
