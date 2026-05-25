# DECISIONS.md

Only significant decisions are recorded here.

## DEC-BOOT-001 — Bootstrap adopts Godot + mandatory Spec Kit depth 4

- Date: 2026-05-25
- Node: bootstrap/root
- Decision: Bootstrap control files, AI tooling, OpenCode agents, scripts, and plans are prepared before any game implementation.
- Reason: `MASTER_PROJECT_PLAN.md` requires Godot, portrait mobile targets, and full recursive Spec Kit depth 4 before game work starts.
- Alternatives rejected:
  - Start coding game immediately: rejected because it skips Spec Kit.
  - Create Godot project during bootstrap: rejected because bootstrap must not implement the game.
  - Add optional tooling as active dependencies immediately: rejected because tools must not overshadow P1/P2 game quality.
- Impact: Game implementation remains TODO until root Spec Kit and leaf-node tasks exist.

## DEC-ROOT-001 — Root adopts hybrid seven-branch Spec Kit tree

- Date: 2026-05-25
- Node: `.spec-tree/root/`
- Decision: Use seven required depth-1 branches: `game-concept-and-win-condition`, `core-match-systems`, `multiplayer-and-bots`, `balance-and-validation`, `presentation-art-audio-motion`, `mobile-ux-localization-accessibility`, and `godot-architecture-and-delivery`.
- Reason: This hybrid structure protects P1/P2 game quality while still covering multiplayer, bots, balance, localization, Godot architecture, Android/iOS delivery, assets, and handoff.
- Alternatives rejected:
  - Branch by software layers only: rejected because it risks technical scaffolding before fun/game feel clarity.
  - Branch by game-quality pillars only: rejected because it under-specifies multiplayer, platform, and build contracts.
  - Implement Godot immediately: rejected because leaf-node tasks do not exist yet.
- Impact: Root Spec Kit is complete for planning scope; game implementation remains blocked until future leaf tasks exist. Each depth-1 branch must reach depth 4 with full Spec Kit.

## DEC-GCWC-001 — Game concept uses fixed-length visible Claim win condition

- Date: 2026-05-25
- Node: `.spec-tree/game-concept-and-win-condition/`
- Decision: Adopt a provisional concept direction, `Banner of the Majlis`, where players/teams compete over a fixed-length match to earn the strongest visible Claim through public strategic objectives; highest Claim at final reveal wins.
- Reason: This gives a clear first-match goal, prevents early match termination, supports comeback through changing objectives, and can be visualized through game objects rather than tables.
- Alternatives rejected:
  - First-to-target-score: rejected because it can end the match early and create runaway leader problems.
  - Mandatory area control: rejected because area control is allowed but not required by the master plan.
  - Hidden victory conditions: rejected because players may not understand why they won or lost.
- Impact: Child nodes must make Claim display, final win/loss explanation, comeback windows, anti-passive play, and visual presentation concrete before implementation.

## DEC-AUTO-001 — Full Autonomy Rule adopted

- Date: 2026-05-25
- Node: governance/global
- Type: AUTONOMOUS_DECISION
- Decision: Adopt Full Autonomy Rule and replace `USER_DECISION_REQUIRED` in most cases with `AUTONOMOUS_DECISION`. `speckit-director` and `report-gatekeeper` make design, technical, gameplay, art, balance, branch, continue/fix, weak-node, and design-conflict decisions without asking the user.
- Options compared:
  - Keep asking the user for ongoing decisions: rejected because the user wants monitoring only.
  - Make fully autonomous decisions without safeguards: rejected because high-impact decisions need quality gates.
  - Use autonomous decisions with options comparison, review, artifacts, and checkpoints: accepted.
- Why this serves the final game: It keeps the mandatory depth-4 Spec Kit workflow moving while preserving quality and traceability.
- Potential downside: The system may choose a direction the user would not have chosen manually.
- Why downside is acceptable: The User Taste Proxy Rule, Options Comparison Rule, Final Game Quality Rule, Artifact Proof Rule, Fun Validation Rule, reviews, and checkpoints constrain and document decisions.
- Later verification: Review `DECISIONS.md`, `GATEKEEPER_REVIEW.md`, Spec Kit artifacts, QA/reviewer/integration results, and git checkpoints.
- Artifact proof: Governance files and OpenCode agents updated; checkpoint `add full autonomy rule and autonomous decision workflow`.
## DEC-GCWC-002 — Concept presentation adopts Arabic-first Majlis game-object identity

