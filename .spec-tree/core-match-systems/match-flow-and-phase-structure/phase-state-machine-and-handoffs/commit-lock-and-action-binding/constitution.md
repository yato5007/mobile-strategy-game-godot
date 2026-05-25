# Constitution — Commit Lock and Action Binding

## Non-Negotiables

- CommitLock is the boundary between planning and resolution; after lock, NO further action modifications.
- Each player/team submits actions during CouncilPlanning; all actions are locked at CommitLock entry.
- Action serialization contract defines the exact format passed to the resolver.
- Early commit (all-ready) is allowed with a 15-second minimum planning floor.
- Per-player lock in FFA; per-player lock with team-broadcast in 2v2.
- Lock grace window (4-5 seconds, consumed from timing envelope) provides visual confirmation.
- No Godot implementation code.

## Principles

1. **Sacrosanct boundary**: CommitLock is the absolute cutoff for plan changes.
2. **Serialization clarity**: Action sets must have a stable schema understood by resolver, Claim state, and history tracker.
3. **Grace without delay**: Lock grace provides feedback without extending the effective lock time.
4. **Mode transparency**: FFA and 2v2 use the same lock semantics with mode-specific broadcast.
