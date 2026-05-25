# PROJECT_DIRECTION_REVIEW.md

Date: 2026-05-25  
Review point: approximately 30% project progress / early core-match planning  
Mode: Full Autonomy Rule — no user design decision requested

## 1. Executive Summary

### Where the project is now

The project has completed bootstrap, root Spec Kit, the full `game-concept-and-win-condition` branch through required depth 4, and the first part of `core-match-systems`:

- `game-concept-and-win-condition` is complete through depth 4 with a clear strategic concept: **Banner of the Majlis**.
- The win condition is: fixed-length match; players/teams earn visible **Claim**; highest Claim wins only at the final reveal.
- The concept has planned comeback cues, leader threat, win/loss explanation, FFA/2v2 readability, anti-dominant strategy pressure, and Arabic-first Majlis presentation.
- `core-match-systems` has selected a fixed simultaneous phase loop, mostly public state with hidden committed plans, compact Council Focus action economy, and a 9-phase match flow.
- `phase-count-and-timing-envelope` is complete, and `opening-council-pacing` is complete as a depth-4 leaf.
- No Godot game implementation, runtime assets, bots, multiplayer, simulator, or APK exists yet by design.

### Is the current direction good?

Yes. The current direction is good and aligned with the master plan. The project has avoided the two biggest early failures: rushing into code without a game, and creating a generic text/scoreboard strategy app. The visible Claim + Majlis council identity is coherent, culturally directed, portrait-friendly in concept, and compatible with simultaneous multiplayer.

### Is the project approaching a real game or still theoretical?

It is approaching a real game **in design direction**, but it is still mostly theoretical **in artifact proof**. The Spec Kit outputs are concrete enough to guide implementation later, but the project still lacks playable Godot scenes, asset placeholders, SFX placeholders, runtime tests, bots, balance simulation, and mobile build proof.

### Is there a risk of becoming squares and text?

Yes, this is the main current creative risk. The concept fights that risk with banners, seals, carpet medallions, Arabic motifs, Claim tokens, and a Majlis board. However, `ASSET_MANIFEST.md`, `ASSET_PIPELINE.md`, and `DESIGN_SYSTEM.md` remain scaffolds. Until visual/audio/motion artifacts are produced later, the anti-spreadsheet goal is proven only by plans, not by Godot scenes or assets.

## 2. Alignment With User Vision

| Vision Item | Current Alignment | Evidence | Concern |
|---|---|---|---|
| Final game, not prototype | Medium | Final Game Quality is repeatedly enforced in Spec Kit | No runtime game yet; still planning-heavy |
| Godot | High | Master/root/trace/contracts lock Godot 4.x | No Godot project implementation yet |
| Portrait | High | Every relevant node references portrait constraints | No actual portrait scene validation yet |
| Android + iPhone/iOS | Medium | Planned in root and delivery branch | `godot-architecture-and-delivery` pending |
| Arabic style | High in concept | Majlis, banners, seals, carpet medallions, Arabic naming | Asset/design files still scaffold-level |
| Art / Audio / Motion / Game Feel | Medium-low | Presentation branch planned conceptually | No art/audio/motion assets yet |
| Clear win condition | High | Visible Claim, final reveal, win/loss explanation | Claim formula and event data still pending |
| Not a speed game | High | 9-phase simultaneous planning, 70-90s opening planning | Later timers must remain strategic |
| No single dominant strategy | Medium | Anti-dominant subtree planned | Simulator and balance proof pending |
| Bots | Low | Required and traced | `multiplayer-and-bots` pending |
| Multiplayer | Medium-low | Simultaneous model planned | Mock multiplayer branch pending |
| Full Spec Kit per node | High for completed nodes | Required artifacts exist across completed nodes | Some depth-4 leaves are template-like |
| REQUIRED_DEPTH=4 / MAX_DEPTH=4 | High | Tree enforces depth 4 | Many root branches still pending |

## 3. Current Strengths

1. **Clear strategic anchor**: Banner of the Majlis and visible Claim give the game a recognizable identity and a simple first-match goal.
2. **Strong no-early-victory structure**: Fixed-length final reveal prevents runaway early endings.
3. **Good simultaneous-play foundation**: Commit lock and reveal/resolve model fits multiplayer without turn waiting.
4. **Arabic-first presentation is not an afterthought**: Majlis, banners, seals, carpet motifs, Arabic naming, and visual tokens are already in the concept branch.
5. **Comeback and anti-dominance are planned early**: Catch-up Claim bonus, leader pressure, strategy shift incentives, and visible counterplay address replayability.
6. **Project governance is strong**: Full Autonomy Rule, gatekeeper reviews, traceability, status files, contracts, and checkpoints reduce drift.
7. **Depth-4 leaves often include implementation-facing tasks**: Best examples include win/loss explanation nodes and opening-council-pacing.
8. **No premature game code**: The project respects the rule not to implement before authorized leaf tasks.

