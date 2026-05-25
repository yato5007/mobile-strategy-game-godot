# Integration Notes — Opening Council Pacing

## Upstream Dependencies

- DEC-CMS-001 fixed simultaneous Majlis phase loop.
- DEC-CMS-MFPS-001 nine scheduled phases.
- DEC-CMS-PCTE-001 variable capped 9-phase timing envelope.
- DEC-GCWC-001 visible Claim win condition.
- DEC-GCWC-003 visible anti-dominance pressure.

## Interfaces to Future Nodes

| Future Node/System | Integration Need |
|---|---|
| Phase state machine and handoffs | Consume phase 1-3 timing config, lock grace, all-ready fast-forward, and reveal/update boundaries. |
| Simultaneous planning/resolution | Provide action category reveal data and lock finality. |
| Claim objective state model | Enforce capped recoverable opening Claim swings and emit explanatory Claim deltas. |
| Action economy/legal actions | Ensure phase 1-3 legal options support build/contest/support/prepare without overload. |
| Multiplayer/bots | Handle late commits, reconnection, default plans, and bot opening tempo under same timing model. |
| Mobile UX/localization | Render concise Arabic/English phase briefs in portrait RTL/LTR layouts. |
| Presentation/art/audio/motion | Show opening Claim changes through banners/seals/tokens inside 35-45s reveal/update budget. |
| Balance simulator | Validate no opening runaway and active-vs-passive opening metrics. |

## Risks

- If Claim formulas ignore early caps, phase 1-3 may create runaway despite this pacing spec.
- If UI uses long text blocks, Arabic/English readability may fail within timers.
- If 2v2 adds required chat negotiation, opening timers may become insufficient.
- If reveal animations exceed budget, match duration may drift.

## Contract Refinement

This node refines the Phase Timing Envelope contract with phase 1-3 timing values and opening-specific outputs; `SYSTEM_CONTRACTS.md` is updated accordingly.
