# Specification — Match Flow and Phase Structure

## Product Question

What concrete match flow lets `Banner of the Majlis` deliver a fixed-length, simultaneous, readable, active, under-30-minute 4-player strategy match in FFA and 2v2?

## Recommended Match Envelope

The default match uses **9 scheduled Majlis Phases**, grouped into three 3-phase acts:

1. **Opening Council** — phases 1-3 teach objectives, establish first Claim pressure, and avoid irreversible early leads.
2. **Rising Debate** — phases 4-6 intensify objective pressure, reveal patterns, and create earned comeback opportunities.
3. **Final Petition** — phases 7-9 increase leader exposure, make final counterplay visible, and end with the final Majlis reveal.

Each phase follows the same player-readable loop:

1. **Phase Brief** — public objective, active pressure, phase number, remaining phases, and mode-specific team/FFA status are shown.
2. **Council Planning** — all players/bots choose legal plans simultaneously using future Council Focus constraints.
3. **Commit Lock** — submitted plans become locked; late changes are disallowed after the lock boundary.
4. **Reveal Handoff** — hidden commitments are passed to the sibling resolution node for deterministic reveal/resolve.
5. **Claim Update** — public Claim deltas, leader threat, team/FFA standing changes, and explanation events are displayed.
6. **Pressure Shift** — next-phase objective pressure, leader exposure, anti-passive warnings, or surge opportunities update publicly.

After phase 9, the match enters **Final Majlis Reveal**. No scoring threshold can end the match before this point.

## Timing Targets

| Beat | Default Target | Cap/Notes |
|---|---:|---|
| Opening briefing before phase 1 | 30-60 sec | Can be skipped in replay/test modes after tutorialization. |
| Phase brief | 8-12 sec | Must be icon-first and localizable. |
| Council planning | 75 sec default | Human multiplayer soft cap; bots can auto-ready. |
| Commit lock grace | 3-5 sec | Prevents race-condition edits, not a new decision window. |
| Reveal/resolve feedback | 20-30 sec | Resolver details belong to sibling node. |
| Claim update + pressure shift | 10-20 sec | May combine when UI clarity allows. |
| Final reveal | 45-90 sec | Must explain winner, close margins, and turning points. |

Default full match target: **17-22 minutes**. Hard design ceiling: **under 30 minutes** including final reveal.

## Supported Modes

- **4-player FFA:** all four players plan simultaneously; standings show all Claim positions and leader threat.
- **2v2:** all four players still plan simultaneously; team Claim status and teammate contribution visibility are required later, without hidden score funneling.
- **Bot/local test:** bots may auto-commit quickly, but validation must preserve human-readable phase timing assumptions.

## AUTONOMOUS_DECISION — DEC-CMS-MFPS-001 Nine-Phase Three-Act Match

- Decision made: Use a 9-phase fixed match grouped into Opening Council, Rising Debate, and Final Petition acts.
- Options compared:
  - 6 phases: faster and simpler, but too compressed for comeback windows, objective variety, and 4-player adaptation.
  - 9 phases: accepted because it supports strategic arc, clear act pacing, comeback opportunities, and under-30-minute timing.
  - 12 phases: offers more depth, but risks mobile fatigue and longer matches near or above 30 minutes.
- Why it serves the final game: The three-act structure creates a visible beginning/middle/end, supports the Majlis narrative, and gives players enough phases to adapt without creating a long board-game session.
- Potential downside: Nine phases may still feel repetitive if objectives do not vary.
- Why downside is acceptable: Pressure Shift and future objective-state nodes must rotate pressure, expose leaders, and discourage repetition.
- How it will be verified later: Balance and QA must measure match duration, phase perceived variety, comeback frequency, passive win rate, and final-phase uncertainty.
- Artifact proving decision: This node's `spec.md`, `plan.md`, `tasks.md`, and DECISIONS.md entry.

## Acceptance Criteria

- Fixed 9-phase default is documented with no early victory trigger.
- Every phase has clear entry/exit responsibilities.
- Simultaneous planning and commit lock are present, with deterministic resolve handed to sibling branch.
- Claim update and Pressure Shift are mandatory per phase.
- Timing budget plausibly remains below 30 minutes for FFA and 2v2.
- Future Arabic/English labels are planned as localizable phase keys, not hardcoded strings.
- Meaningful depth-3 children are proposed and each can later reach depth 4.
