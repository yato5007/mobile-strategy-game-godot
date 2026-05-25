# Plan — Opening Council Pacing

## Before Large Task Statement

- Priority level: P1 Core Fun and Gameplay, with P2/P3 implications for presentation and multiplayer readability.
- Why it matters: The first three phases determine whether players understand the objective, trust Claim changes, and make strategic—not rushed—choices.
- If ignored: The match can feel confusing, reaction-driven, or decided too early; later systems may invent incompatible opening timers.
- Appropriate effort: Medium planning effort; no implementation.
- Artifact proving completion: Full depth-4 Spec Kit artifacts, timing targets, implementation instructions, QA/review results, and tracking updates.

## Execution Plan

1. Anchor to parent timing envelope and 9-phase fixed match decisions.
2. Compare opening pacing options and select one autonomous decision.
3. Specify phase 1-3 timers, briefs, lock grace, and reveal/update pacing.
4. Define FFA and 2v2 attention differences.
5. Define onboarding, localization, and anti-runaway constraints.
6. Produce leaf implementation task instructions and validation approach.
7. Update trace, tree/status, progress, decisions, contracts, and parent summary.

## Opening Pacing Options Compared

| Option | Benefit | Downside | Godot/Mobile Fit | Fun/Clarity Impact | Recommendation |
|---|---|---|---|---|---|
| Uniform 75s for phases 1-3 | Simple to explain and implement | Phase 1 is tight for new players and RTL/LTR brief reading | Strong technical fit | Medium | Reject as default; keep as replay phase-1 value. |
| 120s tutorial-heavy opening | Maximizes explanation | Multiplayer drag, waiting, and tutorial fatigue | Technically easy but pacing poor | Low for repeat play | Reject. |
| Guided ramp 90/75/70 targets | Clear first phase, smooth tempo learning, under cap | Slight variable-timer complexity | Strong if HUD labels act/phase | Strong | Adopt. |
| Short 45-60s opening | Fast | Reaction-speed pressure, poor accessibility | Easy but poor fit | Weak | Reject. |

## Implementation Readiness Plan

Later authorized implementer should convert this node into:

- A data-only opening phase timing config for phases 1-3.
- Localizable phase brief keys and parameters, not hardcoded strings.
- Timer state hooks consumed by future phase state machine and portrait HUD.
- Reveal/update event budget markers consumed by presentation layer.
- Validation tests that assert timing values and no early-victory flag.

## No-Implementation Guard

This leaf authorizes future implementation instructions only. It does not authorize creating Godot scripts, scenes, tests, assets, or export configuration now.
