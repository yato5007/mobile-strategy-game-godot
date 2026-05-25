# Analysis — Opening Council Pacing

## Fit Against Requirements

| Requirement | Fit |
|---|---|
| Strategic, not reaction-speed | Planning targets stay 70-90s with visible reminders. |
| New-player clarity | Phase 1 uses longest timer and first Claim/no-early-victory explanation. |
| 4p FFA | Brief/reveal emphasizes all-player identity, leader, nearest challenger, and compact Claim delta. |
| 2v2 | Brief/reveal emphasizes team total, teammate lane, contribution cue, and opponent pair threat. |
| Portrait mobile | Content is icon-first and concise; no table-dependent presentation. |
| Arabic/English | Requires localization keys and short RTL/LTR-safe text. |
| Anti-runaway | Caps early Claim swing and requires contest/counter/support paths in phases 2-3. |
| Active decisions matter | Passive/no-commit loses tempo/opportunity, while early active choices create visible Claim feedback. |

## Why This Leaf Is Necessary

The parent defines a whole-match timing envelope, but future implementers need precise opening behavior. Without this leaf, phase 1 can become either an overlong tutorial or a rushed reaction window, both of which damage first-match fun and strategic clarity.

## Duration Fit

- Phase 1 expected: 12s brief + 90s first-match planning + 5s lock + 40-45s reveal/update = ~147-152s.
- Phase 2 expected: 10s brief + 75s planning + 4s lock + 35-45s reveal/update = ~124-134s.
- Phase 3 expected: 8-10s brief + 70s planning + 4s lock + 35-45s reveal/update = ~117-129s.
- Opening total expected first-match: ~6.5-6.9 minutes including phase briefs.
- Replay opening with 75s phase 1: ~6.25 minutes or lower with all-ready fast-forward.

This remains within the parent envelope's opening budget and protects the under-30-minute match cap.

## Risk Analysis

| Risk | Impact | Mitigation |
|---|---|---|
| Phase 1 feels slow to experts | Waiting/friction | Replay target is 75s; all-ready fast-forward can reduce idle time. |
| Briefs overload portrait UI | Confusion | Icon-first text, one objective prompt, tap-to-expand details. |
| FFA opening dogpile emerges | Early leader suppression frustration | Show nearest challenger and comeback cue, not only leader. |
| 2v2 becomes chat negotiation | Waiting | Same timer; shared readable intent cues instead of required chat. |
| Early Claim cap makes choices feel weak | Low agency | Keep visible deltas, tempo, and setup benefits while preventing decisive runaway. |

## Validation/Test Approach

- Planning validation: this checklist, QA result, review result.
- Future automated validation: data/config tests for phase 1-3 timing ranges and lock grace.
- Future simulator validation: opening lead distribution after phase 3, passive/no-commit outcomes, FFA dogpile frequency, 2v2 early team lead recovery.
- Future UX QA: first-match players can explain objective, Claim delta, next action choice, and no-early-victory rule after phase 1.
- Future localization QA: Arabic/English brief strings fit portrait HUD and respect RTL/LTR direction.