- Date: 2026-05-25
- Node: `.spec-tree/game-concept-and-win-condition/concept-presentation-and-theme/`
- Type: AUTONOMOUS_DECISION
- Decision: Present Banner of the Majlis as an Arabic-first council arena where Claims appear as banners, seals, carpet medallions, and illuminated tokens instead of tables or text-only panels.
- Options compared:
  - Plain dashboard/scoreboard: rejected because it violates MASTER 4.1.7 Anti-Spreadsheet Game Rule.
  - Generic fantasy board: rejected because it weakens the Arabic cultural identity and does not serve the Majlis premise.
  - Arabic-first Majlis game-object identity: accepted because it supports Final Game Quality, portrait readability, Claim clarity, and future Godot presentation.
- Why this serves the final game: It makes the visible Claim win condition feel like a real mobile strategy game and gives future art/UI branches concrete direction.
- Potential downside: Ornament and theme could clutter the 360-414px portrait play space.
- Why downside is acceptable: The node requires low-contrast ornament, icon grammar, reusable Godot Theme/StyleBox resources, and QA comparison against a spreadsheet baseline.
- Later verification: Future Godot scenes, screenshots, ASSET_MANIFEST.md, RTL/LTR checks, and QA/reviewer results must prove the game does not look like an admin panel.
- Artifact proof: Complete 104-file depth-2 through depth-4 Spec Kit subtree for `concept-presentation-and-theme`.



## DEC-GCWC-003 — Anti-dominance uses visible active-play pressure

- Date: 2026-05-25
- Node: `.spec-tree/game-concept-and-win-condition/anti-dominant-strategy-and-active-play/`
- Type: AUTONOMOUS_DECISION
- Decision: Prevent dominant and passive strategies through visible objective variety, public adaptive counterpressure, capped active-play incentives, idle warnings, and counterplay readability tied to DEC-GCWC-001 Claim.
- Options compared:
  - Hidden penalties: rejected because players would not trust Claim outcomes.
  - Pure static balance tuning: rejected because solved openings can still emerge.
  - Visible adaptive board pressure: accepted because it preserves agency, teaches counterplay, and supports future simulator proof.
- Why this serves the final game: It keeps Banner of the Majlis strategically replayable, active, readable, and fair in both FFA and 2v2.
- Potential downside: Extra indicators can clutter portrait screens or feel punitive.
- Why downside is acceptable: The subtree requires icon-first Control widgets, tap-to-expand Label cards, capped Resources, and RTL/LTR QA checks.
- Later verification: Future balance simulator metrics must check passive win rate, strategy repetition success, strategy shift frequency, FFA dogpile risk, and 2v2 support fairness.
- Artifact proof: Complete 104-file depth-2 through depth-4 Spec Kit subtree for `anti-dominant-strategy-and-active-play`.

## DEC-CMS-001 — Core match uses fixed simultaneous Majlis phase loop

- Date: 2026-05-25
- Node: `.spec-tree/core-match-systems/`
- Type: AUTONOMOUS_DECISION
- Decision: Use a fixed sequence of Majlis phases with simultaneous Council Planning, commit lock, deterministic reveal/resolve, visible Claim update, pressure shift, and final reveal.
- Options compared:
  - Traditional turn-by-turn rounds: rejected because they create waiting and violate the no-turn-waiting multiplayer requirement.
  - Continuous real-time action: rejected because it risks reaction-speed gameplay and mobile chaos.
  - Fixed simultaneous phase loop: accepted because it supports strategic planning, multiplayer synchronization, fair pacing, and under-30-minute matches.
- Why this serves the final game: It keeps all players engaged at the same time while preserving the fixed-length Claim contest selected by DEC-GCWC-001.
- Potential downside: Simultaneous conflicts can become hard to understand.
- Why downside is acceptable: A required child branch will define deterministic conflict resolution, tie-breakers, and explanation events.
- Later verification: QA and balance simulator must validate conflict readability, match duration, idle time, and fairness.
- Artifact proof: `.spec-tree/core-match-systems/` full depth-1 Spec Kit artifacts.