## 4. Current Weaknesses

1. **No tangible playable artifact yet**: There is no Godot project, scene, input loop, visual board, token, animation, audio, simulator, or APK.
2. **Game feel is planned but not proven**: The strongest anti-spreadsheet evidence is still text in Spec Kit files.
3. **Some depth-4 work is repetitive**: Several strategic-tension, anti-dominant, and presentation leaves are useful but template-like.
4. **Core rule formulas remain unresolved**: Claim formulas, objective metadata, tie-breakers, conflict resolution, action costs, and event schemas are pending.
5. **Bots/multiplayer/balance are untouched as branches**: They are required by the vision but still at TODO depth-1.
6. **Localization is not yet concrete**: Arabic/English and RTL/LTR are planned, but no string-key or layout implementation strategy exists beyond scaffold.
7. **Dashboard/status has required maintenance**: Recent false BLOCKED work shows progress tooling must avoid misleading project state.
8. **Risk of documentation momentum**: The project can keep producing good documents while delaying the first tangible game-feel proof.

## 5. Creativity Review

### Are the ideas inventive enough?

The current concept is stronger than a generic area-control or score-race design. A Majlis-themed strategic claim contest with banners/seals/carpet medallions, final petition, visible pressure, and public counterplay is distinctive enough for the project stage.

### Is the game still inside the box?

Partly. The concept has a strong theme, but many mechanics still resemble abstract strategic scoring until Claim objectives, action economy, and board interaction are made concrete. The biggest creative opportunity is to turn Claim into visible game objects and social/council pressure, not just a number.

### Does it need stronger ideas?

Yes, but targeted—not a reboot. Stronger ideas are needed in:

- **Arena/surface**: The Majlis board should feel like a council chamber, carpet, or ceremonial layout, not a grid with labels.
- **Risk**: Actions should visibly risk reputation/standing/position, not just spend points.
- **Characters/roles**: The project should evaluate whether advisors, delegates, houses, or patron tokens improve clarity and emotional attachment.
- **Comeback drama**: Comeback should feel earned through final petition opportunities, pressure windows, and visible leader vulnerability, not rubber-banding.
- **Moment-to-moment feedback**: Seals stamped, banners raised, carpet medallions lit, audience murmurs, and council pulse effects can make decisions feel consequential.

## 6. Game Feel Review

### Will it look like a real game?

It can, if the presentation branch is treated as a core P2 requirement and not delayed too long. Current plans point toward a real game, but actual proof is absent.

### Does it have visual identity?

Yes in concept: Arabic-first Majlis, banners, seals, carpet medallions, illuminated tokens, geometric motifs, four-player color identity, Arabic/English patronage naming.

### Does it need characters, units, or stronger tokens?

Likely yes. The safest recommendation is not full character production yet, but **symbolic game pieces** with optional delegate/advisor silhouettes:

- Required soon: Claim banners, seals, objective medallions, player patron colors, pressure indicators.
- Evaluate soon: small delegate/advisor tokens if they make player agency more readable.
- Avoid now: complex 3D character production before board/rules clarity.

### Is Art / Audio / Motion clear enough?

Direction exists, but assets do not. `ASSET_MANIFEST.md` and `ASSET_PIPELINE.md` are still bootstrap-level. SFX, VFX, animation, and import paths are not concrete.

### What must improve to avoid squares and text?

1. Create a P2 visual proof node before implementation freeze: board mock, Claim token mock, icon grammar, and motion feedback plan.
2. Update `DESIGN_SYSTEM.md` from scaffold to selected visual rules after `presentation-art-audio-motion` starts.
3. Create placeholder assets in `ASSET_MANIFEST.md` once leaf tasks authorize it.
4. Ensure every UI score/Claim indicator is represented by a game object first, text second.

## 7. Win Condition Review

### Is the win condition clear?

Yes. “Earn the strongest visible Claim by final reveal” is clear, especially with leader threat, comeback cue, closeness gauge, final standings, and postmortem explanation nodes.

### Does the player know how to approach winning?

