# SYSTEM_CONTRACTS.md

Contracts are initially high-level because game systems must be selected by Spec Kit, not guessed during bootstrap.

## Contract Change Rule

Any branch that changes a system contract must update this file and request `integration-architect` review.

## Planned Major Contracts

| System | Inputs | Outputs | State Owner | Must Not Control | Status |
|---|---|---|---|---|---|
| Game Rules | Player plans/actions, match config | Resolved match state, win/loss state | Future core game state | Rendering, platform export | Pending Spec Kit |
| Mock Multiplayer | Local player/bot commands | Synchronized local command stream | Multiplayer adapter | Game rules decisions | Pending Spec Kit |
| Bot AI | Visible match state, difficulty, style | Legal player actions | Bot system | Hidden info unless specified | Pending Spec Kit |
| Balance Simulator | Bot strategies, match seeds | Metrics and imbalance findings | Simulator | Production UI | Pending Spec Kit |
| Localization | String keys, locale, direction | Player-facing text and layout direction | Localization system | Game rules | Pending Spec Kit |
| Presentation/Assets | Game state events, UI states | Visual/audio feedback | Presentation layer | Rule resolution | Pending Spec Kit |
| Build/Export | Godot project, export presets | Android/iOS deliverables/docs | Build pipeline | Game design | Pending Spec Kit |
