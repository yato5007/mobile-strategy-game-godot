# Constitution — Match Flow and Phase Structure

## Node Scope

This depth-2 node defines the planning-level fixed match flow for `Banner of the Majlis` under parent `.spec-tree/core-match-systems/` and decisions DEC-CMS-001/002/003.

## Non-Negotiables

- Godot game implementation is not authorized in this node.
- The match is fixed-length and must not end early because a player reaches a target.
- All players plan simultaneously; no turn waiting and no reaction-speed advantage.
- The phase loop must hand off to deterministic reveal/resolve rules without defining final formulas here.
- Claim progress must update visibly after every phase.
- Active-play pressure must shift between phases to prevent passive hiding and repeated solved plans.
- The final reveal determines victory after the scheduled last phase.
- The pacing target is under 30 minutes for 4 human players in FFA and 2v2.
- Phase language and display concepts must be future-localizable for Arabic RTL and English LTR.
- Portrait readability is a rule constraint, not a late UI polish concern.

## Parent Decisions Inherited

- DEC-CMS-001: fixed simultaneous Majlis phase loop.
- DEC-CMS-002: mostly public information with hidden committed plans until reveal.
- DEC-CMS-003: compact Council Focus action economy.
- DEC-GCWC-001: visible fixed-length Claim win condition.
- DEC-GCWC-003: active-play pressure and anti-dominance safeguards.

## Success Standard

This node is successful if a future implementer can build a phase state machine, timers, match completion trigger, phase labels, and validation scenarios from child-node work without inventing a new match structure.
