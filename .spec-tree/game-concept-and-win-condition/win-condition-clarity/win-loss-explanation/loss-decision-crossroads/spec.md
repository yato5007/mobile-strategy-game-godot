# Specification: Loss Decision Crossroads

## Data Input
The loss crossroads system receives:
```gdscript
var match_history := {
    "player_id": int,
    "player_claims": [
        {"turn": int, "territory_id": String, "territory_name_key": String}
    ],
    "all_claims": [
        {"player_id": int, "turn": int, "territory_id": String}
    ],
    "available_territories_per_turn": [
        # Array of arrays: which territories were available to claim each turn
        {"turn": 1, "available": ["banner_a", "banner_b", "banner_c"]},
        # ...
    ],
    "threshold": int
}
```

## Analysis Algorithm (decision_analyzer.gd)
1. For each turn the player did NOT claim a banner, record which territories were available.
2. If the player could have claimed a banner but chose a different action, mark it as a potential turning point.
3. Filter to only "high impact" turns: claims the player missed that were later claimed by opponents (direct impact on opponent's progress) OR turns where claiming would have put the player significantly closer to threshold.
4. Sort by impact score (high to low), take top 3.
5. If fewer than 1 high-impact turn found, return empty array (consolation state).

## Decision Card Visual Layout
```
DecisionCard (MarginContainer, 12px padding)
  +-- VBoxContainer
       +-- HBoxContainer
       |    +-- TextureRect (hourglass icon 24x24)
       |    +-- Label (turn_label) — "Turn 5"
       +-- Label (description) — "Banner Al-Midan was available."
       +-- Label (hypothetical) — "Claiming it would have put you at 2/3 banners."
       +-- HBoxContainer
            +-- Button ("Show Board State" — future, disabled in v1)
```

Card properties:
- Full width of parent (match_scroll_container width - 24px margins)
- Background: subtle warm tone (not punishing red — use amber/gold)
- Description text: 14px regular weight
- Hypothetical text: 12px italic, secondary text color
- Turn label: 16px bold with hourglass icon

## RTL Behavior
- Card layout auto-flips: hourglass icon on right, turn label on right
- Description and hypothetical text right-aligned
- Arabic text uses appropriate conditional phrasing

## Consolation State
If no high-impact turning points found:
- Show a single card with: "The match was well-played. Your opponent's path was just a step ahead."
- This avoids the frustration of "no feedback" while being honest about the analysis limits.

## 2v2 Mode
- Turning points are identified at the team level
- Each card shows which team member's decision is being analyzed
- Color-coded by team member
