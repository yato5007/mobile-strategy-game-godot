# Clarification — Duration Cap and Interruption Validation

## Clarified Questions

### Q1: Why 120s interruption reserve?

A 120s (2-minute) reserve covers most mobile interruptions: network switch, brief background, quick reply. It is short enough to prevent stalling but long enough for genuine reconnects. Longer reserves would risk the 30-minute hard cap.

**Decision:** 120s hard-capped interruption reserve per player per match.

### Q2: Why not unlimited reserve per player?

Unlimited reserve would allow indefinite pausing in multiplayer, breaking the under-30-minute constraint and the simultaneous-planning model.

**Decision:** Reserve is hard-capped at 120s.

### Q3: What is the default plan and why is it neutral?

The default plan is a balanced action set (contest nearest objective + defend stance). It must not be a "best" strategy to avoid players intentionally disconnecting. It must be a legal, non-optimizing fallback. Bots use this as their fallback pattern when filling for disconnected humans.

**Decision:** Neutral balanced default plan; no strategic optimization.

### Q4: How does the hard cap enforcement work?

If the match time reaches 1800 seconds (30 minutes), regardless of phase state:
1. Current phase completes (players finish their current planning/commit).
2. Remaining phases are skipped; match jumps to Final Majlis Reveal.
3. Claim state at that point determines the winner.
4. This is a safety valve, not normal flow. Expected matches should never reach this.

**Decision:** Hard cap jumps to Final Majlis Reveal after current phase completes.

### Q5: Is the interruption reserve shared or per-player?

Per-player. In FFA, four players each have 120s maximum. In 2v2, each player has 120s. This is the simplest fair model.

**Decision:** Per-player reserve.

## Unresolved (deferred)

- Exact Godot pause-mode detection API: deferred to `godot-architecture-and-delivery`.
- Multiplayer transport disconnect timeout thresholds: deferred to `multiplayer-and-bots`.
- Default plan action economy validation: deferred to `action-economy-and-legal-actions`.