## DEC-CMS-002 — Match state is mostly public with hidden committed plans

- Date: 2026-05-25
- Node: `.spec-tree/core-match-systems/`
- Type: AUTONOMOUS_DECISION
- Decision: Keep objectives, Claim, phase count, public pressure, leader threat, and constraints visible; hide selected plans only until reveal by default.
- Options compared:
  - Fully hidden strategy layer: rejected because it weakens first-match clarity and win/loss explanation.
  - Fully public selected actions before lock: rejected because it invites last-second reaction play.
  - Mostly public state with hidden commits: accepted because it preserves clarity, suspense, and fair simultaneous planning.
- Why this serves the final game: Players can read what matters, understand why Claim changed, and plan counterplay without opaque scoring.
- Potential downside: Reduced bluffing depth.
- Why downside is acceptable: Depth comes from objective timing, action constraints, pressure shifts, and simultaneous commitment.
- Later verification: UX and QA must confirm players can identify objective, leader, comeback path, and reveal explanation.
- Artifact proof: `.spec-tree/core-match-systems/spec.md` and `analysis.md`.

## DEC-CMS-003 — Core choices use compact Council Focus action economy

- Date: 2026-05-25
- Node: `.spec-tree/core-match-systems/`
- Type: AUTONOMOUS_DECISION
- Decision: Use a compact Council Focus action budget with minimal Influence/position constraints instead of a heavy multi-resource economy.
- Options compared:
  - Many resource tracks: rejected because they risk spreadsheet feel and portrait overload.
  - No resource constraints: rejected because legal actions become spammed and strategically flat.
  - Small action budget with visible constraints: accepted because it creates hard choices without heavy administration.
- Why this serves the final game: It supports tactical tradeoffs that can be represented through Majlis game objects and icons.
- Potential downside: Too few constraints could limit long-term depth.
- Why downside is acceptable: Objective rotation, public counterpressure, team support limits, and phase progression add depth without bookkeeping.
- Later verification: Balance tests must check action diversity, dominant spam, passive success, and decision clarity.
- Artifact proof: `.spec-tree/core-match-systems/` tasks require `action-economy-and-legal-actions` depth-2 branch.

## DEC-CMS-MFPS-001 — Match flow uses nine scheduled Majlis phases

- Date: 2026-05-25
- Node: `.spec-tree/core-match-systems/match-flow-and-phase-structure/`
- Type: AUTONOMOUS_DECISION
- Decision: Use a 9-phase fixed match grouped into three acts: Opening Council, Rising Debate, and Final Petition. Victory is evaluated only during Final Majlis Reveal after phase 9.
- Options compared:
  - 6 phases: rejected because it is too compressed for comeback opportunities, objective variety, and 4-player adaptation.
  - 9 phases: accepted because it supports a clear strategic arc, enough adaptation, and under-30-minute mobile pacing.
  - 12 phases: rejected because it risks mobile fatigue and exceeding the match length target.
- Why this serves the final game: It gives Banner of the Majlis a readable beginning/middle/end, keeps every player active in simultaneous planning, and preserves fixed-length drama without early match termination.
- Potential downside: Nine phases can feel repetitive if objectives and pressure shifts are weak.
- Why downside is acceptable: Future child and sibling nodes must define pressure shifts, objective variety, leader exposure, and balance validation.
- Later verification: QA and balance simulator must validate match duration, perceived variety, comeback frequency, passive win rate, and final-phase uncertainty.
- Artifact proof: Full depth-2 Spec Kit artifacts in `.spec-tree/core-match-systems/match-flow-and-phase-structure/`.

## DEC-CMS-PCTE-001 — Phase timing uses variable capped 9-phase envelope

- Date: 2026-05-25
- Node: `.spec-tree/core-match-systems/match-flow-and-phase-structure/phase-count-and-timing-envelope/`
- Type: AUTONOMOUS_DECISION
- Decision: Use a variable-but-capped 9-phase timing envelope: longer opening planning, slightly shorter late planning, richer late reveal/update beats, one short capped mobile recovery reserve, expected 18-23 minutes, and hard under-30-minute validation.
- Options compared:
  - Flat identical timers: rejected as default because onboarding and final-act event density need different pacing.
  - 30-45 second short phases: rejected because they push reaction-speed play and hurt accessibility.
  - Long asynchronous timers: rejected because they break active simultaneous mobile multiplayer.
  - Variable capped timers by act: accepted because they preserve strategy, clarity, and mobile pacing.
