# Specification — Commit Lock and Action Binding

## Purpose

Define the exact CommitLock protocol: lock timing, action set serialization schema, early-commit policy, per-player vs per-team lock semantics, and the `PHASE_COMMITTED` event contract passed to the resolver.

## Lock Protocol

1. CouncilPlanning ends when timer expires OR all players have committed.
2. If all-ready: verify elapsed planning time ≥ 15s floor. If not, wait until floor reached.
3. Enter CommitLock state; start lock grace timer (4-5s from timing envelope).
4. During grace: HUD shows "Plans Sealed" (Arabic: "الخطط مختومة", English: "Plans Sealed") with lock animation.
5. No action modifications accepted during grace.
6. At grace expiry: all action sets are serialized into `PHASE_COMMITTED` event.

## Action Set Serialization Schema

```
PHASE_COMMITTED {
  phase_index: int (1-9),
  mode: "FFA" | "2v2",
  timestamp: float,
  players: [
    {
      player_id: string,
      team_id: string | null (null in FFA),
      committed_actions: [
        {
          action_id: string,
          action_family: "contest" | "support" | "counter" | "prepare" | "defend" | "advocate",
          target_objective_id: string | null,
          target_player_id: string | null (for support/counter),
          intensity: 1..3,
          council_focus_spent: int,
          influence_position: "front" | "mid" | "back"
        }
      ],
      auto_ready: bool, (true if disconnect/default plan fallback)
      commit_time: float
    }
  ],
  objective_state_snapshot: {
    // Public objective state at lock time
    active_objectives: [{ id, family, modifiers }],
    claim_ledger: { player_id: claim_value }
  },
  action_history_window: {
    // Last 3 phases per player for strategy repetition detection
    player_id: [action_family, ...]
  }
}
```

## Early-Commit Policy

| Condition | Result |
|---|---|
| All 4 players committed before timer; elapsed ≥ 15s | Enter CommitLock immediately |
| All committed but elapsed < 15s | Wait until 15s floor, then enter CommitLock |
| Some players not committed at timer expiry | Enter CommitLock; uncommitted players get auto-ready with extend/neutral plan |
| Disconnected player (beyond reserve) | Auto-ready with default plan |

## Per-Player vs Per-Team Lock

### FFA
- Each player independently commits.
- Lock is per-player: a player who commits early waits in "committed" sub-state until all committed or timer expires.
- Reveal shows all 4 independent resolutions.

### 2v2
- Each player independently commits.
- Lock is per-player, but TEAM_LOCK_SIGNAL is broadcast when both teammates have committed.
- Team action correlation: teammate actions are revealed together; no teammate can see partner's action before reveal.
- HUD shows "Teammate committed" icon when partner commits early.

## Lock Grace Event

During CommitLock grace (4-5s), the HUD emits:
- `LOCK_GRACE_STARTED(phase, remaining_seconds)` 
- Per-player committed status (individual commit icon)
- Team-commit status (if 2v2, both committed → team seal icon)

## Acceptance Criteria

1. CommitLock protocol defined with timing and early-commit policy.
2. Action set serialization schema documented.
3. `PHASE_COMMITTED` event payload specified.
4. FFA per-player lock and 2v2 team-aware lock defined.
5. Lock grace visual confirmation event defined.
6. No game code created.
