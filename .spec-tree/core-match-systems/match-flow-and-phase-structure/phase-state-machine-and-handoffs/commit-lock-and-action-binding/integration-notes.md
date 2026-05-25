# Integration Notes — Commit Lock and Action Binding

Connects to: state machine (consumes), resolver (receives `PHASE_COMMITTED`), action economy (validates action sets), multiplayer (syncs commit status), HUD (lock grace visuals).

Events: `LOCK_GRACE_STARTED`, `PLAYER_COMMITTED`, `TEAM_LOCK_SIGNAL` (2v2), `PHASE_COMMITTED`.
