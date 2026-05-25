# Clarification: Team and FFA Win Readability

## Clarified Questions

### Does an individual or team win in 2v2?
The team wins. Individual contribution is displayed to support morale, learning, and replay intent, but the official result is team-level.

### Should individual teammates be ranked against each other?
No. Teammate comparison must not create internal blame. It should show contribution types such as claims, assists, protection, disruption, or timing.

### Should FFA only show the winner?
No. FFA requires all four standings because every player needs to know position and distance from the winner.

### Is this only an end-match screen?
No. The subtree includes end-match displays and during-match HUD adaptation. The mode-specific HUD prevents confusion before the result screen.

### How should ties be handled?
The UI must expose tie state and reference the future rules node for tie-break logic. Until tie-break rules are finalized, the display must reserve a localized tie explanation line.

### How much detail fits on portrait mobile?
Primary result and claim counts stay above the fold. Claim history summaries are compact cards or expandable rows below the fold.

### How should Arabic RTL affect the design?
Arabic reverses reading order and alignment, but rank meaning and claim progress remain visually stable. Team grouping remains vertical-first to avoid cramped horizontal layouts.

## Out of Scope
- Implementing tie-break game rules.
- Building online multiplayer transport.
- Creating final art assets.
- Changing the selected Claim win condition.
