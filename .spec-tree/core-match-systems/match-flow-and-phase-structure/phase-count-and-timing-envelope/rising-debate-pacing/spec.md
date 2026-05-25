# Specification — Rising Debate Pacing

## Product Question

How should phases 4-6 intensify the fixed 9-phase Majlis match so players feel mid-match pressure, can shift strategy, can read FFA leader threat, and can coordinate 2v2 teammate awareness without exceeding portrait mobile pacing?

## Rising Debate Goal

The Rising Debate is the middle act of Banner of the Majlis. It must transform the recoverable opening into a contested strategic crossroads: leaders become visible targets, trailing players receive readable comeback paths, teams see partner contribution pressure, and all players are prompted to adapt before the Final Petition begins.

## Concrete Gameplay Decision

Phases 4-6 use a **compressed strategic pressure cadence**: shorter planning than the opening, richer reveal/update beats than early phases, and explicit strategy-shift prompts. Phase 4 introduces the public mid-match threat board, phase 5 creates the strongest strategy-shift incentive, and phase 6 becomes the pre-final crossroads that warns players what must change before phase 7.

## Phase 4-6 Timing Table

| Phase | Rising Debate Role | Brief Target | Planning Target | Planning Range | Lock Grace | Reveal/Update Target | Pressure Output |
|---:|---|---:|---:|---:|---:|---:|---|
| 4 | Mid-match threat reveal | 7-8s | 65s | 60-70s | 4s | 40-45s | First strong leader-threat ring plus comeback lane cue. |
| 5 | Strategy shift peak | 6-8s | 60s | 55-65s | 4s | 42-48s | Public strategy-shift tile lights when a repeated plan is vulnerable. |
| 6 | Pre-final crossroads | 8s | 60s | 55-65s | 4-5s | 45-50s | Final-act warning banner showing leader, nearest challenger, and unresolved pressure. |

Timing intent: phases 4-6 should consume roughly 5.3-5.8 minutes including briefs, planning, lock, reveal/update, and transitions. This keeps the total match inside the parent 18-23 minute target and hard under-30-minute requirement.

## Reveal and Update Beat Structure

Each Rising Debate reveal/update must answer: `Who is threatening the win? Which strategy is becoming predictable? What can my side still change before the final act?`

1. Locked action category reveal: 5-7s.
2. Conflict/objective impact summary: 10-13s.
3. Claim delta and leader-threat cue: 10-14s.
4. Strategy-shift or teammate-awareness cue: 8-11s.
5. Next-phase pressure bridge: 6-8s.

## UI and Game-Object Outputs

Future implementation must express mid-match pressure through concrete game objects and Control-layer cues:

- **Leader Threat Ring:** a glowing ring around the leading banner/seal on the Majlis board; intensity has three states: `watch`, `danger`, `urgent`.
- **Rising Debate Pressure Lanterns:** three lantern icons mapped to phases 4, 5, 6; each lights when that phase increases objective pressure or Claim volatility.
- **Strategy Shift Tile:** a tappable tile/card beside the action affordances showing `continue`, `counter`, or `pivot` icons; it must not prescribe optimal play.
- **Comeback Lane Marker:** a small carpet-path highlight from the trailing player/team token toward the current contested objective.
- **2v2 Teammate Intent Braid:** paired colored cords/icons showing whether teammate intent appears to support, split pressure, contest, or prepare.
- **FFA Threat Fan:** compact radial fan around the objective showing leader, nearest challenger, and most exposed player without a scoreboard table.

## FFA Requirements

- Phase 4 must name the leader and nearest challenger through icons/colors, not a ranked table.
- Phase 5 must warn against repeated dominant patterns by showing one counterpressure cue when a player has repeated the same strategic family across opening and mid-match.
- Phase 6 must show at least two plausible final-act threat paths: leader protection path and challenger overtake path.
- Dogpile mitigation: leader-threat cue must also show whether the nearest challenger is close enough to overtake, so all players are not blindly pushed into attacking one leader.

## 2v2 Requirements

- Phase 4 must show team Claim total plus teammate contribution state: `carrying`, `supporting`, `exposed`, or `ready-to-combine`.
- Phase 5 must expose whether the team is overcommitted to one lane/objective and surface a split-pressure cue.
- Phase 6 must summarize partner alignment before final act: `protect lead`, `double contest`, `split recovery`, or `prepare final petition`.
- Team cues must support silent/readable coordination; they must not require chat, voice, or long negotiation.

## Localization and Portrait Readability

- Brief text must be one short sentence plus icon row; long paragraphs are prohibited.
- Arabic labels must fit RTL within portrait HUD at 360px logical width without overlapping timer, Claim banner, or action affordances.
- English labels must preserve the same hierarchy and not require wider layouts than Arabic.
- Preferred player-facing key families: `phase.rising_debate.*`, `pressure.leader_threat.*`, `strategy.shift.*`, `team.intent.*`, `ffa.threat.*`.
- Numeric Claim changes may appear, but game-object movement/lighting must be the primary explanation.

## AUTONOMOUS_DECISION — DEC-CMS-RDP-001 Rising Debate uses compressed pressure cadence

- Decision made: Use phases 4-6 as a compressed pressure cadence with 65/60/60 second planning targets, 4-5s lock grace, 40-50s reveal/update, visible leader-threat and strategy-shift cues, and mode-specific FFA/2v2 awareness outputs.
- Options compared:
  - Keep opening-like 70-75s timers: clear but too slow for mid-match tension and weakens the sense that the debate is rising.
  - Drop to 40-50s timers: exciting but too reaction-speed, hostile to Arabic/English readability, and risky for simultaneous planning.
  - Use adaptive timers based on score gap: responsive but may feel unfair and complicate multiplayer synchronization.
  - Use compressed fixed mid-act timers with richer reveal/update: accepted because it preserves strategic time while increasing pressure and explanation quality.
- Why it serves the final game: It makes the middle act feel meaningfully different from the opening, encourages adaptation, and keeps leaders/challengers visible before the final act.
- Potential downside: Richer reveal/update beats may inflate match duration or clutter portrait UI.
- Why downside is acceptable: Targets are capped, output objects are icon-first, and future validation must measure duration, readability, and cue overload.
- How it will be verified later: Timing config checks, FFA/2v2 walkthrough QA, simulator metrics for strategy shifts and leader volatility, localization fit tests, and presentation review against anti-spreadsheet criteria.
- Artifact proving decision: This depth-4 node and DECISIONS.md entry DEC-CMS-RDP-001.

## Acceptance Criteria

1. Phases 4-6 have explicit brief, planning, lock, and reveal/update ranges.
2. Rising Debate creates visible pressure but cannot decide victory before phase 7.
3. FFA leader threat includes nearest-challenger context to avoid blind dogpile behavior.
4. 2v2 cues show teammate contribution/alignment without requiring chat.
5. Strategy-shift cues are visible and localizable but do not prescribe one optimal move.
6. Portrait Arabic/English layout constraints are documented for future UX implementation.
7. No child nodes and no game implementation are created.
