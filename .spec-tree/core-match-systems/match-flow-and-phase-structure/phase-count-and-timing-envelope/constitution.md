# Constitution — Phase Count and Timing Envelope

## Node Identity

- Node: `.spec-tree/core-match-systems/match-flow-and-phase-structure/phase-count-and-timing-envelope/`
- Depth: 3
- Parent: `.spec-tree/core-match-systems/match-flow-and-phase-structure/`
- Scope: Planning-level timing envelope for the fixed 9 scheduled Majlis phases.

## Non-Negotiables

1. The default match remains exactly 9 scheduled Majlis phases.
2. No early victory is allowed; winner evaluation happens only after phase 9 during Final Majlis Reveal.
3. The whole default multiplayer match must remain under 30 minutes including final reveal.
4. All players plan simultaneously; timing must not introduce turn waiting.
5. FFA and 2v2 use the same phase count, with mode-specific attention and pacing cues.
6. Mobile interruption tolerance is required without creating exploitable endless waits.
7. This node does not implement Godot timers, networking, UI, bots, or tests.

## Quality Principles

- Pacing must support strategic thinking, not reaction-speed play.
- Phase durations must create a readable beginning/middle/end arc.
- Timers must be understandable in portrait mobile UI and localizable later.
- Fast bot/local validation may shorten waits, but human multiplayer assumptions remain capped.
- Accessibility and interruption allowances must protect fairness for all players.

## Authority and Boundaries

- This node refines DEC-CMS-MFPS-001 but does not change the selected 9-phase structure.
- State transitions belong to sibling `phase-state-machine-and-handoffs`.
- Conflict resolution and Claim formulas belong to resolver and Claim-state branches.
- Final reveal presentation belongs to sibling `final-reveal-and-mode-completion` and presentation/UX branches.
