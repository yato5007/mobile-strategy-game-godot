# Clarification — Match Flow and Phase Structure

## Clarified Requirements

| Question | Clarification |
|---|---|
| Can a player win before phase 9? | No. Claim can indicate advantage, but victory is only finalized at Final Majlis Reveal after phase 9. |
| Is the game turn-based? | No. All players plan during the same Council Planning window. |
| Does this node define conflict formulas? | No. It defines phase flow and handoff boundaries; deterministic conflict resolution belongs to `simultaneous-planning-and-resolution`. |
| Does this node define exact action costs? | No. Council Focus/action constraints belong to `action-economy-and-legal-actions`. |
| Does this node define exact Claim math? | No. Claim ledger and objective state belong to `claim-objective-state-model`. |
| Why 9 phases? | It is the best default tradeoff among speed, adaptation, comeback space, and under-30-minute target. |
| Is overtime allowed? | No default overtime. Overtime risks early-goal ambiguity and long matches; tie handling belongs to final reveal/tie-break child work. |
| How does portrait readability affect phase flow? | Phase state must be representable by compact phase number, act label, timer, objective icon, Claim standings, and pressure cue. |
| How is localization handled? | Phase names, timer labels, objective text, and final reveal copy must be future string keys supporting Arabic RTL and English LTR. |

## Out of Scope

- Godot scenes, GDScript, networking, bots, simulator code, asset creation, and final UI layouts.
- Final numeric balance values beyond planning-level timing targets.
