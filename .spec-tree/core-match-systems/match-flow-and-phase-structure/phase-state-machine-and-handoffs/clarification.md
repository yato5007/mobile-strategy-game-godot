# Clarification — Phase State Machine and Handoffs

## Clarified Questions

### Q1: Single state machine or multiple?

One state machine drives all 9 phases. Each phase shares the same state types (Brief→Planning→Lock→Reveal→Update→NextPhase). The phase index advances at NextPhase. This avoids duplicating state logic while allowing per-phase timing from the envelope.

**Decision:** Single state machine with phase counter.

### Q2: How does early commit work?

If all players submit before the planning timer expires, the state machine may transition to CommitLock early. The "all ready" shortcut is a quality-of-life feature, not a rule change.

**Decision:** All-ready early transition to CommitLock; minimum planning time floor applies (no shorter than 15s for accessibility).

### Q3: Is the resolver synchronous or asynchronous relative to the state machine?

The state machine enters Reveal, sends `PHASE_COMMITTED` to the resolver, and waits for `PHASE_RESOLVED`. In a local mock multiplayer, this is synchronous. In online multiplayer, the state machine waits with the reveal timer.

**Decision:** Resolver is logically synchronous from state machine perspective; online transport hides latency behind the reveal animation budget.

### Q4: Who owns the phase counter?

The state machine owns and advances the phase counter. Other subsystems read it but do not modify it.

**Decision:** State machine is sole owner of phase counter.

### Q5: How are handoff events ordered within PhaseUpdate?

Ordering: 1. Claim deltas applied first, 2. Pressure shift computed second, 3. HUD cues dispatched third. This ensures Claim-informed pressure cues.

**Decision:** Claim before pressure in PhaseUpdate ordering.

## Unresolved (deferred)

- Exact resolver conflict algorithm: `simultaneous-planning-and-resolution`.
- Claim delta formulas: `claim-objective-state-model`.
- Pressure cue visual implementation: `presentation-art-audio-motion`.
- Online transport protocol: `multiplayer-and-bots`.
