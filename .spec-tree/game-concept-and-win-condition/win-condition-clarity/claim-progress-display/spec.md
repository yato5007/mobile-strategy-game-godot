# Specification — Claim Progress Display

## Purpose
Define how players understand Claim progress during play.

## Required Display Functions
- Show who is leading.
- Show how close each player/team is.
- Show what public objectives can change the lead.
- Show when the leader is threatened.
- Show when a trailing player has a realistic comeback path.

## Accepted Display Direction
Use a **Banner/Seal progress display**: each player/team has a visible banner with seals or illuminated marks earned from objectives. Numeric detail may be present as secondary support.

## Depth-4 Children
1. `leader-threat-indicator` — concrete rules for showing leader danger and closeness.
2. `comeback-path-cue` — concrete rules for showing a trailing player's possible route back.

Both must be full Spec Kit nodes.
