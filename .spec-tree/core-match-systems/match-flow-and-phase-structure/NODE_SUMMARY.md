# NODE_SUMMARY.md — Match Flow and Phase Structure

## Purpose

Define the concrete planning-level match flow for `Banner of the Majlis`: a fixed 9-phase simultaneous match with commit lock, resolver handoff, visible Claim updates, active pressure shifts, final reveal, and under-30-minute pacing.

## Parent Link

Parent: `.spec-tree/core-match-systems/`

## Decisions Made

- DEC-CMS-MFPS-001: Adopt a 9-phase, three-act default match structure: Opening Council, Rising Debate, Final Petition.
- DEC-CMS-PCTE-001: Depth-3 child adopts variable capped timing envelope targeting 18-23 minutes with hard under-30-minute validation.
- Require no early victory; winner is determined only after phase 9 final reveal.
- Require every phase to include Phase Brief, Council Planning, Commit Lock, Reveal Handoff, Claim Update, and Pressure Shift.

## Alternatives Rejected

- 6-phase default: too compressed for comeback and adaptation.
- 12-phase default: too long for mobile under-30-minute target.
- One long planning block: poor feedback and weak engagement.
- Micro-turns: reintroduce waiting and turn-order problems.
- Default overtime: risks long matches and unclear fixed-length contract.

## Dependencies

- Parent `.spec-tree/core-match-systems/` and DEC-CMS-001/002/003.
- Sibling future nodes: simultaneous planning/resolution, action economy/legal actions, Claim objective state model.
- Future branches: multiplayer/bots, balance/validation, presentation, UX/localization, Godot architecture.

## Integration Risks

- Nine phases may feel repetitive if objective/pressure nodes do not create variety.
- Final reveal tie handling must remain public and explainable.
- Multiplayer lock boundaries must match future networking behavior.
- Portrait HUD may become cluttered if phase data is not prioritized.

## Implementation Status

Planning only. No game code, Godot scenes, assets, networking, bots, simulator, or runtime tests created.

## Tests

- Checklist: PASS for depth-2 planning scope.
- QA: PASS for depth-2 planning scope.
- Review: PASS for depth-2 planning scope.

## Next Step

Create full Spec Kit for first depth-4 leaf: `.spec-tree/core-match-systems/match-flow-and-phase-structure/phase-count-and-timing-envelope/opening-council-pacing/`, then complete the remaining timing envelope depth-4 leaves.
