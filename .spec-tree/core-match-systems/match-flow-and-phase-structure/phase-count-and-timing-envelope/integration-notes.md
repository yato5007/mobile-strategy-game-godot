# Integration Notes — Phase Count and Timing Envelope

## Refined Timing Contract

- Default match length: 9 phases, grouped as Opening Council (1-3), Rising Debate (4-6), Final Petition (7-9).
- Expected duration: 18-23 minutes.
- Conservative planning cap: below 30 minutes including final reveal and one short recovery reserve.
- Planning timer range: 60-90 seconds.
- Commit-lock grace: 3-5 seconds.
- One short reconnect reserve: max 15 seconds per player per match at lock boundary, subject to future multiplayer policy.

## Interfaces Needed Later

- `phase-state-machine-and-handoffs`: consume act/phase timing configuration and enforce lock boundaries.
- `final-reveal-and-mode-completion`: trigger only after phase 9 completion.
- `simultaneous-planning-and-resolution`: resolve after lock without changing timer policy.
- `multiplayer-and-bots`: define ready/auto-ready/reconnect/default-plan behavior within the cap.
- `mobile-ux-localization-accessibility`: present act, phase, timer, and no-early-victory messaging in Arabic/English portrait UI.
- `balance-and-validation`: measure duration distributions and decision diversity.

## Integration Risks

- If future animations exceed reveal/update budgets, match duration may creep.
- If reconnect behavior is too generous, active players may feel punished.
- If 2v2 coordination is designed as real-time chat dependency, timer caps may fail.
- If FFA standings are over-explained, reveal/update beats may become too long.
