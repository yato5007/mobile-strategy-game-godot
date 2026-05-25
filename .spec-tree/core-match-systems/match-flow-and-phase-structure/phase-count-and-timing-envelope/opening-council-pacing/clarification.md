# Clarification — Opening Council Pacing

## Clarified Assumptions

1. `First-match` means the first local profile/session exposure to the match flow or a tutorial-enabled match setting. Exact persistence is deferred.
2. `Replay` means a non-first-match or fast-start context; it does not skip mandatory phase information.
3. Lock grace exists only after timer expiry or all-ready lock and does not allow changing committed actions.
4. Opening pacing does not define Claim formulas; it constrains future formulas to avoid unrecoverable early leads.
5. Opening phase briefs define content requirements, not final UI layout or copy.

## Questions Resolved Autonomously

| Question | Resolution | Reason |
|---|---|---|
| Should phase 1 be longer than phases 2-3? | Yes: 90s first-match / 75s replay. | New-player clarity is P1 and avoids reaction-speed play. |
| Should FFA and 2v2 have different timers? | No, same timers with mode-specific brief content. | Different timers complicate multiplayer expectations and balance. |
| Should early-ready fast-forward be allowed? | Yes, later, only after readable all-locked transition. | Reduces expert waiting without forcing rushed decisions. |
| Should opening include tutorial popups? | Only lightweight, non-blocking, tap-to-expand support. | Blocking tutorials harm simultaneous multiplayer pacing. |
| Should phase 1 Claim swings matter? | Yes, but capped and recoverable. | Active choices need feedback without early runaway. |

## Out of Scope

- Godot timer implementation.
- UI scene composition.
- Network timeout/default-plan rules.
- Exact Claim scoring formula.
- Final localized string catalog.
- Bot opening strategy implementation.