At concept level, yes: pursue public strategic objectives, respond to pressure shifts, avoid passive play, and time Claim gains. At implementation level, no: objective families and action legality are not yet specified enough.

### Are win/loss understandable?

The planned win/loss explanation subtree is one of the strongest parts of the project. It gives postmortem, loss crossroads, closeness gauge, FFA standings, and team contribution display.

### Is comeback understandable?

The project plans comeback path cue, catch-up Claim bonus, leader pressure, strategic reset points, and final showdown. This is promising, but balance validation is pending.

### Does the result stay reversible?

The fixed 9-phase structure, no early end, capped opening swings, and final petition plan all support reversibility. Actual proof requires simulator and playtest later.

## 8. Priority Review

Target attention distribution:

| Area | Target | Current Actual Direction | Review |
|---|---:|---|---|
| Core Fun and Gameplay | 40% | High | Correct. Concept and core loop have received the most focus. |
| Game Feel / Art / Audio / Motion | 25% | Medium in planning, low in artifacts | Needs more near-term attention before implementation becomes UI-only. |
| Bots / Multiplayer / Balance / Localization | 20% | Low | Acceptable for now, but these must start after core match contracts stabilize. |
| Build / Testing / Handoff | 10% | Low-medium documentation, low build | Fine for planning phase; Godot delivery branch pending. |
| Extra AI tooling | 5% | Controlled | Tooling is not bloated; recent dashboard fixes were useful. |

Conclusion: the effort distribution is acceptable for the first ~30%, but the next 20% must not be only more abstract rules. The project should finish the minimum required core-match Spec Kit path, then bring P2 presentation/art/audio/motion forward before deep P3 systems dominate.

## 9. Tool Usage Review

### Do tools serve the game?

Mostly yes. Spec Kit, agents, dashboard, checkpoint scripts, and gatekeeper reviews serve continuity. The dashboard false-BLOCKED issue was fixed and improved reliability.

### Should Blender or asset tools be used soon?

Yes, but not immediately in this review. After `presentation-art-audio-motion` reaches suitable leaf tasks, use Inkscape/Krita first for 2D icon/token placeholders and possibly Blender only for simple rendered tokens, seals, or board-piece references if it produces importable Godot assets.

### Is there tool bloat?

No major tool bloat yet. MCP/Context7/Repomix are planned but not overused. BMAD/Task Master/Kiro are not active as competing systems.

### Context7 / Repomix / MCP / skills

- Context7: should be used later for Godot/GDScript/export APIs, not needed for this review.
- Repomix: useful before major architecture/handoff reviews; not necessary for every node.
- MCP: still properly deferred.
- Skills/agents: being used appropriately for node execution and gatekeeping.

## 10. Depth 4 Quality Review

### Is depth 4 real or formal?

Mixed quality was detected, and this is **not acceptable as a final state** for any depth-4 node. Many depth-4 leaves are real enough to guide later work, but any leaf found to be shape-only, overly general, or template-like must be sharpened immediately when discovered. The project must never treat `acceptable but template-like` as a final PASS condition.

### Do depth-4 nodes produce decisions, tasks, and acceptance criteria?

The better nodes do. Examples:

- `win-postmortem`
- `loss-decision-crossroads`
- `closeness-gauge`
- `team-contribution-display`
- `mode-specific-hud-adaptation`
- `opening-council-pacing`

They contain decisions, implementation instructions, dependencies, and validation criteria.

### Is there repetition or general text?

Yes. The following areas show repeated risk/decision language across leaves:

- `strategic-tension-and-comeback/**`
- `anti-dominant-strategy-and-active-play/**`
- `concept-presentation-and-theme/**`

This repetition is a quality warning. It does not require restarting the project, but it does require immediate repair for any specific depth-4 leaf that a critic, reviewer, gatekeeper, or director identifies as weak. Weak depth-4 leaves must not be deferred indefinitely and must not be used as final implementation input.

### Strict depth-4 quality correction

REQUIRED_DEPTH=4, MAX_DEPTH=4, and Full Spec Kit per node remain strict and unchanged. No branch may stop before depth 4. No depth-4 node is complete if it is formal, generic, repetitive without game value, or template-like.

When a weak depth-4 node is discovered, it must be sharpened now or at the point of discovery, not postponed to implementation. The sharpened node must include at least one important concrete artifact category:

