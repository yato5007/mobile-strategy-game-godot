# Constitution — Duration Cap and Interruption Validation

## Non-Negotiables

- Total match duration must be hard-capped under 30 minutes for all modes (FFA, 2v2).
- Expected match duration target is 18-23 minutes under normal play.
- Mobile interruption (disconnect, background, sleep) must be handled with a short recovery reserve.
- After reaching the hard cap, the match must proceed to the Final Majlis Reveal.
- Duration calculations must be verifiable through formulas, not estimates.
- No Godot implementation, assets, or code is created at this planning depth.

## Principles

1. **Hard cap is hard**: No condition, no mode, no player count extends beyond 30 minutes.
2. **Expected range guides design**: The 18-23 minute target drives timer choices in sibling leaves.
3. **Interruption is handled, not ignored**: Reconnect/disconnect must have bounded recovery.
4. **Auto-ready safety**: If a player fails to return, a default plan or auto-ready must prevent stalling.
5. **Verifiable**: Duration formulas must be explicit and testable.
