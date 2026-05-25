# spec.md — Reveal and Resolver Handoff

Define resolver invocation protocol, per-act reveal beat structure, explanation event generation, and conflict/tie-break handoff contract.

## Resolver Invocation

1. State Machine exits CommitLock → sends `PHASE_COMMITTED` to Resolver.
2. Resolver computes outcomes deterministically from locked actions + objective state + action history.
3. Resolver returns `PHASE_RESOLVED` containing: per-player action outcomes, conflicts, Claim impact events, explanation atoms.
4. State Machine enters Reveal state and sequences explanation beats.

## Per-Act Reveal Beat Structure

| Act | Phases | Reveal Focus | Beat Count | Budget |
|---|---|---|---|---|
| Opening Council | 1-3 | Teach objectives, show Claim basics | 4 beats | 35-45s |
| Rising Debate | 4-6 | Pressure, threat, strategy shift | 5 beats | 40-50s |
| Final Petition | 7-9 | Urgency, counterplay, closing | 5 beats | 48-65s |

## Explanation Event Generation

Each `PHASE_RESOLVED` includes `explanation_atoms`: minimal structured descriptions of what happened and why. Example atoms: `action_executed`, `conflict_detected`, `tie_broken`, `claim_delta`, `leader_changed`, `objective_contested`, `counter_effective`, `strategy_repeated`.

## Conflict and Tie-Break Handoff

- Conflicts: when two players target the same objective with contest actions. Resolver returns conflict outcome per `simultaneous-planning-and-resolution` contract.
- Tie-breaks: when Claim deltas result in equal final scores. Deferred to `final-reveal-and-mode-completion` for final tie policy.

## Acceptance Criteria

1. Resolver invocation protocol documented.
2. Reveal beat structure per act defined.
3. Explanation atom vocabulary specified.
4. Conflict/tie-break handoff contracts referenced.
5. No implementation.

**AUTONOMOUS_DECISION**: Use fixed per-act reveal beat counts (4/5/5) with timing from envelope, not dynamic beat counts based on action complexity.
