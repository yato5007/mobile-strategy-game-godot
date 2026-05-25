# Specification: Mode-Specific HUD Adaptation

## Overview
This leaf specifies how the in-match HUD changes between 2v2 and FFA. It prevents players from reaching the end screen confused about whether claims were team-owned or individual-owned.

## Shared HUD Requirements
1. Root is a `CanvasLayer` with a portrait-safe `Control` container.
2. HUD appears near the top or side-safe area without blocking interaction.
3. It shows claim threshold progress and current leader/threat state.
4. It updates from match state events after claim changes.
5. It supports Arabic RTL and English LTR.

## 2v2 HUD
- Shows two team group cards: local team and opponent team.
- Local team card contains teammate mini portraits and combined claim count.
- Opponent team card contains paired opponent indicators and combined claim count.
- Teammate contribution may be shown as small pips beneath the team total.
- Opponent pair highlighting makes it clear that both opponents share one win path.

## FFA HUD
- Shows four compact player markers ordered by current standing.
- Each marker includes color/token, short name or icon, and claim pips.
- Local player marker has persistent outline.
- Current leader marker uses threat pulse from existing leader readability rules.

## Behavior
- `configure_for_mode(match_mode, data)` chooses team or FFA layout.
- `update_claims(data)` refreshes counts without recreating the whole HUD.
- Mode cannot change mid-match except in debug/testing.
