# Plan: Mode-Specific HUD Adaptation

## Goal
Specify a compact, mode-aware Claim HUD that supports 2v2 team progress and FFA individual standings during play.

## Data Preparation
- Receive `match_mode` from match config.
- Receive current `claim_counts` by player and team.
- Receive local player id and team id.
- Receive threshold and current leader/threat state.

## Scene Structure
- `ClaimModeHud.tscn` as `CanvasLayer` root.
- Child `Control` named `SafeAreaRoot`.
- Child `TeamHudContainer` for 2v2.
- Child `FfaHudContainer` for FFA.
- Reusable `ClaimPipRow` for threshold pips.

## Behavior
- Configure once at match start.
- Update after every claim event.
- Animate changed pips with short pulse.
- Hide inactive mode container to avoid layout confusion.
- Never block touch interaction on the play area.

## Validation
- Test 2v2 with local team leading and trailing.
- Test FFA with local player first, middle, and last.
- Test Arabic and English mode labels.
- Test notched iPhone safe area and Android status bar.

## Handoff
Future implementation must coordinate with mobile UX and core match state contracts.
