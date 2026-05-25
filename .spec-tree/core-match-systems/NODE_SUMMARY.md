# NODE_SUMMARY.md — Core Match Systems

## Purpose

Define the planning-level core match systems for `Banner of the Majlis`: fixed-length phases, simultaneous planning, legal action categories, Claim resolution direction, public information model, pacing under 30 minutes, and required child branches.

## Parent Link

Parent: `.spec-tree/root/`

## Decisions Made

- CMS-001: Use a fixed simultaneous Majlis phase loop with planning, commit, reveal/resolve, Claim update, pressure shift, and final reveal.
- CMS-002: Use mostly public information with hidden committed plans until reveal.
- CMS-003: Use a small Council Focus action economy with minimal Influence constraints rather than heavy resource management.
- Require four depth-2 children: match flow, simultaneous resolution, action economy, and Claim/objective state model.

## Alternatives Rejected

- Turn-by-turn rounds: rejected because they create waiting.
- Continuous real-time action: rejected because it risks reaction-speed gameplay.
- Fully hidden strategy layer: rejected because it weakens clarity and explanation.
- Multi-resource economy: rejected because it risks spreadsheet/admin feel.
- No resource constraints: rejected because it enables obvious action spam.

## Dependencies

- Root Spec Kit.
- DEC-GCWC-001 fixed-length visible Claim win condition.
- DEC-GCWC-002 Arabic-first Majlis game-object presentation.
- DEC-GCWC-003 visible active-play pressure.
- Future sibling branches for multiplayer/bots, balance, presentation, UX/localization, and Godot architecture.

## Integration Risks

- Simultaneous conflicts may be unclear without deterministic explanation events.
- Public information may clutter portrait UI if not prioritized.
- Council Focus may be too shallow or too restrictive until tuned.
- 2v2 support actions need caps to avoid hidden score funneling.

## Implementation Status

Planning only. No Godot code, scenes, assets, networking, bots, or simulator implementation created.

## Tests

- Checklist: PASS for depth-1 planning scope.
- QA: PASS for depth-1 planning scope.
- Review: PASS for depth-1 planning scope.

## Next Step

Create full Spec Kit for `.spec-tree/core-match-systems/match-flow-and-phase-structure/` and continue all children to depth 4.
