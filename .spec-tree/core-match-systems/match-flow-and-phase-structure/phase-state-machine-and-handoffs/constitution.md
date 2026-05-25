# Constitution — Phase State Machine and Handoffs

## Non-Negotiables

- The 9-phase Majlis match has a deterministic state machine controlling all transitions.
- Each phase has defined entry/exit states: Brief, Planning, CommitLock, Reveal, Update, NextPhase.
- Phase 9 exit transitions to FinalReveal (not directly to MatchEnd).
- CommitLock is the boundary between planning and resolution; after lock, no further changes accepted.
- Handoffs to resolver, Claim update, and pressure shift subsystems must use defined events.
- FFA and 2v2 modes must share the same state machine with mode-specific sub-states where needed.
- No Godot implementation, code, or assets are created at this planning depth.

## Principles

1. **Deterministic transitions**: Every transition has explicit trigger conditions.
2. **Handoff clarity**: Each subsystem receives exactly the data it needs through contract-defined events.
3. **Time-bounded**: Every state has timing contracts from sibling `phase-count-and-timing-envelope`.
4. **Commit boundary**: The commit lock is sacrosanct; resolver, Claim, and pressure systems consume only locked state.
5. **Mode-neutral core**: FFA/2v2 differences are parameterized, not separate machines.
