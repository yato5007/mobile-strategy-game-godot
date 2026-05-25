# Plan: Team Contribution Display

## Goal
Prepare implementable UI tasks for a team-first 2v2 contribution panel.

## Data Preparation
- Consume `team_results` from end-match data.
- Validate that exactly two members exist per team for 2v2.
- Compute combined team claim display from `team_claims` and `threshold`.
- Select one synergy highlight from match event history.

## Scene Structure
- `TeamContributionDisplay.tscn` as `Control` root.
- `VBoxContainer` for vertical portrait layout.
- `PanelContainer` for team header.
- Two `ContributionCard` children.
- `PanelContainer` for synergy highlight.

## Behavior
- `configure(team_result: Dictionary, local_player_id: String)` populates content.
- Local player card gets a highlight style.
- Missing synergy uses fallback localized text.
- Cards animate in together after team header, not one as “winner” over the other.

## Validation
- Test with both teammates equal claims.
- Test with one teammate zero claims.
- Test with long Arabic names.
- Test with losing team data.
- Confirm no content clipped in portrait.

## Handoff
This leaf authorizes future implementation tasks only after system contracts supply final result data.
