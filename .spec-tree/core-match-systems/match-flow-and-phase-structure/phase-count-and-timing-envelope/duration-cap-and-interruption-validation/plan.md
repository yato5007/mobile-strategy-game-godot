# Plan — Duration Cap and Interruption Validation

## Scope

Depth-4 planning leaf that validates the 9-phase timing envelope against the 30-minute hard cap, defines mobile interruption recovery scenarios, specifies auto-ready/default plan policy, and documents per-player interruption reserve.

## Dependencies

- `phase-count-and-timing-envelope` (DEC-CMS-PCTE-001)
- Sibling leaves: opening-council-pacing, rising-debate-pacing, final-petition-pacing (provide timing inputs)
- Future: phase-state-machine (consumes auto-ready transitions), multiplayer (consumes disconnect/reserve policy), bots (consumes default plan), action-economy (validates default plan legality)

## Plan Outline

1. Compute duration formula from sibling leaf timing tables.
2. Validate conservative total ≤ 23 minutes; hard cap ≤ 30 minutes with 5-minute safety margin.
3. Define four interruption scenarios with timing policies.
4. Define auto-ready and default plan rules.
5. Define FFA/2v2 specificities.
6. Document localization constraints.
7. Integrate with phase state machine, multiplayer, and bots.
8. Validate with checklist/QA/review.
9. Update tracking files.

## Risks

| Risk | Mitigation |
|---|---|
| Default plan becomes optimal strategy | Must be neutral and unoptimized; bot difficulty design validates |
| Interruption reserve consumed by slow UI | Reserve starts only after 30s continuous disconnect, not during normal transitions |
| Hard cap creates abrupt ending | Hard cap is a safety valve; normal matches finish within 23 minutes |
| 2v2 disconnect penalizes team too harshly | Remaining teammate continues; disconnected teammate auto-readies; no extra Claim penalty beyond lost coordination |

## Implementation Boundary

No Godot code, scenes, networking implementation, or assets created at this depth.
