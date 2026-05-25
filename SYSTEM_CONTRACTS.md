# SYSTEM_CONTRACTS.md

Contracts are initially high-level because game systems must be selected by Spec Kit, not guessed during bootstrap.

## Contract Change Rule

Any branch that changes a system contract must update this file and request `integration-architect` review.

## Planned Major Contracts

| System | Inputs | Outputs | State Owner | Must Not Control | Status |
|---|---|---|---|---|---|
| Game Rules | Player plans/actions, match config | Resolved match state, win/loss state | Future core game state | Rendering, platform export | Root linked; refine in `game-concept-and-win-condition` and `core-match-systems` |
| Mock Multiplayer | Local player/bot commands | Synchronized local command stream | Multiplayer adapter | Game rules decisions | Root linked; refine in `multiplayer-and-bots` |
| Bot AI | Visible match state, difficulty, style | Legal player actions | Bot system | Hidden info unless specified | Root linked; refine in `multiplayer-and-bots` |
| Balance Simulator | Bot strategies, match seeds | Metrics and imbalance findings | Simulator | Production UI | Root linked; refine in `balance-and-validation` |
| Localization | String keys, locale, direction | Player-facing text and layout direction | Localization system | Game rules | Root linked; refine in `mobile-ux-localization-accessibility` |
| Presentation/Assets | Game state events, UI states | Visual/audio feedback | Presentation layer | Rule resolution | Root linked; refine in `presentation-art-audio-motion` |
| Build/Export | Godot project, export presets | Android/iOS deliverables/docs | Build pipeline | Game design | Root linked; refine in `godot-architecture-and-delivery` |

## Core Match Systems Planning Contract

| System | Inputs | Outputs | State Owner | Must Not Control | Status |
|---|---|---|---|---|---|
| Match Phase Loop | Match config, phase index, player/bot commitments | Phase transitions, planning/reveal/final states | Future core match state | Rendering, networking transport, bot intent | Depth-1 linked; refine in `core-match-systems/match-flow-and-phase-structure` |
| Simultaneous Resolver | Locked legal actions, public objective state, resources/constraints | Deterministic action outcomes, conflicts, tie-breaks, explanation events | Future core match resolver | UI animation timing, online transport | Depth-1 linked; refine in `core-match-systems/simultaneous-planning-and-resolution` |
| Action Economy | Player state, Council Focus, Influence/position constraints | Legal action set, spend/constraint results | Future core rules state | Claim presentation, bot personality | Depth-1 linked; refine in `core-match-systems/action-economy-and-legal-actions` |
| Claim Objective State | Objective state, resolved actions, phase pressure | Claim ledger updates, public state events, final reveal data | Future core objective/Claim state | Art/audio, localization, build/export | Depth-1 linked; refine in `core-match-systems/claim-objective-state-model` |

## Root Cross-Branch Interfaces

Detailed notes live in `.spec-tree/root/integration-notes.md`. No final contract is stable until the relevant depth-1 branch completes full Spec Kit.
