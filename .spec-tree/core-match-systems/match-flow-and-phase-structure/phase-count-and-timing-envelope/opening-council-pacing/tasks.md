# Tasks — Opening Council Pacing

## Completed Planning Tasks

- [x] Create depth-4 leaf node directory.
- [x] Create full Spec Kit artifacts for the node.
- [x] Specify phases 1-3 planning timer targets/ranges.
- [x] Specify phase brief content and localization needs.
- [x] Specify lock grace and reveal/update pacing.
- [x] Compare opening pacing options and document AUTONOMOUS_DECISION.
- [x] Define onboarding/first-match clarity requirements.
- [x] Define anti-runaway and active-decision opening constraints.
- [x] Define FFA and 2v2 opening attention requirements.
- [x] Update project trace/status/progress/decision/contract files.

## Later Implementation Task Instructions — Not Authorized Now

When implementation is authorized by the relevant future implementer/story, create the following artifacts without changing gameplay scope:

1. **Opening phase timing config**
   - Define data for phases 1-3: phase id, act key, brief duration, planning target/range, lock grace, reveal/update target.
   - Ensure phase 1 supports first-match and replay planning targets.

2. **Localization keys**
   - Add keys for Opening Council act name, phase 1-3 brief labels, objective prompt, FFA mode line, 2v2 mode line, phase-1 no-early-victory reminder, and timer reminders.
   - Avoid hardcoded player-facing strings.

3. **Phase state machine integration**
   - Consume opening timing data from future phase-state-machine node.
   - Lock commitments after timer plus lock grace.
   - Prevent lock grace from reopening decisions.

4. **Presentation event budget hooks**
   - Emit reveal/update stages: action category reveal, conflict/objective summary, Claim delta, next pressure bridge.
   - Keep total reveal/update inside 35-45s unless future tests revise budgets.

5. **Validation tests**
   - Assert phase 1-3 timing values are within accepted ranges.
   - Assert no early-victory completion before phase 9.
   - Assert FFA and 2v2 use same timing model with different brief parameters.
   - Assert first-match phase 1 remains non-reaction-speed (>=90 target or configured equivalent).

## Acceptance Checklist for Later Implementer

- [ ] Implementation uses data/config instead of magic numbers scattered through UI.
- [ ] All player-facing text uses localization keys.
- [ ] Portrait HUD can show act, phase, timer, objective, and Claim context without a table.
- [ ] Opening Claim swing caps are enforced by future Claim formula implementation.
- [ ] Tests or simulator hooks prove opening cannot create unrecoverable victory before phase 4.
