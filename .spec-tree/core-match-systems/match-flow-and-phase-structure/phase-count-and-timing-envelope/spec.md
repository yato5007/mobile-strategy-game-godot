# Specification — Phase Count and Timing Envelope

## Product Question

How should the 9 scheduled Majlis phases be timed so a 4-player FFA or 2v2 match feels strategic, active, mobile-tolerant, and reliably under 30 minutes?

## Concrete 9-Phase Arc

| Phase | Act | Player Attention Goal | Planning Timer Target | Reveal/Update Target | Pacing Role |
|---:|---|---|---:|---:|---|
| 1 | Opening Council | Understand current objective, make safe first commitment, see Claim starts. | 90s first-match / 75s replay | 35-45s | Gentle onboarding; no irreversible lead. |
| 2 | Opening Council | React to first Claim delta and learn opponent intent. | 75s | 35-45s | First adaptation. |
| 3 | Opening Council | Choose whether to build position, contest, or prepare. | 70-75s | 35-45s | End of opening; first visible pressure pivot. |
| 4 | Rising Debate | Identify leader threat and choose counter/support direction. | 70s | 40-50s | Mid-match intensification begins. |
| 5 | Rising Debate | Execute main strategy shift or punish repetition. | 65-70s | 40-50s | Highest tactical information density. |
| 6 | Rising Debate | Secure comeback lane or protect lead before final act. | 65-70s | 40-50s | Midpoint-to-final transition. |
| 7 | Final Petition | Read final-act risk, leader exposure, and last comeback windows. | 65s | 45-55s | Stakes rise; fewer phases remain. |
| 8 | Final Petition | Commit final counterplay/support setup. | 60-65s | 45-55s | Penultimate pressure. |
| 9 | Final Petition | Make last legal commitment knowing final reveal follows. | 60s | 50-60s | Final action; no victory until reveal. |

## Timing Envelope

- Opening match brief before phase 1: 30-60 seconds, skippable only in replay/local test contexts.
- Phase brief: 8-12 seconds per phase, included in reveal/update target where UI combines beats.
- Council planning timer: 60-90 seconds depending on phase and context.
- Commit lock grace: 3-5 seconds, only to stabilize submissions; not a new decision window.
- Reveal + Claim update + pressure shift: 35-60 seconds depending on phase and event density.
- Final Majlis Reveal: 60-90 seconds.
- Expected human multiplayer match: 18-23 minutes.
- Stress-case cap: must remain below 30 minutes if each phase uses its maximum approved timing plus one interruption recovery event.

## Mobile Interruption Tolerance

- A player who backgrounds the app during planning can reconnect before commit lock if the timer remains active.
- One short reconnect grace per player per match is allowed at planning lock boundary, capped at 15 seconds.
- If a player misses lock after grace, future multiplayer/bot branches must define safe default/auto-plan behavior; this node only reserves time budget.
- Local/bot matches may auto-ready or fast-forward after all active participants are ready.
- No interruption rule may extend the match beyond the hard 30-minute design ceiling.

## FFA Pacing

- FFA brief/update emphasis: all-player standings, leader threat, nearest challenger, and public pressure shift.
- Reveal windows may use the high end of the target range when four players create multi-way Claim movement.
- Attention goal is broad board literacy: players must know who leads, who can catch up, and which objective matters next.

## 2v2 Pacing

- 2v2 brief/update emphasis: team Claim total, teammate contribution, opponent pair threat, and support/counter timing.
- Planning time must not require private chat or long negotiation; simultaneous commitments remain individual unless future multiplayer tasks explicitly add team communication.
- Attention goal is coordinated-but-fast strategy: understand teammate lane without turning the phase into a negotiation lobby.

## AUTONOMOUS_DECISION — DEC-CMS-PCTE-001 Timed 9-Phase Majlis Envelope

- Decision made: Use a variable-but-capped 9-phase timing envelope: longer opening planning, slightly shorter late planning, and longer late reveal/update beats, targeting 18-23 minutes with a hard under-30-minute cap.
- Options compared:
  - Flat 75s planning and flat 40s updates for every phase: simple, but fails to recognize onboarding and late-event density.
  - Very short 30-45s planning phases: fast, but pushes reaction-speed play and hurts new/mobile players.
  - Variable capped timers by act: accepted because it supports learning, mid-match adaptation, final-act drama, and under-30-minute validation.
  - Long asynchronous timers: rejected because they break active simultaneous multiplayer and mobile match length.
- Why it serves the final game: It preserves strategic choice without turning the match into a slow board-game session or a twitch reaction game.
- Potential downside: Variable timing can be harder to explain than one constant timer.
- Why downside is acceptable: The three-act naming, visible timer, and phase-number HUD can teach the rhythm; later UX/localization nodes must make timer labels clear.
- How it will be verified later: Duration table tests, simulator duration distribution, human QA timing walkthrough, FFA/2v2 pacing review, and interruption stress scenarios.
- Artifact proving decision: This node's Spec Kit artifacts and DECISIONS.md entry DEC-CMS-PCTE-001.

## Acceptance Criteria

1. The node documents all 9 phases with act names, attention goals, planning timer ranges, and reveal/update timing.
2. The node preserves final reveal only after phase 9 and rejects early victory triggers.
3. The node defines expected and hard-cap duration math below 30 minutes.
4. The node includes mobile interruption tolerance without unlimited pauses.
5. The node distinguishes FFA and 2v2 pacing needs while keeping one shared phase count.
6. The node proposes meaningful depth-4 leaves that can produce implementation-relevant planning.
