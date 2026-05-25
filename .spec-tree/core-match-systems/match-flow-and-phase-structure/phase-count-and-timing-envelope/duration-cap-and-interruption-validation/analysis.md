# Analysis — Duration Cap and Interruption Validation

## Constraints Analysis

| Constraint | Source | Satisfied? | Evidence |
|---|---|---|---|
| Under 30-minute match | MASTER 6.8 | Yes | Conservative total 23m + 2m reserve = 25m; hard cap 30m enforced |
| Strategic not speed | MASTER 6.1 | Yes | Planning times preserved; reserve only for genuine interruptions |
| Active play rewarded | MASTER 6.16-17 | Yes | Disconnected players auto-ready; idle penalty separate |
| Comeback possible | MASTER 6.10 | Yes | Default plan is neutral; disconnected players not disqualified |
| FFA and 2v2 | MASTER 6.12-14 | Yes | Per-player reserve; 2v2 teammate continues |
| Mobile-ready | MASTER 9 | Yes | Disconnect/background/reconnect scenarios handled |
| Hard cap | — | Yes | 1800s = 30 minutes; safety valve jumps to Final Reveal |

## Completeness Check

- Duration formula: explicit.
- Validation table: 9 phases + final reveal + reserve.
- Interruption scenarios: 4 defined (A-D).
- Auto-ready policy: 4 situations with action sets.
- FFA specifics: per-player reserve.
- 2v2 specifics: teammate continues during teammate disconnect.
- Hard cap: jumps to Final Majlis Reveal.
- Localization: icon-first disconnect labels.

## Risk Assessment

| Risk | Likelihood | Impact | Mitigation |
|---|---|---|---|
| Default plan becomes meta | Low | High | Neutral by design; not optimized |
| 30s disconnect too short for network switch | Medium | Low | 30s is generous for mobile; reserve extends total to 120s |
| Hard cap creates rush at end | Very low | Medium | Hard cap is safety valve; matches target 16-23 minutes |

## Validation Metrics (future)

- Percentage of simulated matches reaching hard cap (target: 0% in normal play).
- Average interruption reserve consumed per match.
- Disconnect frequency in mobile playtest vs simulated bot matches.
