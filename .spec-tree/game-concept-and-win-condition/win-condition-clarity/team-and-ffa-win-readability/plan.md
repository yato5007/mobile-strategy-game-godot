# Plan: Team and FFA Win Readability

## Objective
Create a mode-aware readability specification that future Godot UI tasks can implement without ambiguity.

## Step 1 — Define Shared Result Data
- Extend end-match result data with `match_mode`.
- Require `team_results` for 2v2.
- Require ordered `player_results` for FFA.
- Require local player id for row highlighting.

## Step 2 — Specify 2v2 Contribution Display
- Make team outcome primary.
- Show two teammate contribution rows inside a team group card.
- Include claim count, key moment, and synergy highlight.
- Avoid blame framing on losing team.

## Step 3 — Specify FFA Standings Board
- Rank all four players.
- Preserve claim counts and claim history summaries.
- Highlight local player and winner.
- Support tie labels without inventing tie-break rules.

## Step 4 — Specify During-Match HUD Adaptation
- Team mode: team group progress and opponent pair highlighting.
- FFA mode: four-player compact ranked progress.
- Keep portrait readability as the constraint.

## Step 5 — Validation
- Checklist tests for first-glance winner identification.
- RTL review for Arabic layout order.
- Reviewer confirms no spreadsheet-like final screen.

## Depth-4 Children
1. `team-contribution-display`.
2. `ffa-final-standings-board`.
3. `mode-specific-hud-adaptation`.
