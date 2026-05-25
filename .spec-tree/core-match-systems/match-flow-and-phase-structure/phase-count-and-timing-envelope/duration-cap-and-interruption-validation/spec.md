# Specification — Duration Cap and Interruption Validation

## Purpose

Validate that the 9-phase Majlis match timing envelope (defined in sibling leaves `opening-council-pacing`, `rising-debate-pacing`, `final-petition-pacing`) produces a match within 30 minutes, handle mobile interruption scenarios, and define auto-ready / default-plan fallback policies.

## Duration Formula

The total match duration is the sum of:

```
T(match) = T(phase 1-3) + T(phase 4-6) + T(phase 7-9) + T(final_reveal) + T(interruption_reserve)
```

Where:
- T(phase 1-3) = sum of planning_max + brief + lock + reveal/update_max + transition(3s per phase)
- T(phase 4-6) = sum of planning_max + brief + lock + reveal/update_max + transition(3s per phase)
- T(phase 7-9) = sum of planning_max + brief + lock + reveal/update_max + transition(3s per phase)
- T(final_reveal) = 45-60s (Final Majlis Reveal ceremony duration, defined in future `final-reveal-and-mode-completion` node)
- T(interruption_reserve) = 120s maximum

## Duration Validation Table

| Phase | Planning Max | Brief | Lock | Reveal/Update Max | Transition | Phase Max |
|---:|---:|---:|---:|---:|---:|---:|
| 1 | 90 | 10 | 5 | 45 | 3 | 153 |
| 2 | 75 | 8 | 5 | 45 | 3 | 136 |
| 3 | 70 | 8 | 5 | 45 | 3 | 131 |
| 4 | 70 | 8 | 4 | 45 | 3 | 130 |
| 5 | 65 | 8 | 4 | 48 | 3 | 128 |
| 6 | 65 | 8 | 5 | 50 | 3 | 131 |
| 7 | 60 | 8 | 4 | 50 | 3 | 125 |
| 8 | 60 | 8 | 4 | 55 | 3 | 130 |
| 9 | 55 | 8 | 5 | 65 | 3 | 136 |
| Final Reveal | 0 | 0 | 0 | 60 | 0 | 60 |
| Interruption Reserve | 0 | 0 | 0 | 0 | 0 | 120 |

Conservative total (all phases at max): **1380 seconds = 23.0 minutes**
Plus interruption reserve: **1500 seconds = 25.0 minutes**

**Hard cap: 1800 seconds (30 minutes).** This gives 300 seconds (5 minutes) of safety margin above the conservative total with reserve.

Expected total (using planning_target values instead of max, and reveal/update_target):
- Opening Council: ~270s
- Rising Debate: ~315s
- Final Petition: ~330s
- Final Reveal: ~60s
- Reserve (unused under normal play): ~0s
- Expected: **~975 seconds = 16.3 minutes**

This is slightly below the 18-23 minute target, but reveals and transitions may stretch naturally in practice with animations. The conservative total of 23.0 minutes is within the expected range.

## Mobile Interruption Scenarios

### Scenario A: Brief disconnect (≤30s)
- Player reconnects within 30s during planning.
- Timer pauses for disconnected player only; server/broadcast continues for others.
- Player rejoins with remaining planning time (minimum 15s).
- No reserve consumed.

### Scenario B: Extended disconnect (30s - 120s)
- Player is disconnected for longer than 30s.
- Interruption reserve (120s total) begins to consume.
- If player reconnects within reserve: rejoins with remaining planning time.
- If planning phase ends while disconnected: auto-ready with previous phase's action set or neutral default plan.
- Reserve consumption is capped per match: 120s total.

### Scenario C: Disconnect beyond reserve (>120s)
- After 120s total reserve consumed: player is marked as "unavailable."
- Remaining phases: auto-ready with default plan (neutral/balanced action set).
- Bots may fill for human in multiplayer; in mock multiplayer, default plan is used.
- This does NOT end the match or disqualify the player from Claim standing.

### Scenario D: App background/sleep
- Treated as disconnect. Godot pause mode detection triggers the same reserve logic.
- If background lasts beyond reserve: auto-ready policy applies until reconnect.

## Auto-Ready and Default Plan Policy

| Situation | Auto-Ready? | Action Set |
|---|---|---|
| Planning timer expires without commit | Yes | Extend/neutral previous phase action; if no history, use balanced default |
| Disconnected beyond reserve | Yes | Balanced default plan (objective contest + defend) |
| Reconnected player with ≤5s remaining | Yes (grace expired) | Extend last committed plan |
| Player explicitly idles (no input) | No (idle penalty from anti-dominant node) | No action committed; idle penalty applied |

Default plan: a simple balanced strategy action set that contests the nearest objective and applies a defend stance. It must be legal under the action economy rules and must not be optimized to exploit game state.

## FFA and 2v2 Considerations

- FFA: each disconnected player consumes their own reserve (120s per player, tracked separately).
- 2v2: if one teammate disconnects, the remaining teammate still plans. The disconnected teammate gets auto-ready/default plan. The team's Claim is not penalized beyond the loss of planned coordination.
- Reserve for 2v2 is per-player, same 120s.

## Localization and Portrait Constraints

- Disconnect/reconnect status must be shown with an icon and one-word label (Arabic: "عودة", English: "Returning") plus remaining reserve bar.
- Auto-ready notification: icon + short label. No paragraph text.
- Default plan cannot include localizable strategic nuance; it is a neutral action set.

## Acceptance Criteria

1. Hard cap of 30 minutes validated through conservative duration calculation.
2. Four interruption scenarios (A-D) defined with timing policies.
3. Interruption reserve limited to 120s per player, per match.
4. Auto-ready/default plan policy specified without favoring any strategic style.
5. FFA per-player reserve tracking; 2v2 teammate coverage policy defined.
6. Disconnect/auto-ready UI is icon-first with short localized labels.
7. No implementation code, Godot scenes, or assets created.
