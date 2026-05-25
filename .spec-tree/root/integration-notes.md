# Root Integration Notes

## Integration Position

Root defines system boundaries but does not finalize contracts. Future branches must refine `SYSTEM_CONTRACTS.md`.

## Required Cross-Branch Interfaces

| Interface | Producer Branch | Consumer Branches |
|---|---|---|
| Strategic concept and win condition | game-concept-and-win-condition | all branches |
| Match state model | core-match-systems | multiplayer-and-bots, balance-and-validation, presentation, UX, architecture |
| Command/action model | core-match-systems | multiplayer-and-bots, bots, balance simulator |
| Feedback event model | core-match-systems + presentation | presentation, UX, QA |
| Localization keys/direction | mobile-ux-localization-accessibility | presentation, Godot architecture |
| Asset requirements | presentation-art-audio-motion | Godot architecture, build/delivery |
| Test/balance metrics | balance-and-validation | QA, reviewer, handoff |
| Export/build constraints | godot-architecture-and-delivery | all implementation branches |

## Integration Risks

- Gameplay concept chosen without presentation feasibility.
- Presentation assets designed without match-state events.
- Bots designed before legal action model exists.
- Balance simulator built on incomplete rules.
- Localization added after UI layout decisions.
- Android/iOS export considered too late.

## Integration Rule

Any branch changing inputs/outputs/state ownership must update `SYSTEM_CONTRACTS.md` and request `integration-architect` review.
