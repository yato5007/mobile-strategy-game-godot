# Tasks: Win Postmortem

- [ ] `res://ui/end_match/win_postmortem/ClaimCard.tscn` — Scene with MarginContainer (theme override: rounded white bg, 8px radius), VBoxContainer, Label for badge, TextureRect 32x32 for banner, Label for territory, Label for turn.
- [ ] `res://ui/end_match/win_postmortem/ClaimCard.gd` — Script with `configure(data: Dictionary, is_rtl: bool)` that populates labels, sets icon. Badge formats: 1→"1st", 2→"2nd", 3→"3rd", 4+→"4th" etc.
- [ ] `res://ui/end_match/win_postmortem/ClaimCard.gd` — Add `pressed` signal for optional future tap-to-expand. Wire via `gui_input` on the MarginContainer.
- [ ] `res://ui/end_match/win_postmortem/WinPostmortem.tscn` — ScrollContainer with horizontal = true, scroll_horizontal_enabled = true. HBoxContainer inside. Size flags: expand fill.
- [ ] `res://ui/end_match/win_postmortem/WinPostmortem.gd` — Script with `populate(claims: Array, is_rtl: bool)`. Clears HBoxContainer children, loops claims, creates ClaimCard for each, adds to HBoxContainer.
- [ ] `res://ui/end_match/win_postmortem/WinPostmortem.gd` — After populate, call `draw_connecting_line(canvas_item: Control)` that draws a horizontal line between card center-points using `draw_line()` with player color (2px width).
- [ ] `res://ui/end_match/win_postmortem/WinPostmortem.gd` — RTL handling: if `is_rtl`, set HBoxContainer alignment to END, invert card order before populating, set scroll_horizontal to scroll from right.
- [ ] `res://ui/end_match/win_postmortem/WinPostmortem.gd` — Animation: `animate_cards()` calls `Tween.tween_property()` on each card's `rect_position.x` with 100ms stagger. Cards start off-screen right (LTR) or left (RTL).
- [ ] Add localization keys: `end_claim_order_1`, `end_claim_order_2`, `end_claim_order_3`, `end_claim_order_n` — ordinal format strings.
