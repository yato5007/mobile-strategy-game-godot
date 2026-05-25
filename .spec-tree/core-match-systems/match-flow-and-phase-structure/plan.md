# Plan — Match Flow and Phase Structure

## Before Large Task Statement

- Priority level: P1 Core Fun and Gameplay.
- Why it matters: Match flow determines pacing, comeback windows, active-play pressure, and whether simultaneous multiplayer feels fair and understandable.
- If ignored: Sibling systems may invent incompatible timing, allow early wins, create turn waiting, or exceed the 30-minute target.
- Appropriate effort: Medium-high planning effort; no implementation.
- Artifact proving completion: Full node artifacts plus updates to SPEC_TREE, status, requirements trace, decisions, contracts, and progress files.

## Execution Plan

1. Anchor flow to DEC-CMS-001/002/003 and DEC-GCWC-001/003.
2. Compare phase count/timing options and choose default.
3. Define per-phase state responsibilities and handoff boundaries.
4. Specify fixed-length completion and final reveal behavior.
5. Propose meaningful depth-3 children that can reach depth 4.
6. Update cross-project tracking and contracts.

## Phase Count Options Compared

| Option | Benefit | Downside | Fit | Recommendation |
|---|---|---|---|---|
| 6 phases | Short, easy to teach | Too little time for adaptation, comeback, objective rotation, and 4p politics | Partial | Reject as default; may be later blitz variant only. |
| 9 phases | Three-act arc, enough adaptation, manageable duration | Requires varied pressure shifts to avoid repetition | Strong | Adopt as default. |
| 12 phases | More strategic runway | Mobile fatigue, slower multiplayer, risks >30 min | Weak | Reject for default. |

## Phase Structure Options Compared

| Option | Benefit | Downside | Fit | Recommendation |
|---|---|---|---|---|
| One long planning block then final resolution | Simple to implement | Opaque feedback, weak comeback clarity, low engagement | Poor | Reject. |
| Micro-turns inside each phase | Granular decisions | Reintroduces waiting and turn order | Poor | Reject. |
| Repeating simultaneous phase loop with brief/update/pressure shift | Clear rhythm, supports feedback and active adaptation | Requires clean state/event contracts | Strong | Adopt. |

## Depth-3 Child Plan

1. `phase-count-and-timing-envelope` — validates 9-phase/three-act pacing, timing caps, no overtime, and under-30-minute scenarios.
2. `phase-state-machine-and-handoffs` — defines phase states, entry/exit criteria, commit-lock boundary, resolver handoff, Claim update handoff, and pressure shift handoff.
3. `final-reveal-and-mode-completion` — defines final reveal trigger, no-early-end rule, tie/tiebreak planning boundary, FFA/2v2 completion display, and localizable end-of-match explanation needs.

## No-Implementation Guard

This plan authorizes only planning artifacts and tracking updates. It does not authorize Godot project creation, scripts, scenes, tests, simulator code, assets, or networking.
