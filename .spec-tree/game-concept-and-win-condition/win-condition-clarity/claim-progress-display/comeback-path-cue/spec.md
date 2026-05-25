# Specification — Comeback Path Cue

## Purpose
Define how the game communicates that a trailing player still has a possible path to compete, so the match stays tense and readable until the final phase.

## Required Behavior
- When public objectives can meaningfully reduce a gap, the display should connect those objectives to the trailing player’s Claim banner/seals.
- The cue should distinguish “possible comeback” from “unlikely comeback” without declaring a player eliminated.
- The cue must use public information only.
- The cue must work for FFA and 2v2: in FFA it shows individual routes; in 2v2 it shows team routes and contribution opportunities.

## Accepted Direction
Use a **visible opportunity thread** metaphor: subtle glowing route, seal outline, objective link, or pulse that connects a player/team banner to a relevant public objective.

## Acceptance Criteria
- A trailing player can identify one relevant comeback opportunity in under 5 seconds when one exists.
- The cue does not show if no public path exists, avoiding misleading feedback.
- The cue remains visual and thematic, not a text-only instruction.
- It does not alter scores, rules, hidden information, or objective availability.
