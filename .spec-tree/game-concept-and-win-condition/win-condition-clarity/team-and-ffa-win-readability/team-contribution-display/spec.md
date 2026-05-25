# Specification: Team Contribution Display

## Overview
This leaf specifies the 2v2 result panel that shows how each teammate contributed while keeping the team victory or defeat as the official result.

## Layout
1. Root scene is a `Control` panel inside the end-match `ScrollContainer`.
2. Top section: team header with team crest/token, localized team result label, and combined claim count.
3. Middle section: two teammate contribution cards stacked vertically.
4. Bottom section: synergy highlight card with a short positive sentence.
5. The local player's card has a subtle outline or glow.

## Contribution Card Fields
- Player avatar/token.
- Player display name.
- Personal claims: `2 claims` or Arabic localized equivalent.
- Key moment: final claim, early momentum claim, defense-assisted claim, or comeback claim.
- Role hint: objective focus, support, disruption, or comeback support.

## Synergy Highlight
- Uses match history to select one team moment.
- Examples: simultaneous pressure, teammate protected a claim, one player forced rival response while other claimed.
- If no synergy event exists, show a generic localized line: “Your team combined pressure to reach the banner threshold.”

## Visual Style
- Team header uses shared team color plus crest.
- Contribution cards use player color accents but remain inside team frame.
- Avoid table grid lines; use cards, icons, and banner motifs.

## Data Contract
- Input: `team_result: Dictionary`.
- Required keys: `team_id`, `team_name_key`, `team_claims`, `threshold`, `members`.
- Member keys: `player_id`, `display_name`, `claims`, `key_moment`, `role_hint`, `avatar_id`.
