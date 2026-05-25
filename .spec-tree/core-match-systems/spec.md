# Specification — Core Match Systems

## Product Question

What core match structure makes `Banner of the Majlis` strategically clear, simultaneous, readable in portrait mobile, under 30 minutes, and ready for later bots, multiplayer, balance, presentation, and Godot implementation branches?

## Selected Match-System Direction

The match is a fixed-length sequence of **Majlis Phases**. Each phase contains a short simultaneous **Council Planning** window, a deterministic **Reveal and Resolve** step, a visual **Claim Update**, and a brief **Pressure Shift** that changes public objectives for the next phase.

Players do not take isolated turns. They select legal strategic actions during the same planning window. The match engine later resolves selected actions against public objectives, player resources, conflict rules, and tie-breakers. The strongest visible Claim at the final Majlis reveal wins.

## Planning-Level Match Loop

1. **Opening Briefing** — public objective set, player/team colors, current Claim, and available action categories are shown.
2. **Council Planning Window** — all players/bots choose a limited plan simultaneously.
3. **Commit Lock** — choices become locked for this beat to prevent reaction-speed advantage.
4. **Reveal and Resolve** — actions resolve by deterministic rule priority, not physical speed.
5. **Claim Update** — public Claim ledger, banner/seal progress, leader threat, and comeback paths update.
6. **Pressure Shift** — objectives, costs, leader exposure, or surge opportunities change visibly.
7. **Final Majlis Reveal** — after the final phase, the highest Claim wins with explanation.

## Match Length Target

- Target: 8 to 10 phases.
- Planning window target: 60 to 90 seconds per phase for human multiplayer.
- Resolution/feedback target: 20 to 45 seconds per phase.
- Full match target: 12 to 22 minutes; hard planning cap: under 30 minutes.
- Bot/local test modes may allow faster auto-commit, but human-readable pacing remains the design baseline.

## Legal Action Categories

This node defines categories only; exact numbers and formulas belong to child nodes.

1. **Claim Objective Action** — pursue a public objective that can increase visible Claim.
2. **Position/Influence Action** — move attention, tokens, envoys, or influence toward a lane/objective/seat on the Majlis board.
3. **Support/Team Action** — assist an ally in 2v2 without becoming a hidden score funnel.
4. **Counter/Disrupt Action** — visibly challenge an opponent's pattern, objective, or momentum.
5. **Prepare/Invest Action** — spend this phase to improve later options without enabling passive stalling.
6. **Comeback/Pressure Action** — contest leader exposure or catch-up opportunity when eligible.

## Claim Resolution Direction

Claim is not a raw total updated by arbitrary arithmetic. It is a visible ledger of earned public achievements, represented later by banners, seals, medallions, or token states. Resolution must answer:

- Which public objective was pursued?
- Which legal action contributed?
- Was there conflict or support?
- What Claim changed and why?
- What visual explanation will the player see?

## Public Information Model

The default match model is mostly public. Players should see objectives, Claim standings, phase count, public resources/constraints, opponent pattern hints, leader threat, and available counterplay. Hidden information is allowed only for committed plans before reveal and any future child-node-specific tactical ambiguity that remains explainable after reveal.

## Resource/Constraint Direction

Use a small, readable action economy rather than many resources. Planning-level default:

- Each phase grants a limited **Council Focus** budget for action selection.
- Some actions require **Influence** or positional presence, but not heavy economic management.
- Repeating the same plan raises public pressure/cost or lowers efficiency via DEC-GCWC-003 safeguards.
- Leaders may face exposure windows; trailing players may gain contested opportunities, not free points.

## Required Depth-2 Children

1. `match-flow-and-phase-structure` — exact phase structure, pacing, fixed-length match envelope, final reveal timing.
2. `simultaneous-planning-and-resolution` — plan commit, reveal ordering, deterministic conflict resolution, tie-breakers, anti-speed rules.
3. `action-economy-and-legal-actions` — concrete action categories, limits, resources, constraints, team support boundaries.
4. `claim-objective-state-model` — planning-level Claim ledger, objective states, public information, event outputs for UI/bots/simulator.

Each depth-2 child must later reach depth 4 with full Spec Kit.

## Acceptance Criteria

- The core match loop supports fixed-length play and final Claim victory.
- Players act through simultaneous planning, not turn waiting or reaction speed.
- Legal action categories are concrete enough for child branches.
- Public information supports first-match clarity and counterplay.
- Match timing can plausibly stay below 30 minutes.
- Resources/constraints add strategic pressure without spreadsheet complexity.
- The node creates no game code and no Godot scenes.
