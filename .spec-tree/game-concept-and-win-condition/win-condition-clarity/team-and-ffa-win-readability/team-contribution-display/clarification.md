# Clarification: Team Contribution Display

## What counts as contribution?
Contribution includes direct claims and readable support moments. The first implementation may only have claim counts and key claim moments, but the layout reserves one field for support/synergy.

## Does the lower-claim teammate look worse?
No. The display must avoid ranking teammates. Cards should preserve match seating order or player order, not “best to worst”.

## Can MVP be shown?
Only as an optional secondary badge outside the core requirement. MVP must not replace the team victory line or create blame in defeat.

## What if one teammate has zero claims?
Show zero claims neutrally and prefer a support moment if available. If no support moment exists, show a localized encouragement line tied to team participation, not personal failure.

## How should losing teams see contribution?
They see the same structure with “Team Result” or “Your Team Reached X/Y Claims”. The goal is learning and morale, not shame.

## Is this during match or end-match?
This leaf is end-match focused. During-match team HUD is covered by `mode-specific-hud-adaptation`.

## What if claim history is incomplete?
Fallback to claim count and generic contribution text. Missing history must not break the screen.

## Localization Clarification
Contribution labels must be separate keys, not concatenated English fragments. Arabic templates must allow player names at the correct grammatical position.
