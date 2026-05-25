# Plan — Rising Debate Pacing

## Before Large Task Statement

- Priority level: P1 Core Fun and Gameplay, with P2 presentation and P3 multiplayer/bot implications.
- Why it matters: Phases 4-6 decide whether the match develops tension, adaptation, and comeback paths instead of becoming a flat score race.
- If ignored: Mid-match could feel repetitive, leaders may snowball invisibly, FFA can become blind dogpile, and 2v2 can feel uncoordinated.
- Appropriate effort: Medium planning effort; no implementation.
- Artifact proving completion: Full depth-4 artifacts, timing table, autonomous decision, integration notes, QA/review results, trace/status/progress updates.

## Execution Plan

1. Anchor phases 4-6 to parent variable capped timing envelope and previous opening leaf.
2. Compare mid-act cadence options and select one autonomous decision.
3. Specify timing table, reveal/update beat structure, and pressure outputs.
4. Define FFA and 2v2 differences.
5. Define localization, portrait readability, and anti-spreadsheet outputs.
6. Write future implementation instructions and validation metrics without code.
7. Update project tracking, decisions, contracts, trace, and parent summary.

## Mid-Match Cadence Options Compared

| Option | Benefit | Downside | Godot/Mobile Fit | Fun/Clarity Impact | Recommendation |
|---|---|---|---|---|---|
| Opening-like 70-75s timers | Very readable and simple | Mid-match lacks urgency; match may drag | Easy | Medium | Reject as default. |
| Very short 40-50s timers | High tension | Reaction-speed pressure; poor accessibility/localization | Easy technically, poor UX | Low | Reject. |
| Dynamic timers by Claim gap | Responds to match state | Feels arbitrary; sync/bot/test complexity | Risky | Mixed | Reject for default. |
| Fixed compressed 65/60/60 with richer reveal/update | Strategic but tense; readable pressure outputs | Slightly more config/detail | Strong | Strong | Adopt. |

## Future Implementation Readiness Plan

Later authorized implementers should convert this node into:

- Data-only timing config entries for phases 4-6.
- Localizable phase brief and cue keys.
- Phase state machine event requirements for `rising_debate_started`, `leader_threat_changed`, `strategy_shift_available`, and `team_alignment_changed`.
- Presentation-layer hooks for threat ring, lanterns, shift tile, comeback lane, FFA fan, and teammate braid.
- Validation tests that assert timer ranges, no pre-phase-7 victory lock, and mode-specific cue availability.

## No-Implementation Guard

This leaf authorizes future implementation instructions only. It does not authorize creating Godot scripts, scenes, assets, simulator code, runtime tests, or export files now.
