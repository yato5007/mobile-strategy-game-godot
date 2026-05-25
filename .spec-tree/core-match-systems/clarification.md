# Clarification — Core Match Systems

## Clarified Questions

### Does this node finalize exact numbers?

No. It establishes planning-level defaults and branch boundaries. Exact phase count, action costs, Claim formulas, tie-breaker priority, and event schemas must be finalized by depth-2/3/4 children before implementation.

### Is this an area-control game?

Not necessarily. Position/influence may exist as a tactical representation, but the game remains a strategic Claim contest. Area control is a possible mechanism, not the required genre.

### How is simultaneous play different from real-time action?

Players choose plans during shared windows. Resolution is deterministic after commit. The winner is not the fastest tapper; strategic choice, timing, counterplay, and objective reading matter.

### What information is hidden?

Only uncommitted/committed action choices before reveal are hidden by default. Claim, objectives, phase count, public pressure, leader threat, and most constraints are public.

### What prevents passive play?

Passive play is constrained through limited phase count, public objective windows, active Claim opportunities, visible idle warnings, leader pressure, and strategy repetition pressure inherited from DEC-GCWC-003.

### What prevents runaway leaders?

The system plans exposure windows, contested catch-up opportunities, escalating Claim effort, and public counterplay. It does not give automatic free points to trailing players.

### What is the default match pacing?

Eight to ten phases, each with a one-minute-ish planning beat and short reveal/feedback beat. This gives enough adaptation without exceeding 30 minutes.

## Out of Scope

- Godot implementation files.
- UI layout implementation.
- Bot algorithms.
- Balance simulator code.
- Asset production.
- Online networking protocol.

## Dependencies on Sibling Branches

- `multiplayer-and-bots`: command synchronization, bot decision model, 2v2/FFA seating.
- `balance-and-validation`: tests for dominant strategy, passive win rate, comeback fairness, match length.
- `presentation-art-audio-motion`: visual/audio Claim updates and reveal feedback.
- `mobile-ux-localization-accessibility`: portrait HUD, RTL/LTR text, accessible timers.
- `godot-architecture-and-delivery`: eventual state machines, data models, export constraints.
