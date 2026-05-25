# Plan: Closeness Gauge Implementation

## Phase 1 — Player Claim Bar Component
1. Create `res://ui/end_match/closeness/PlayerClaimBar.tscn` — MarginContainer with HBoxContainer.
2. Add nodes: player_name (Label), bar_container (Control), bar_bg (ColorRect), bar_fill (ColorRect), claim_count (Label).
3. Create `res://ui/end_match/closeness/PlayerClaimBar.gd` with:
   - `configure(player_data: Dictionary, threshold: int, is_rtl: bool)`
   - `animate_fill(duration: float)` — tweens bar_fill rect_size.x from 0 to target.
4. Add RTL-aware label positioning.

## Phase 2 — Team Bar Variant (2v2)
1. Create `res://ui/end_match/closeness/TeamClaimBar.tscn` — similar to PlayerClaimBar but with segmented fill.
2. Team bar splits the fill proportionally between two team members.
3. Sub-labels show each team member's name and individual count below the team bar.

## Phase 3 — Gauge Container
1. Create `res://ui/end_match/closeness/ClosenessGauge.tscn` — VBoxContainer with title label and bar list.
2. Create `res://ui/end_match/closeness/ClosenessGauge.gd` with:
   - `populate(data: Dictionary)` — creates bars based on mode (FFA/1v1/2v2).
   - `animate_all()` — calls animate_fill on each bar with stagger.
   - Threshold marker drawn as a ColorRect positioned across all bars.
3. Sort bars by claim_count descending, winner first.
4. Winner bar gets glow effect (duplicate ColorRect with modulate alpha).

## Phase 4 — Integration
1. Wire ClosenessGauge into WinLossExplanation — used in both win and loss modes.
2. Pass closeness_data from match manager.
3. Test with mock data for all modes.

## Estimated Effort
- Phase 1: 1.5 hours
- Phase 2: 1 hour
- Phase 3: 1.5 hours
- Phase 4: 0.5 hours
