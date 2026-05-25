# Clarification — Comeback Threshold Adaptation

- Node slug: `comeback-threshold-adaptation`
- Depth: 4
- Parent: `/workspaces/mobile-strategy-game-godot/.spec-tree/game-concept-and-win-condition/strategic-tension-and-comeback/anti-snowball-and-balance/`
- Purpose: Define a tightly bounded max-one-Claim threshold adaptation for trailing players when the gap is severe and strategically earned.
- Claim reference: DEC-GCWC-001 fixed-length visible Claim win condition for Banner of the Majlis.
- Scope: Spec Kit planning artifact only; no Godot game implementation is created here.

## Q1: Does this change the Claim win condition?
No. DEC-GCWC-001 remains the parent decision; this node only controls tension and comeback opportunities around Claims.

## Q2: Is comeback a random rubber-band?
No. Comeback requires contesting objectives, spending resources, timing phase shifts, or exploiting visible leader vulnerability.

## Q3: Can the leader still win?
Yes. The leader keeps earned progress and can defend, redirect, or pressure rivals.

## Q4: Does fixed-length mean no early win?
Yes. Threshold-like Claim progress informs advantage, but the match remains open until final reveal unless a future parent changes the rule.

## Q5: How does this fit portrait mobile?
Information is compressed into banner icons, rings, progress bars, and bottom cards rather than wide tables.

## Q6: How are Arabic and English handled?
All labels are localization keys, and UI containers must mirror for RTL/LTR.

## Q7: Does the UI reveal hidden strategy?
Only public Claim, phase, and objective pressure states are displayed.

## Q8: What prevents abuse?
Each mechanic requires eligibility checks, caps, cooldowns, and simulator tests.

## Q9: Will bots use these rules?
Future bot nodes must evaluate the same visible comeback windows as humans.

## Q10: What happens in 2v2?
Eligibility and pressure can be team-scoped while still showing individual contributions elsewhere.

## Q11: What happens in FFA?
The system must avoid kingmaking by exposing shared objective pressure and capped benefits.

## Q12: Is implementation authorized?
No. Tasks describe future Godot files but this node creates planning artifacts only.

## Q13: What Godot nodes matter most?
Control, Label, TextureRect, ProgressBar, Timer, Signal, AnimationPlayer, Resource, and PanelContainer.

## Q14: How is fairness proven?
Future balance simulation and QA scenarios must compare early leader, trailing active, and passive strategies.

## Q15: Can phase events surprise players?
They may create tension but require readable countdowns and visible board previews.

