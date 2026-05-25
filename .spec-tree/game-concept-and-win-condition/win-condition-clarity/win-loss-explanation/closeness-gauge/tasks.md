# Tasks: Closeness Gauge

- [ ] `res://ui/end_match/closeness/PlayerClaimBar.tscn` — Scene: MarginContainer (padding 4px), HBoxContainer, child nodes: player_name (Label, min_width 60), bar_container (Control size_flags_h=expand), bar_bg (ColorRect full width, 24px height, dark gray), bar_fill (ColorRect width=0, 24px height, player color), claim_count (Label, min_width 40).
- [ ] `res://ui/end_match/closeness/PlayerClaimBar.gd` — `configure(data: Dictionary, threshold: int, is_rtl: bool)`. Sets player_name text, claim_count text as "%d/%d", bar_fill color. Stores target_width = (data.claim_count / threshold) * bar_container.rect_size.x.
- [ ] `res://ui/end_match/closeness/PlayerClaimBar.gd` — `animate_fill(duration: float)` — Tween: tween bar_fill.rect_size.x to target_width over duration with TRANS_SINE. Emit `filled` signal on complete.
- [ ] `res://ui/end_match/closeness/PlayerClaimBar.gd` — RTL: if `is_rtl`, move player_name to be right child of HBoxContainer, claim_count to be left child. Use `move_child()` in ready().
- [ ] `res://ui/end_match/closeness/TeamClaimBar.tscn` — Scene: similar to PlayerClaimBar but bar_fill has two ColorRects side by side representing each team member's contribution. Sub-labels for member names below.
- [ ] `res://ui/end_match/closeness/TeamClaimBar.gd` — `configure(team_data: Dictionary, threshold: int, is_rtl: bool)`. Team data contains `members: [{player_id, player_name, color, claim_count}]`. Sets team_name, calculates total claim_count for fill, splits bar_fill into two segments proportional to each member's share.
- [ ] `res://ui/end_match/closeness/ClosenessGauge.tscn` — Scene: VBoxContainer with title_label (using tr("end_closeness_title")), and bars_container VBoxContainer for PlayerClaimBar/TeamClaimBar instances.
- [ ] `res://ui/end_match/closeness/ClosenessGauge.gd` — `populate(data: Dictionary)`. Entry point. Clears bars_container. Checks data.is_team_mode. If true, creates TeamClaimBar per team. If false, creates PlayerClaimBar per player. Sorts by claim_count descending.
- [ ] `res://ui/end_match/closeness/ClosenessGauge.gd` — `populate()` — Handles threshold marker: creates a ColorRect (2px wide, white) positioned at proportional x = threshold_position / total_width. Stretches across all bars height.
- [ ] `res://ui/end_match/closeness/ClosenessGauge.gd` — `animate_all()` — Calls animate_fill on each bar with 100ms stagger: first bar (winner) at 400ms duration, subsequent bars at 600ms. Starts after a 200ms initial delay.
- [ ] `res://ui/end_match/closeness/ClosenessGauge.gd` — Winner highlight: duplicate the winner's bar_fill ColorRect with modulate.a = 0.3 and a slightly larger width for a glow effect.
- [ ] Add localization keys: `end_closeness_title`, `end_closeness_threshold_label`.