- Why this serves the final game: It makes the 9-phase Majlis match feel like a readable strategic arc while preventing long multiplayer fatigue.
- Potential downside: Variable timers may be harder to communicate than one constant timer.
- Why downside is acceptable: Future UX/localization nodes must expose act, phase, and timer state clearly in portrait UI.
- Later verification: Duration table validation, simulator duration distribution, human FFA/2v2 pacing QA, and interruption stress scenarios.
- Artifact proof: Full depth-3 Spec Kit artifacts in `.spec-tree/core-match-systems/match-flow-and-phase-structure/phase-count-and-timing-envelope/`.

## DEC-CMS-OCP-001 — Opening Council uses guided strategic ramp

- Date: 2026-05-25
- Node: `.spec-tree/core-match-systems/match-flow-and-phase-structure/phase-count-and-timing-envelope/opening-council-pacing/`
- Type: AUTONOMOUS_DECISION
- Decision: Phases 1-3 use a guided strategic ramp: phase 1 planning is 90s first-match or 75s replay, phase 2 is 75s, phase 3 is 70s, with 4-5s lock grace, 35-45s reveal/update windows, localized icon-first briefs, and capped recoverable early Claim swings.
- Options compared:
  - Uniform 75s opening phases: rejected as default because phase 1 onboarding is too compressed for new-player clarity.
  - 120s tutorial-heavy opening: rejected because it slows active mobile multiplayer and hurts replay pacing.
  - Guided strategic ramp: accepted because it teaches the match rhythm while keeping active choices meaningful.
  - 45-60s opening: rejected because it pushes reaction-speed play and harms Arabic/English portrait readability.
- Why this serves the final game: It makes the first match readable, preserves strategic decision quality, and prevents the opening from creating unrecoverable leads before the Rising Debate act.
- Potential downside: Phase 1 can feel slow to expert players.
- Why downside is acceptable: Replay context can use 75s and future all-ready fast-forward can reduce waiting without changing the strategic ceiling.
- Later verification: Future timing config tests, first-match QA, FFA/2v2 walkthroughs, localization layout checks, and opening anti-runaway simulator metrics.
- Artifact proof: Full depth-4 Spec Kit artifacts in `.spec-tree/core-match-systems/match-flow-and-phase-structure/phase-count-and-timing-envelope/opening-council-pacing/`.

## DEC-PDR-001 — Direction review adopts minor sequencing adjustment to protect game feel

- Date: 2026-05-25
- Node: project-direction-review/global
- Type: AUTONOMOUS_DECISION
- Decision: Continue with `Banner of the Majlis`, Godot 4.x, portrait-only Android/iOS, REQUIRED_DEPTH=4/MAX_DEPTH=4, and no premature implementation; adjust sequencing so P2 game-feel proof is brought forward after minimum P1 core-match contracts are complete through depth 4.
- Options compared:
  - CONTINUE_AS_PLANNED with no adjustment: rejected because it could let abstract rules continue while visual/game-feel proof remains weak.
  - REWORK_WEAK_NODES globally now: rejected because broad rework would duplicate completed planning without targeted evidence; however, any specific weak/template-like depth-4 leaf discovered by director, spec-critic, gatekeeper, reviewer, or integration review must be sharpened immediately, not deferred to implementation.
  - PRIORITIZE_GAME_FEEL immediately: rejected as immediate next step because art/motion would be detached from incomplete state/action/Claim contracts, but accepted as the next major emphasis after the trigger.
  - PRIORITIZE_GODOT_PROTOTYPE_PREPARATION now: rejected because it risks premature implementation before sufficient leaf-node contracts exist.
  - ADJUST_DIRECTION: accepted because it preserves the current strong concept while reducing the risk of a documentation-heavy, artifact-poor project.
