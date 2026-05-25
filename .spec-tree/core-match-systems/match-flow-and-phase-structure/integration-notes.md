# Integration Notes — Match Flow and Phase Structure

## Refined Contract

The Match Phase Loop now has a default contract:

- Match has 9 scheduled phases grouped into 3 acts.
- Match completion occurs only after phase 9 resolves and final reveal completes.
- Each phase exposes: phase index, act label, objective summary, timer state, planning state, commit lock state, reveal handoff state, Claim update state, pressure shift state, and mode context.
- Resolver receives locked commitments only after Commit Lock.
- Claim/objective model receives deterministic resolution outputs and returns visible Claim/pressure events.
- Presentation/UI receives localizable, compact phase and result events suitable for portrait screens.
- Multiplayer/bots receive clear timing boundaries for ready/auto-ready and lock behavior.

## Dependencies

- `simultaneous-planning-and-resolution` must define commit payload, reveal ordering, conflict resolution, tie-breakers, and explanation events.
- `action-economy-and-legal-actions` must define legal plan composition during Council Planning.
- `claim-objective-state-model` must define Claim update and pressure shift event data.
- `mobile-ux-localization-accessibility` must later validate portrait, RTL/LTR, timers, labels, and final reveal text.
- `balance-and-validation` must simulate duration, passive play, comeback rates, and leader conversion.

## Integration Risks

- If sibling nodes change phase count, DEC-CMS-MFPS-001 must be revisited and documented.
- If final reveal tie-breakers depend on hidden data, public explanation requirements may be violated.
- If multiplayer lock timing differs from this node, fairness and no-reaction-speed rules can break.
