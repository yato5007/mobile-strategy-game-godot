# Specification — Opening Council Pacing

## Product Question

How should phases 1-3 teach the Majlis match, preserve strategic decision time, avoid early runaway, and still make active choices matter in FFA and 2v2 portrait mobile play?

## Opening Council Goal

The Opening Council is the first act of the 9-phase match. It must let new players understand the current objective, see how Claim changes, and make three meaningful but recoverable commitments before Rising Debate begins.

## Phase 1-3 Timing Model

| Phase | Opening Role | Phase Brief Target | Planning Target | Planning Range | Lock Grace | Reveal/Update Target | Key Player Understanding |
|---:|---|---:|---:|---:|---:|---:|---|
| 1 | First commitment and first Claim lesson | 12s | 90s first-match / 75s replay | 75-90s | 5s | 40-45s | What objective matters now, what legal actions exist, and that Claim is visible but not final. |
| 2 | First adaptation | 10s | 75s | 70-80s | 4s | 35-45s | How the first Claim delta happened, who changed position, and what can be contested. |
| 3 | Opening pivot | 8-10s | 70s | 65-75s | 4s | 35-45s | Whether to build, contest, support, or prepare before Rising Debate pressure begins. |

## Phase Brief Content

Each opening phase brief must be localized and icon-first, with no hardcoded player-facing text.

- Phase number and act: `Opening Council / المجلس الافتتاحي`, phase 1-3.
- Objective prompt: one concise sentence plus objective icon.
- Current Claim context: leader/nearest-challenger or all-even state.
- Recommended attention: `Build`, `Contest`, `Support`, or `Prepare` as neutral learning hints, not optimal-play commands.
- Mode line:
  - FFA: all-player Claim standing and nearest threat.
  - 2v2: team Claim total, teammate lane, opponent pair threat.
- Final reminder in phase 1 only: victory happens after phase 9 reveal, not now.

## Planning Timer Behavior

- Phase 1 has the longest timer because it carries onboarding and first action comprehension.
- First-match context may use 90s phase-1 planning; replay/experienced context should default to 75s.
- Phases 2-3 gradually shorten to teach tempo without rushing players.
- Timers must count down visibly, with a non-alarming reminder at 20s and a commit reminder at 10s.
- Lock grace is only for network/input stabilization and late tap protection, not for changing strategy.
- If all players ready early, future implementation may fast-forward only after a short readable transition confirms all commitments are locked.

## Reveal and Update Pacing

Opening reveals must be slower than pure numeric deltas but faster than cutscenes.

1. Reveal committed action categories: 6-8s.
2. Show objective interaction/conflict summary: 10-14s.
3. Show Claim delta as banners/seals/tokens moving or lighting: 10-14s.
4. Show next-phase pressure/brief bridge: 6-9s.

The reveal must answer: `What did I choose? What did others choose? Why did Claim change? What should I watch next?`

## Onboarding and First-Match Clarity

- Phase 1 may expose a first-match micro-brief before planning, but it must fit inside the parent opening match brief budget.
- The opening must teach through visible game objects: objective icon, Claim token movement, and legal-action affordances.
- Text must be short enough for Arabic RTL and English LTR portrait layouts.
- No phase brief may require reading a paragraph during active timer pressure.
- Opening tooltips may be tap-to-expand and must not block the timer unless future UX explicitly defines a pause-free overlay.

## Anti-Runaway Opening Rules

The opening must make active decisions matter without allowing a decisive early lead.

- Phase 1 Claim swing should be capped to a small visible delta in future Claim formulas.
- Phase 2 must expose at least one contest/counter/support path against the current leader or leading team.
- Phase 3 must create an opening pivot: build future position, contest current pressure, or prepare a Rising Debate response.
- No opening outcome may mathematically lock a win path before phase 4.
- Passive/no-commit play should lose opportunity or tempo, but not instantly eliminate a player.

## FFA Requirements

- The brief must show four readable player identities/colors/icons without requiring a table.
- Reveal order must summarize all four players in a compact sweep, then emphasize the biggest Claim delta.
- The phase 2 brief must identify nearest challenger, not just leader, to reduce early dogpile confusion.
- Phase 3 must show at least one comeback/contest cue for trailing players.

## 2v2 Requirements

- The brief must show team Claim total and each teammate contribution cue.
- Planning time must support coordination through readable shared intent, not mandatory chat negotiation.
- Phase 2 must clarify whether a player is helping teammate momentum, contesting opponents, or preparing.
- Phase 3 must bridge to Rising Debate with team pressure: protect lead, split pressure, or coordinate contest.

## AUTONOMOUS_DECISION — DEC-CMS-OCP-001 Opening Council uses guided strategic ramp

- Decision made: Use a guided strategic ramp for phases 1-3: 90/75/70 second planning targets, short lock grace, 35-45 second reveal/update, localized icon-first briefs, and capped early Claim swings.
- Options compared:
  - Uniform 75s opening phases: simple, but phase 1 onboarding is too compressed for new players.
  - Long tutorial opening over 2+ minutes per phase: clear, but slows multiplayer and risks fatigue.
  - Guided strategic ramp: accepted because it teaches phase rhythm while keeping active decisions meaningful.
  - Very short 45-60s opening: rejected because it pushes reaction-speed behavior and harms Arabic/English readability.
- Why it serves the final game: It makes the first three phases understandable, strategic, and recoverable while preserving the fixed 9-phase dramatic arc.
- Potential downside: Phase 1 may feel slow to expert players.
- Why downside is acceptable: Replay context can use 75s and early-ready fast-forward can reduce wait without changing the strategic cap.
- How it will be verified later: Timer table tests, first-match QA, FFA/2v2 walkthroughs, localization layout checks, and balance simulation for opening lead caps.
- Artifact proving decision: This depth-4 node and DECISIONS.md entry DEC-CMS-OCP-001.

## Acceptance Criteria

1. Phases 1-3 have explicit brief, planning, lock grace, and reveal/update targets.
2. Phase 1 supports first-match clarity without exceeding strategic mobile pacing.
3. Opening timers never drop into reaction-speed play.
4. FFA and 2v2 opening briefs have distinct attention content but share one timing model.
5. Opening Claim gains are specified as capped/recoverable for future formula nodes.
6. Arabic/English and RTL/LTR needs are identified for future UX/localization implementation.
7. No child nodes are created and no game code is implemented.
