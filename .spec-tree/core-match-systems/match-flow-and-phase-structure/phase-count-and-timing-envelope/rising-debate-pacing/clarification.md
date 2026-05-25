# Clarification — Rising Debate Pacing

## Clarified Scope

This node defines the pacing, attention, and output requirements for phases 4-6 only. It does not define exact Claim math, action costs, bot algorithms, network transport, or final victory rules.

## Clarifying Questions Resolved Autonomously

| Question | Resolution | Reason |
|---|---|---|
| Should mid-match timers match opening timers? | No. Use 65/60/60s planning targets. | The mid-act should feel more pressured after players learned the loop. |
| Should timers adapt dynamically to Claim gap? | No for default. | Dynamic timers complicate fairness, synchronization, localization QA, and bot pacing. |
| Should leader threat be shown in FFA? | Yes, with nearest-challenger context. | Needed for clear win condition and dogpile mitigation. |
| Should 2v2 require explicit chat coordination? | No. | The game must remain mobile-readable and not depend on external communication. |
| Can phase 6 create decisive Claim swings? | It can create strong pressure but must not mathematically lock victory before phase 7. | No early match end and comeback requirements remain active. |

## Definitions

- **Compressed pressure cadence:** mid-act planning is shorter than opening but remains long enough for strategy; reveal/update gets more time to explain pressure.
- **Strategy-shift cue:** a visible prompt indicating that continuing the same pattern is risky or that a pivot/counter path exists.
- **Leader-threat cue:** visible display of who is closest to winning at final reveal, not an early victory declaration.
- **Teammate-awareness cue:** 2v2 display of partner contribution and likely alignment needs, not chat replacement or forced command.

## Open Items Deferred to Future Nodes

- Exact numerical threshold for `watch/danger/urgent` leader-threat states.
- Exact action-family taxonomy used by strategy repetition detection.
- Default-plan behavior if a player disconnects or times out.
- Animation and SFX details for lanterns/rings/tiles.
