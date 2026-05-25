# Clarification — Final Petition Pacing

## Clarified Questions

### Q1: Why not decide victory during phase 9 itself?

The parent match flow (DEC-CMS-MFPS-001) requires no early victory and final reveal only after phase 9. Phase 9 is the last planning/commit opportunity. Conducting victory evaluation inside phase 9 would (a) remove suspense after commit, (b) defeat the purpose of the Final Majlis Reveal ceremony, and (c) create pressure to commit to "safe" final actions rather than strategic ones.

**Decision:** Phase 9 seals commits; the Final Majlis Reveal is a separate ceremony immediately after phase 9.

### Q2: Why a dedicated counterplay window in phase 8?

Without an explicit counterplay window, the middle-to-late act becomes a continuum where players never know when their last meaningful adaptation opportunity is. A single dedicated phase 8 window (a) creates a memorable "now or never" moment, (b) makes comeback mechanics feel earned, and (c) simplifies bot/multiplayer/time pressure logic.

**Decision:** Phase 8 is the explicit final counterplay window. Phase 9 is the seal-commit phase where plans are locked; no further changes accepted.

### Q3: How does the urgency lantern system work?

Three lanterns map to phases 7-9 respectively. Phase 7: one lantern lit (amber). Phase 8: two lit (orange). Phase 9: all three lit (deep orange/red at max intensity). The lantern is a game-object icon, not a text counter. It gives an ambient urgency signal without requiring reading.

**Decision:** Urgency lantern trio as ambient game-object cue, not timer text.

### Q4: How are FFA final-path outcomes shown without a score table?

Each player's token shows a color-coded Claim-Final Path Indicator: a carpet-strand arc connecting their token to the final reveal position. The strands show remaining phases as remaining steps. Two plausible outcomes mean showing which paths still have length to overtake vs which do not.

**Decision:** Path indicator arcs per player, no numeric score table.

### Q5: How does 2v2 seal ceremony work?

During phase 9 lock, both teammates' plans are sealed together. The HUD shows paired seal icons (two wax seals in team colors). The ceremony treats the team as one unit for the reveal; individual contribution is shown during the reveal, not during the seal phase.

**Decision:** Paired team seal icons during phase 9 lock.

## Unresolved (deferred to implementation/other branches)

- Exact seal graphic/animation style: deferred to `presentation-art-audio-motion`.
- Tiebreaker rules: deferred to `claim-objective-state-model` and `final-reveal-and-mode-completion`.
- Reconnect/default-plan during phase 9: deferred to `duration-cap-and-interruption-validation`.
