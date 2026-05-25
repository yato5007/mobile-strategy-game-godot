# Specification: Win Postmortem Timeline

## Data Structure
The win postmortem receives an array of claim records from the match manager:
```gdscript
var claims := [
    {
        "order": 1,
        "turn": 3,
        "territory_id": "banner_alpha",
        "territory_name_key": "territory_alpha"
    },
    # ... up to threshold count
]
```

## Visual Layout
The timeline is a horizontal `ScrollContainer` containing an `HBoxContainer` of `ClaimCard` instances.

### ClaimCard Node Structure
```
ClaimCard (MarginContainer)
  +-- VBoxContainer
       +-- Label (order_badge) — "1st", "2nd", "3rd" — centered, bold
       +-- TextureRect (banner_icon) — 32x32px banner icon
       +-- Label (territory_name) — localized territory name, bold
       +-- Label (turn_label) — formatted as "Turn 3"
```
- Card width: 120px fixed
- Card height: 80px
- Background: rounded rect with player accent color
- Badge: circle overlay at top-left (24x24px) with order number

### Timeline Formatting
- Cards spaced 8px apart
- Connecting line drawn between cards (thin 2px line in player color)
- First card has a "start" icon, last card has a "flag/checkmark" icon
- Scroll inertia enabled on `ScrollContainer`

## RTL Behavior
- In Arabic locale, the HBoxContainer child order is reversed.
- The scroll bar appears on the left.
- Cards lay out right-to-left.
- The connecting line still flows logically from right (first claim) to left (last claim).

## Empty State
If the match history is empty (should not happen for a win), display a single card with "Victory achieved!" and no timeline.

## Loading State
No loading state — data is passed synchronously from match end event. Cards instantiate immediately.
