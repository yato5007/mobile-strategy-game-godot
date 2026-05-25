# Plan: Win Postmortem Implementation

## Phase 1 — Claim Card Component
1. Create `res://ui/end_match/win_postmortem/ClaimCard.tscn` — MarginContainer with VBoxContainer.
2. Add child nodes: `order_badge` (Label), `banner_icon` (TextureRect), `territory_name` (Label), `turn_label` (Label).
3. Create `res://ui/end_match/win_postmortem/ClaimCard.gd` with `configure(data: Dictionary)` method.
4. Add RTL-aware layout logic: if locale is Arabic, reverse child alignment.

## Phase 2 — Timeline Container
1. Create `res://ui/end_match/win_postmortem/WinPostmortem.tscn` — ScrollContainer > HBoxContainer.
2. Create `res://ui/end_match/win_postmortem/WinPostmortem.gd` with `populate(claims: Array)` method.
3. Add connecting line between cards using `draw()` on a `Control` overlay.
4. Handle RTL scroll direction on `ready()`.

## Phase 3 — Animation and Polish
1. Add card slide-in animation: cards enter from right (LTR) or left (RTL) with 100ms stagger.
2. Add connecting line draw animation: line grows as cards appear.
3. Add "flag" icon on the last card to mark victory moment.

## Integration
- WinPostmortem is instantiated by WinLossExplanation.gd when winner == local_player.
- Parent passes `player_results.claims_made` array.
- No external dependencies beyond Godot UI primitives.

## Estimated Effort
- Phase 1: 1 hour
- Phase 2: 1 hour
- Phase 3: 1.5 hours
- Integration: 0.5 hours