- data contract or event schema,
- UI/game-object output definition,
- simulator/balance metric,
- Godot-facing acceptance criterion,
- localization/RTL layout rule,
- asset/audio/motion requirement linked to `ASSET_MANIFEST.md` or `ASSET_PIPELINE.md`.
- concrete gameplay decision,
- concrete validation rule.

If no strong depth-4 split or concrete artifact can be found, the director must call `spec-critic` to propose meaningful branches or repairs instead of creating placeholders. Final acceptance requires usefulness to the actual game, not merely satisfying the depth count.

## 11. Risks

| Risk | Severity | Current Mitigation | Review |
|---|---|---|---|
| Documentation without tangible game | High | No-code rule and leaf tasks | Needs eventual Godot proof soon after enough leaf tasks exist |
| Weak visual artifact proof | High | Concept presentation branch | Needs asset pipeline activation later |
| UI clutter in portrait | High | Icon-first and tap-expand plans | Must be validated in mobile UX branch |
| Claim becomes just a score | High | Banners/seals/tokens planned | Must be enforced by presentation/Godot scenes |
| Balance/comeback feels unfair | Medium-high | Capped comeback, leader pressure | Needs simulator branch |
| Multiplayer synchronization ambiguity | Medium-high | Commit lock planned | Needs mock multiplayer and state-machine contracts |
| Bots delayed | Medium | Future branch | Must not be postponed past core rules clarity |
| Repetitive or template-like depth-4 content | High | Gatekeeper/spec-critic reviews plus strict depth-4 correction | Any weak depth-4 node discovered must be sharpened immediately; no final acceptance as template-like |
| Godot implementation delayed too long | Medium | Spec Kit required | Prepare implementation only after core leaf tasks are real |
| Tool/status false signals | Low-medium | Dashboard/status fixed | Continue precise blocker detection |

## 12. Recommended Improvements

| Recommendation | Benefit | Potential Downside | Fit | Recommend? | Priority | Now/Later |
|---|---|---|---|---|---|---|
| Finish current `core-match-systems` depth path before switching branches | Stabilizes rules, timers, state, actions, Claim events | More planning before visual proof | Strong | Yes | P1 | Now after review |
| Add a “visual proof readiness” checkpoint after core match branch | Prevents text-square drift before implementation | Adds a review gate | Strong | Yes | P2 | Soon |
| Prioritize `presentation-art-audio-motion` immediately after minimum core match contracts | Converts theme into concrete assets/motion requirements | Delays bots/multiplayer branch slightly | Strong | Yes | P2 | Soon |
| Sharpen any weak/template-like depth-4 leaf immediately when discovered | Protects REQUIRED_DEPTH=4 quality and prevents placeholder depth | May interrupt forward momentum | Strong | Yes | P0/P1 | Now and ongoing |
| Use Inkscape/Krita before Blender for first placeholders | Fast 2D mobile-readable assets | Less depth than rendered tokens | Strong | Yes | P2 | Later when leaf tasks authorize |
| Use Blender only for simple seals/tokens/board references if needed | Strong game-object identity | Can waste time if overused | Conditional | Yes with limits | P2 | Later |
| Create simulator metrics after core rule formulas exist | Prevents dominant strategies | Requires finalized rules | Strong | Yes | P3 | Later |
| Avoid changing concept/win condition now | Preserves coherence | May miss radical alternatives | Strong | Yes | P1 | Now |
| Do not start Godot implementation immediately from only opening pacing | Avoids partial, misleading prototype | Delays tangible proof | Strong | Yes | P0/P1 | Now |
| Prepare Godot prototype only after enough leaf tasks define state/action/Claim contracts | Enables meaningful implementation | Requires patience | Strong | Yes | P4/P1 | Later |

## 13. Autonomy Decision

### Decision: ADJUST_DIRECTION

This is a **minor sequencing adjustment**, not a concept reboot.

### Decision made

Continue with the current Banner of the Majlis direction, but adjust the next phase of work to explicitly protect P2 Game Feel from being delayed too far while preserving strict REQUIRED_DEPTH=4 quality. Complete the necessary `core-match-systems` depth-4 planning first, sharpen any weak depth-4 node immediately when discovered, then prioritize presentation/art/audio/motion and visual proof readiness before spending too much effort on deeper P3 systems.

### Options compared