- Concrete trigger: after `phase-count-and-timing-envelope`, `phase-state-machine-and-handoffs`, `simultaneous-planning-and-resolution`, `action-economy-and-legal-actions`, and `claim-objective-state-model` complete through depth 4 with no weak/template-like depth-4 leaves accepted, prioritize `presentation-art-audio-motion` before extended P3 work.
- Why this serves the final game: It keeps P1 core rules coherent while enforcing P2 game feel as a near-term requirement, preventing the game from becoming a text-square dashboard.
- Potential downside: Some P3 bots/multiplayer/balance work may start later than a strict root branch order.
- Why downside is acceptable: Bots and multiplayer need stable rule contracts, and the master plan treats game feel as essential rather than decorative.
- Later verification: `presentation-art-audio-motion`, `ASSET_MANIFEST.md`, `ASSET_PIPELINE.md`, future Godot scenes, and QA/reviewer checks must prove Claim and feedback appear as game objects with visual/audio/motion clarity.
- Artifact proof: `PROJECT_DIRECTION_REVIEW.md`, gatekeeper/spec-critic/integration reviews, and this decision entry.

## DEC-PDR-002 — Strict depth-4 quality correction adopted

- Date: 2026-05-25
- Node: project-direction-review/global
- Type: USER_APPROVED_CORRECTION / AUTONOMOUS_ENFORCEMENT
- Decision: Keep `ADJUST_DIRECTION`, but explicitly reject any interpretation that weakens REQUIRED_DEPTH=4. Any depth-4 node found to be formal, generic, repetitive without game value, or template-like must be sharpened immediately when discovered and cannot receive final acceptance as-is.
- Options compared:
  - Accept template-like depth-4 leaves until implementation: rejected because it undermines the user’s mandatory depth-4 rule and risks placeholder planning.
  - Rebuild all completed depth-4 nodes immediately: rejected because it may waste effort without evidence that every leaf is weak.
  - Enforce immediate targeted sharpening on discovery: accepted because it preserves forward motion while keeping depth 4 strict and meaningful.
- Why this serves the final game: It ensures the recursive Spec Kit tree produces concrete game value, not formal depth filling, and protects the project from becoming documentation-only.
- Potential downside: Future node work may pause when weak leaves are detected.
- Why downside is acceptable: A pause to repair weak depth-4 output is cheaper than building on shallow specifications or producing a text-square game.
- Later verification: Gatekeeper, spec-critic, reviewer, and director checks must require each depth-4 leaf to include concrete game-serving content such as data contracts, UI/game-object outputs, simulator metrics, Godot-facing acceptance criteria, asset/audio/motion requirements, gameplay decisions, or validation rules.
- Artifact proof: User correction request, updated `PROJECT_DIRECTION_REVIEW.md`, updated `SPEC_TREE_RULES.md`, and this decision entry.

## DEC-CMS-RDP-001 — Rising Debate uses compressed pressure cadence

- Date: 2026-05-25
- Node: `.spec-tree/core-match-systems/match-flow-and-phase-structure/phase-count-and-timing-envelope/rising-debate-pacing/`
- Type: AUTONOMOUS_DECISION
- Decision: Use phases 4-6 as a compressed Rising Debate pressure cadence with 65/60/60 second planning targets, 4-5s lock grace, 40-50s reveal/update, visible leader-threat and strategy-shift cues, and mode-specific FFA/2v2 awareness outputs.
- Options compared:
  - Opening-like 70-75s timers: rejected because mid-match would lack urgency and drag.
  - 40-50s short timers: rejected because they risk reaction-speed play and poor Arabic/English readability.
  - Dynamic timers by Claim gap: rejected because they complicate fairness, synchronization, bots, and tests.
  - Fixed compressed mid-act cadence with richer reveal/update: accepted because it increases pressure while preserving strategic decision quality.
- Why this serves the final game: It makes the middle act a real strategic crossroads, exposes FFA leader/challenger threat, supports 2v2 teammate awareness, and prepares players for the final act without early victory.
- Potential downside: Richer reveal/update and pressure cues can clutter portrait UI or exceed duration budgets.
- Why downside is acceptable: The node caps timing, requires icon-first game-object cues, and defines future duration/readability metrics.
- Later verification: Future timing config tests, FFA/2v2 QA walkthroughs, simulator metrics for leader conversion/strategy-shift effectiveness/dogpile risk, and RTL/LTR portrait layout checks.
- Artifact proof: Complete depth-4 Spec Kit artifacts in `.spec-tree/core-match-systems/match-flow-and-phase-structure/phase-count-and-timing-envelope/rising-debate-pacing/`.
