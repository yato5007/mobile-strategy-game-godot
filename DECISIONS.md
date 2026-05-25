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
