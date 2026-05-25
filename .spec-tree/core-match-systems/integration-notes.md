# Integration Notes — Core Match Systems

## Contract Updates Needed

`SYSTEM_CONTRACTS.md` should treat Core Match Systems as the planning owner for:

- Match phase progression.
- Legal action categories.
- Deterministic action resolution.
- Claim/objective state transitions.
- Public match event outputs.

## Cross-Branch Interfaces

| Consumer Branch | Needs from Core Match Systems |
|---|---|
| `multiplayer-and-bots` | Command schema, visible state, commit/reveal timing, legal action list. |
| `balance-and-validation` | Phase count, action economy, Claim deltas, objective states, metrics hooks. |
| `presentation-art-audio-motion` | Events for reveal, Claim update, pressure shift, conflict, support, win/loss. |
| `mobile-ux-localization-accessibility` | Phase labels, timers, action labels, public info hierarchy, RTL/LTR text keys. |
| `godot-architecture-and-delivery` | State ownership, deterministic resolver boundaries, testability requirements. |

## Integration Risks

- Multiplayer may want networking details before command semantics are stable; avoid premature protocol design.
- Presentation may visualize Claim before Claim ledger events are stable; use placeholders until child nodes finalize outputs.
- Balance may need exact formulas; child nodes must provide tunable parameters before simulator implementation.
- UX may face portrait clutter; public information hierarchy must be refined with mobile UX branch.

## Integration Recommendation

Proceed to depth-2 `match-flow-and-phase-structure` first because phase count and pacing constrain every other child branch.
