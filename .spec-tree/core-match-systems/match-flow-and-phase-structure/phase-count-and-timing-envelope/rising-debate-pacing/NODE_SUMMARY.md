# NODE_SUMMARY.md — Rising Debate Pacing

## Purpose

Specify phases 4-6 of the 9-phase Majlis match so the middle act creates readable pressure, strategy-shift opportunities, FFA leader threat clarity, and 2v2 teammate awareness while preserving strategic simultaneous mobile pacing.

## Parent Link

Parent: `.spec-tree/core-match-systems/match-flow-and-phase-structure/phase-count-and-timing-envelope/`

## Decisions Made

- DEC-CMS-RDP-001: Use a compressed Rising Debate pressure cadence with 65/60/60 second planning targets, 4-5s lock grace, 40-50s reveal/update, visible leader-threat and strategy-shift cues, and mode-specific FFA/2v2 awareness outputs.
- Keep one timing model for FFA and 2v2, with different cue content.
- Use game-object outputs (threat ring, lanterns, shift tile, comeback lane, FFA fan, teammate braid) instead of table-only pressure displays.

## Alternatives Rejected

- Opening-like 70-75s timers: too slow and weak for mid-match tension.
- 40-50s short timers: too reaction-speed and weak for accessibility/localization.
- Dynamic timers by Claim gap: too complex and potentially unfair for multiplayer synchronization.

## Dependencies

- Parent timing envelope DEC-CMS-PCTE-001.
- Opening pacing leaf DEC-CMS-OCP-001.
- Future phase state machine, Claim objective state, simultaneous resolver, action economy, multiplayer/bots, balance validation, UX/localization, and presentation nodes.

## Integration Risks

- Cue overload on portrait HUD.
- FFA dogpile if leader threat lacks challenger context.
- 2v2 awareness could become chat-dependent if not kept visual.
- Reveal/update animations could exceed timing budgets.

## Implementation Status

Planning only. No Godot code, scenes, assets, tests, or builds created.

## Tests

- Checklist: PASS for planning scope.
- QA: PASS for planning scope.
- Review: PASS for planning scope.
- Future validation: timing config checks, FFA/2v2 walkthroughs, strategy-shift simulator metrics, leader volatility metrics, localization portrait fit tests.

## Next Step

Execute the next depth-4 leaf: `.spec-tree/core-match-systems/match-flow-and-phase-structure/phase-count-and-timing-envelope/final-petition-pacing/`.
