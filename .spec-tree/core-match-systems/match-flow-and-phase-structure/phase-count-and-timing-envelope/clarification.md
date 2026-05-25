# Clarification — Phase Count and Timing Envelope

## Resolved Questions

### Is the phase count fixed or configurable?

The default ranked/standard match is fixed at 9 phases. Future variants may exist only after the default is validated; this node does not authorize alternate modes.

### Can a player win early by gaining a large Claim lead?

No. Claim can show advantage, threat, and likely outcome, but winner evaluation is delayed until the Final Majlis Reveal after phase 9.

### Are timers real-time reaction pressure?

No. Timers are deliberation boundaries for simultaneous planning. They should feel calm and strategic, with enough time to choose, not enough time to stall.

### Does 2v2 get longer planning because teams coordinate?

No by default. 2v2 uses the same timer envelope. Future team communication features must fit inside this envelope or be asynchronous/pre-phase guidance, not extra waiting.

### What happens if mobile interruption occurs?

This planning node reserves a short capped recovery budget. Exact reconnect/default-plan behavior belongs to multiplayer and state-machine branches.

### Are bot/local timings identical?

Bot/local validation may fast-forward once all controllable players are ready. Balance validation must still simulate the human timing envelope for duration claims.

## Out of Scope

- Godot Timer node implementation.
- Online networking disconnect policy.
- Exact action legality or Claim math.
- Animation lengths and screen design beyond timing constraints.
