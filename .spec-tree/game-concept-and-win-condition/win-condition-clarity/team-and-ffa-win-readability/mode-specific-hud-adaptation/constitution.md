# Constitution: Mode-Specific HUD Adaptation

## Node Identity
- Node: `mode-specific-hud-adaptation`.
- Depth: 4.
- Parent: `team-and-ffa-win-readability`.
- Scope: during-match Claim HUD differences for 2v2 and FFA.
- Implementation type: future UI leaf tasks only.

## Principles
1. Players must know the active mode during the match, not only at the end.
2. 2v2 HUD emphasizes team total and teammate relationship.
3. FFA HUD emphasizes four individual standings.
4. HUD must stay compact in portrait orientation.
5. HUD must not obscure the play area or core decisions.
6. Arabic and English must fit without abbreviations that break meaning.
7. Color must be reinforced by icons, labels, grouping, or shapes.
8. HUD data must come from match state, not duplicate rule logic.

## Required Content
- Mode label or icon.
- Claim threshold progress.
- Team grouped progress for 2v2.
- Individual ranked progress for FFA.
- Local player emphasis.
- Rival threat indicator compatible with existing `claim-progress-display` decisions.

## Prohibited Content
- One HUD that hides teammate progress in 2v2.
- FFA HUD that only shows local player and leader.
- Landscape-only score strips.
- Hardcoded English mode labels.
