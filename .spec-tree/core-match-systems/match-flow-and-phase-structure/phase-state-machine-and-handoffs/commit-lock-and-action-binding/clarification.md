# Clarification — Commit Lock and Action Binding

## Q1: Why 15-second planning floor?

Prevents instant all-ready abuse where fast-clicking players trivialize decision-making. 15 seconds ensures meaningful strategic consideration, especially important for new players and Arabic/English readability.

**Decision:** 15-second minimum planning time floor.

## Q2: What happens to uncommitted players at timer expiry?

They receive auto-ready with the "extend" policy: if they have a previous-phase plan, extend it; if no history, apply balanced default plan.

**Decision:** Extend-or-default auto-ready for uncommitted players.

## Q3: Can a committed player modify their plan during grace?

No. Grace is visual confirmation only. Plans are sealed at CommitLock entry.

**Decision:** No plan modification during grace.

## Q4: How does 2v2 teammate commit visibility work?

Each teammate sees a "Teammate Committed" icon but does NOT see the partner's specific actions. This preserves simultaneous secrecy while enabling team coordination awareness.

**Decision:** Commit status icon only; no action preview.

## Unresolved (deferred)

- Exact action economy validation of action sets: `action-economy-and-legal-actions`.
- Resolver conflict handling: `simultaneous-planning-and-resolution`.
- Online multiplayer sync of commit status: `multiplayer-and-bots`.
