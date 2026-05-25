# Specification — Final Petition Pacing

## Purpose

Specify phases 7-9 of the 9-phase Majlis match so the final act creates urgency, a final counterplay window, visible claim-final path, and no-early-victory reinforcement while keeping strategic mobile pacing.

## Concrete Gameplay Decision

Phases 7-9 use an **accelerated final-petition cadence**: planning shrinks modestly from mid-match, reveal/update beats become richer and more urgent, the final counterplay window is explicit (phase 8), and phase 9 is the last planning/commit/lock before the Final Majlis Reveal.

## Phase 7-9 Timing Table

| Phase | Final Petition Role | Brief Target | Planning Target | Planning Range | Lock Grace | Reveal/Update Target | Urgency Output |
|---:|---|---:|---:|---:|---:|---:|---|
| 7 | Resolution begins | 8s | 55s | 50-60s | 4s | 45-50s | Claim-final path indicators activate; final counterplay window announced for next phase. |
| 8 | Final counterplay window | 7-8s | 55s | 50-60s | 4s | 48-55s | Counterplay window counts down visibly; last-chance position markers pulse; final petition urgency lanterns reach full brightness. |
| 9 | Last planning before reveal | 6-8s | 50s | 45-55s | 5s | 55-65s | Window closes; seal-commit ceremony begins; reveal countdown shown; no-early-victory banner visible. |

Timing intent: phases 7-9 consume roughly 5.5-6.0 minutes. Combined with Opening Council (~4.5m) and Rising Debate (~5.5m), the total match stays within 18-23 minutes and hard under 30.

## Reveal and Update Beat Structure

Each Final Petition reveal/update must shift from "what changed" to "what is now possible and what is closing":

1. Locked action category reveal: 5-7s.
2. Conflict/objective impact and claim delta: 10-13s.
3. Final-path indicator update: 8-11s.
4. Counterplay-window state or window-closed signal: 8-12s.
5. Next-phase brief and urgency bridge: 7-9s.

## UI and Game-Object Outputs

Future implementation must express final-act tension through concrete game objects:

- **Claim-Final Path Indicators**: Path-like carpet strands or arc lines from each player/team token to the final reveal position, showing remaining phases as remaining steps.
- **Final Counterplay Window**: A tappable timer-ring or glass-lamp UI element that visibly shrinks during phase 8; shows "counterplay open" or "window closed" states.
- **Last-Chance Position Markers**: Floating icon bands near each player/team showing "can overtake", "must defend", or "can reach" status relative to the leader.
- **Seal-Commit Ceremony Indicators**: Visual seal wax or ribbon icon elements during phase 9 lock, indicating the plan is sealed for final reveal.
- **Final Petition Urgency Lanterns**: Three lantern icons mapped to phases 7-9; phase 7 lights one, phase 8 lights two, and phase 9 lights all three at maximum brightness.
- **No-Early-Victory Banner**: A persistent small banner at the top of the portrait HUD reading "Final Majlis Reveal after Phase 9" with an icon, visible throughout phases 7-9.

## FFA Requirements

- Phase 7 must show at least two plausible final-path outcomes.
- Phase 8 must make clear whether any trailing player can still reach the leader threshold with one strategic counterplay action.
- Phase 9 must suppress "early winner" impressions; seal-commit ceremony treats all players equally.
- FFA standings context: all four player paths must be distinguishable by color, not by numeric rank text alone.

## 2v2 Requirements

- Phase 7 must show team claim-final path as combined team color.
- Phase 8 must surface whether a split-pressure action can change team ranking vs the other team.
- Phase 9 must show both teammates' seals for joint commitment; seal ceremony is per team, not per player.
- 2v2 final petition must not require chat or voice coordination.

## Localization and Portrait Readability

- Player-facing text must be icon-first; no paragraph briefs.
- Arabic RTL labels must fit 360px logical portrait width without overlapping timer, claim banner, or action affordances.
- Preferred key families: `phase.final_petition.*`, `urgency.window.*`, `counterplay.*`, `final_path.*`, `seal.*`.
- "Final Majlis Reveal after Phase 9" banner text must localize to both Arabic and English with equal visual weight.

## AUTONOMOUS_DECISION — DEC-CMS-FPP-001 Final Petition uses accelerated urgency cadence

- Decision made: Use phases 7-9 with 55/55/50s planning targets, explicit phase-8 counterplay window, rich reveal/update beats, and no-early-victory banner. Victory only at Final Majlis Reveal after phase 9.
- Options compared:
  - Same timers as Rising Debate: violates urgency arc; players need to feel the petition is closing.
  - Drastically shorter 35-40s timers: creates speed pressure violating strategic/no-reaction rule and harms accessibility.
  - Async unlimited planning: breaks simultaneous multiplayer model.
  - Accelerated but not rushed fixed timers: accepted; preserves strategy while signaling urgency.
- Why it serves the final game: The final act must feel different from the opening and mid-match. Acceleration without panic keeps strategy readable while making the approaching reveal undeniable.
- Potential downside: Richer reveal beats in phases 7-9 may inflate match duration or overload small screens.
- Why acceptable: Timing targets are capped; future presentation/localization branches can simplify or throttle cues.
- Verification: Timing config tests, FFA/2v2 walkthroughs, window-closing/claim-path readability checks, simulator metrics for final-phase uncertainty.

## Acceptance Criteria

1. Phases 7-9 have explicit brief, planning, lock, and reveal/update ranges distinct from opening and mid-match.
2. Phase 8 defines a clear final counterplay window; phase 9 seals commits before final reveal.
3. No player or UI message implies any player has won before the Final Majlis Reveal.
4. FFA final-path indicators show at least two plausible outcomes.
5. 2v2 seal ceremony is per-team, not per-player.
6. Portrait Arabic/English "no early victory" banner is readable at 360px logical width.
7. No implementation code, child nodes, Godot scenes, or assets are created.