| Option | Benefit | Downside | Fit | Clarity | Fun | Godot Suitability | Complexity | Recommendation |
|---|---|---|---|---|---|---|---|---|
| CONTINUE_AS_PLANNED with no adjustment | Simplest; follows current tree order | May keep producing abstract rules while visual proof remains weak | Medium | Medium | Medium-low until visuals exist | High | Low | Reject as insufficient because the user explicitly rejects text-square/prototype outcomes |
| REWORK_WEAK_NODES globally now | Improves repeated depth-4 leaves | Risks broad re-documenting without targeted evidence | Medium | Medium | Low immediate fun gain | Neutral | Medium-high | Reject broad rework, but require immediate targeted sharpening whenever a specific weak depth-4 leaf is discovered |
| PRIORITIZE_GAME_FEEL immediately before core match contracts | Fights text-square risk fastest | Art/motion may detach from unresolved state/actions/Claim formulas | Medium | Medium | High if done well | High | Medium | Reject as immediate next step; accept as next major emphasis after concrete trigger below |
| PRIORITIZE_GODOT_PROTOTYPE_PREPARATION now | Tangible proof sooner | Risks premature implementation from incomplete contracts | Low now | Medium | Medium | High | High | Reject now; prepare later after rule/state/action/Claim leaf tasks authorize it |
| ADJUST_DIRECTION | Preserves strong concept and Spec Kit discipline while correcting delayed game-feel risk | Slightly changes branch emphasis after core match work | High | High | High | High | Medium | Accept |

### Concrete sequencing trigger

The P2 game-feel emphasis must move forward after the following minimum P1 contracts are complete through required depth 4:

1. `phase-count-and-timing-envelope` all depth-4 leaves,
2. `phase-state-machine-and-handoffs` through depth 4,
3. `simultaneous-planning-and-resolution` through depth 4,
4. `action-economy-and-legal-actions` through depth 4,
5. `claim-objective-state-model` through depth 4.

After these contracts exist, the director should prioritize `presentation-art-audio-motion` before spending extended effort on P3 bots/multiplayer/balance beyond interface planning. This protects the project from remaining abstract too long while still giving visual work enough rule/state grounding.

### Why it serves the final game goal

It keeps the strongest current direction while preventing the project from becoming documentation-rich and artifact-poor. It respects Godot, portrait, Android/iOS, required depth 4, full Spec Kit, and no premature implementation.

### Potential downside

P3 work such as bots/multiplayer/balance may start slightly later than a strict branch order would imply.

### Why the downside is acceptable

P2 Game Feel is a quality requirement, not decoration. The game cannot meet the user vision if it becomes an abstract dashboard, even if bots and multiplayer are well specified.

### How it will be verified later

- `presentation-art-audio-motion` must produce concrete asset and motion requirements.
- `ASSET_MANIFEST.md` and `ASSET_PIPELINE.md` must stop being scaffold-only once assets are authorized.
- Future Godot scenes must show Claim as game objects, not plain text.
- QA/reviewer must explicitly compare against spreadsheet/admin-panel failure mode.

### Artifact proving the decision

This file: `PROJECT_DIRECTION_REVIEW.md`, the existing Spec Kit/status artifacts it cites, the `GATEKEEPER_REVIEW.md` entry appended for this review, and the `DEC-PDR-001` entry added to `DECISIONS.md`.

## 14. Action Plan

### Next step

After spec-critic, report-gatekeeper, and integration reviews are recorded as PASS/CONTINUE, resume from the first true TODO in the current tree: `core-match-systems/match-flow-and-phase-structure/phase-count-and-timing-envelope/rising-debate-pacing`.

### Why

The core match timing path is already open and must complete its remaining depth-4 leaves before implementation. It directly affects strategic tension, comeback timing, active play, and no-turn waiting.

### Files likely to change next

- `.spec-tree/core-match-systems/match-flow-and-phase-structure/phase-count-and-timing-envelope/rising-debate-pacing/*`
- `SPEC_TREE.md`
- `SPEC_TREE_STATUS.md`
- `REQUIREMENTS_TRACE.md`
- `DECISIONS.md` if a significant timing decision is made
- `SYSTEM_CONTRACTS.md` if timing contracts change
- `PROJECT_PROGRESS.json`
- `PROGRESS_DASHBOARD.md`
- `GATEKEEPER_REVIEW.md`

### What must not change

- Do not change Godot 4.x.
- Do not change portrait-only requirement.
- Do not change Android and iPhone/iOS support.
- Do not change REQUIRED_DEPTH=4 or MAX_DEPTH=4.
- Do not start game implementation without approved leaf-node tasks.
- Do not replace Banner of the Majlis or the visible Claim final-reveal win direction unless a future severe blocker is proven.
- Do not treat P2 game feel as optional polish.
