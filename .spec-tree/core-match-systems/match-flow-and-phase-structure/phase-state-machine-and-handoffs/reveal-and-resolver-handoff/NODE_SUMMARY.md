# analysis.md — Reveal and Resolver Handoff

Reveal pacing from sibling timing envelope. Resolver deterministic contract. Explanation atoms designed for localization (key-based, not free text). PASS.

# checklist.md — PASS. 12 files. No code. Concrete beats, atoms, contracts.
# implementation-result.md — Planning only. No Godot code.
# qa-result.md — PASS.
# review-result.md — PASS. Not template-like.
# integration-notes.md — Connects to: state machine, resolver, HUD, presentation, localization. Events: PHASE_COMMITTED, PHASE_RESOLVED, REVEAL_BEAT_PLAYED, EXPLANATION_ATOM_EMITTED.
# plan.md — Scope: resolver invocation, reveal beats per act, explanation atoms, conflict handoff. Risks: beat overrun mitigated by fixed counts.
# tasks.md — 6 planning tasks DONE. Future: resolver impl, beat sequencer, atom localizer.
## NODE_SUMMARY.md — Reveal and Resolver Handoff

Purpose: Define resolver invocation protocol, per-act reveal beats, explanation atoms, conflict/tie-break handoff.

Parent: phase-state-machine-and-handoffs

Decisions: Fixed beat counts (4/5/5), deterministic resolver, explanation atoms as structured localizable keys.

Next: claim-update-and-event-propagation depth-4 leaf.
