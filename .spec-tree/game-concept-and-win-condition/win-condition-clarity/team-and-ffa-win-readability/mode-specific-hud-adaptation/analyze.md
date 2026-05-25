# Analysis: Mode-Specific HUD Adaptation

## During-Match Readability
Players make better strategic decisions when the HUD mirrors the actual victory structure. In 2v2, a personal-only HUD could make a player chase individual claims even when team positioning matters. In FFA, a team-like grouped HUD would hide direct rivalry and rank tension.

## Portrait Mobile Constraints
- The HUD must be compact and safe-area aware.
- A top band is readable but must not cover important board elements.
- Four FFA markers should use pips or short labels rather than long text.
- Team cards can be slightly larger because there are only two teams.
- Collapsible details may be used later, but core claim counts stay visible.

## Arabic RTL Considerations
- Mode labels and player/team names align right in Arabic.
- Claim pips can fill in a consistent gameplay direction, but labels must remain RTL.
- FFA ranking can be top-to-bottom to avoid horizontal RTL ambiguity.
- Team cards can place local team first in reading order; in Arabic that may mean right/top depending on final layout.
- Avoid unexplained Latin abbreviation “FFA”; Arabic should use a localized “كل لاعب لنفسه” style key.
- Short Arabic labels must be tested because literal translations may be longer than English.

## Game Feel Risks
- HUD clutter risk: too much score detail can make the game feel like an admin panel.
- Mitigation: use pips, tokens, compact cards, and animated claim pulses.
- Misread risk: players confuse personal and team claims.
- Mitigation: team mode shows combined total in a grouped team card.

## Integration Risks
- Requires safe-area rules from mobile UX branch.
- Requires leader threat visuals from claim progress branch.
- Requires event-driven updates from core match systems.
