# Specification — Leader Threat Indicator

## Purpose
Define the leaf-level requirement for showing leader vulnerability and closeness so players understand whether the match can still change.

## Required Behavior
- If the leader is within reach, show a visible “contested lead” state.
- If a public objective can change the leader, highlight the objective’s threat relationship.
- If the leader is safe for the moment, show that clearly but without declaring the match over.
- If multiple players can overtake, show the contest as multi-sided rather than only first vs second.

## Presentation Direction
Use a game-like visual state such as:
- flickering/contested seals,
- crossed banner edges,
- glowing objective links,
- leader banner under pressure.

Exact art is deferred to presentation nodes.

## Acceptance Criteria
- A player can identify the leader in under 3 seconds.
- A trailing player can identify at least one relevant threat/opportunity when one exists.
- The indicator does not require reading a standings table.
- It works conceptually for FFA and 2v2.
