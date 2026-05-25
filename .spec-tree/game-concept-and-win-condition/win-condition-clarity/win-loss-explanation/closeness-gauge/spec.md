# Specification: Closeness Gauge

## Data Structure
```gdscript
var closeness_data := {
    "threshold": 3,
    "players": [
        {
            "player_id": 1,
            "player_name": "Player 1",
            "color": Color(0.9, 0.2, 0.2),
            "claim_count": 3,
            "is_winner": true,
            "is_local": true
        },
        # ... more players
    ],
    "is_team_mode": false,
    "teams": []  # populated only in 2v2 mode
}
```

## Visual Layout

### Section Container
```
ClosenessGauge (VBoxContainer)
  +-- Label (section_title) — "Final Standings" using tr("end_closeness_title")
  +-- PlayerClaimBar x N (one per player/team)
```

### PlayerClaimBar Layout
```
PlayerClaimBar (MarginContainer, padding 4px vertical)
  +-- HBoxContainer
       +-- Label (player_name, min_width 60px) — player name, 12px font
       +-- Control (bar_container, size_flags_h=expand)
       |    +-- ColorRect (bar_fill) — player color, width animated
       |    +-- ColorRect (bar_bg) — dark gray background, full width
       +-- Label (claim_count) — "3/5", 12px bold
```

### Bar Dimensions
- bar_bg: Full width of bar_container, height 24px, dark gray (#2a2a2a), rounded corners
- bar_fill: Percentage width = claim_count / threshold, height 24px, player color, rounded corners
- Threshold marker: single ColorRect line at threshold position, white, 2px width, above bars
- Player name: min 60px width, right-aligned in RTL mode
- Claim count: right of bar, min 40px width, monospace numbers

## FFA Mode
- 4 bars, one per player
- Winner's bar highlighted with a subtle glow or crown icon
- Bars sorted by claim_count descending (winner first)

## 2v2 Mode
- 2 team bars, each showing team total
- Inside each team bar: split to show individual contributions (segmented bar)
- Team names shown instead of player names
- Player names shown as sub-labels beneath team bar

## 1v1 Mode
- 2 bars only
- Winner and loser clearly labeled

## Animation
- On screen appear: bars fill from 0 to final width over 600ms
- Tween uses `TRANS_SINE` for natural ease-out
- Winner's bar animates slightly faster (400ms) to emphasize victory moment
- Threshold marker draws in simultaneously

## RTL Behavior
- Bars still fill left-to-right (progress direction is universal)
- Player name label positioned to the right of the bar in RTL mode (instead of left)
- Claim count label positioned to the left of the bar in RTL mode
- Section title right-aligned in RTL
- Threshold marker still at the correct proportional position (unaffected by RTL)
