# Clarification: Win Postmortem

## Q: How many claim cards can the timeline show?
A: The claim threshold is typically 3-5 banners depending on player count. The horizontal scroll supports up to 15 cards without significant UX degradation. If someone mods the threshold higher, the scroll container handles overflow naturally.

## Q: What happens if the same territory was claimed in multiple phases?
A: The "Banner of the Majlis" system does not allow claiming the same territory twice. Each claim card represents a unique territory.

## Q: Is there a "no claims" scenario?
A: A winning player always has claims — they reached the threshold. So no empty state is ever shown to the winner. The empty state exists only as a defensive fallback.

## Q: Does the postmortem show opponent claims too?
A: No. Opponent claim data is displayed in the closeness gauge (sibling node), not here. The postmortem is exclusively the winner's journey.

## Q: Can the player tap a claim card for more detail?
A: Not in v1. The card already shows turn, order, and territory name. In a future version, tapping could expand to show the state of the board at that turn.

## Q: How does this work in 2v2?
A: In team mode, the postmortem shows combined team claims. Each card shows which team member made the claim. The cards are color-coded: Player 1's claims in their color, Player 2's claims in their color.

## Q: Are there sound effects when the timeline appears?
A: Sound effects are handled by the parent `win-loss-explanation` node, not by this sub-node. The postmortem focuses on visual timeline presentation.
