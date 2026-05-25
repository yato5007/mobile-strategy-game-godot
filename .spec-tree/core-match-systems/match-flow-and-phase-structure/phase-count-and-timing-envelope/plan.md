# Plan — Phase Count and Timing Envelope

## Before Large Task Statement

- Priority level: P1 Core Fun and Gameplay.
- Why it matters: Timing controls whether the fixed 9-phase match feels strategic, fair, active, and mobile-suitable.
- If ignored: Future systems may exceed 30 minutes, create waiting, weaken comeback pacing, or contradict no-early-victory.
- Appropriate effort: Medium planning effort; no implementation.
- Artifact proving completion: Full node artifacts, timing tables, depth-4 leaf plan, and tracking updates.

## Execution Plan

1. Anchor to parent 9-phase three-act decision DEC-CMS-MFPS-001.
2. Compare timing models and select a variable capped model.
3. Define per-phase attention goals and timing ranges.
4. Reserve mobile interruption budget without allowing indefinite extension.
5. Validate expected and stress-case duration against under-30-minute requirement.
6. Propose depth-4 leaves for opening, mid, final, and duration validation.
7. Update trace, tree, status, decisions, contracts, progress, and parent summary.

## Timing Options Compared

| Option | Benefit | Downside | Fit for Godot/Mobile | Fun/Clarity Impact | Recommendation |
|---|---|---|---|---|---|
| Flat 75s planning + 40s update | Easy to implement and explain | Opening may be rushed; final event density may be compressed | Strong technically | Medium clarity | Reject as default, keep as implementation simplification candidate only if UX proves variable timers confusing. |
| Short 30-45s phases | Very fast matches | Reaction pressure, poor accessibility, weak strategy | Technically easy | Poor strategic fit | Reject. |
| Variable capped by act | Matches learning/adaptation/final drama, preserves cap | Slightly more UI explanation | Strong if timer labels are clear | Strong | Adopt. |
| Long asynchronous timers | Handles interruptions | Kills active mobile pacing and multiplayer energy | Weak | Poor | Reject. |

## Duration Budget

| Component | Expected | Conservative Max |
|---|---:|---:|
| Opening match brief | 45s | 60s |
| Phase 1-3 planning | 235s | 270s |
| Phase 1-3 reveal/update | 120s | 135s |
| Phase 4-6 planning | 205s | 210s |
| Phase 4-6 reveal/update | 135s | 150s |
| Phase 7-9 planning | 190s | 195s |
| Phase 7-9 reveal/update | 155s | 170s |
| Commit-lock grace total | 36s | 45s |
| One interruption recovery reserve | 0-15s | 15s |
| Final Majlis Reveal | 75s | 90s |
| **Total** | **~20.0 min** | **~22.3 min** |

The conservative max leaves over 7 minutes of buffer below the 30-minute ceiling for UI animation variance, device latency, and manual QA overhead.

## Depth-4 Child Plan

1. `opening-council-pacing` — phases 1-3 onboarding, first Claim comprehension, safe timer ranges, anti-runaway opening pacing.
2. `rising-debate-pacing` — phases 4-6 mid-game intensification, strategy-shift timing, FFA/2v2 attention goals.
3. `final-petition-pacing` — phases 7-9 final-act urgency, last comeback/counterplay timing, no early victory reinforcement.
4. `duration-cap-and-interruption-validation` — duration math, stress scenarios, reconnect grace budget, simulator/QA validation requirements.

## No-Implementation Guard

This plan authorizes documentation and planning updates only. Godot timers, scenes, scripts, simulator code, networking behavior, and UI implementation remain blocked until future depth-4 leaf tasks explicitly authorize them.
