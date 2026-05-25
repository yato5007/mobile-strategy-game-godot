# Clarification: Loss Decision Crossroads

## Q: What counts as a "suboptimal decision"?
A: Any turn where the player could have claimed an available banner but did not, AND that banner was later claimed by an opponent OR the turn represented a missed opportunity to reach the threshold faster. The algorithm does NOT evaluate board position, strategy, or bluffing — only claim availability.

## Q: What if the player never had a claim opportunity?
A: The algorithm returns empty, and the consolation card is shown. This can happen if all territories were claimed by opponents before the player's turn, or in a very short match. The game does not fabricate turning points.

## Q: How is impact scored?
A: Simple heuristic: (number of opponents who later claimed this territory) * 2 + (distance to threshold after missed claim). This rewards identifying claims that directly helped opponents AND hurt the player.

## Q: Does this reveal hidden information?
A: No. The analysis only uses publicly available information: which territories were claimed, by whom, and at which turn. It does not reveal opponent strategies or hidden plans.

## Q: Is this feature necessary? Could it be frustrating?
A: Research shows that players who receive concrete, specific feedback after a loss are 2x more likely to replay immediately. The key is tone and framing — we use neutral, analytical language. Internal playtests will determine if the feature stays or becomes optional.

## Q: How does this work in 2v2?
A: The algorithm analyzes both team members' claim decisions. If one team member missed a claim opportunity, both see it. The card shows which player's turn it was.

## Q: Can the player dismiss the crossroads section?
A: The entire loss screen is scrollable. The crossroads section is at the top of the middle area. The player can scroll past it to see the closeness gauge. "Return to Lobby" is always available.
