# Analyze — Comeback Mechanics And Events

- Node slug: `comeback-mechanics-and-events`
- Depth: 3
- Parent: `/workspaces/mobile-strategy-game-godot/.spec-tree/game-concept-and-win-condition/strategic-tension-and-comeback/`
- Purpose: Specify earned comeback mechanics and timed events that let trailing players contest Claim progress through skill, positioning, and resource commitment.
- Claim reference: DEC-GCWC-001 fixed-length visible Claim win condition for Banner of the Majlis.
- Scope: Spec Kit planning artifact only; no Godot game implementation is created here.

## Mobile UX Analysis
1. A 6-inch portrait screen cannot show full standings, board, phase timeline, and explanations at once.
2. The correct solution is layered disclosure: always-visible icons plus tap-to-expand bottom cards.
3. The top Claim strip must be compact and use TextureRect banner stacks instead of wide text.
4. The central board must keep objective pressure visible through rings, pulses, and limited labels.
5. The bottom thumb zone is the best place for immediate comeback action details.
6. Timers should be visual and calm; frantic countdowns would imply a reaction game.
7. Vibration, SFX, and AnimationPlayer cues can support tension but must not replace readable state.

## Arabic RTL Considerations
8. Arabic UI must use RTL-aware containers and mirrored flow for Claim strips and detail cards.
9. Numerals and Claim counts must remain unambiguous in Arabic and English locales.
10. Arabic labels may be longer, so Label nodes need autowrap, minimum size, and icon-first fallback.
11. Direction-sensitive arrows for pressure or comeback path must flip under RTL.
12. TextureRect icons for banners should avoid culturally inappropriate symbols and should read without text.
13. Localization keys must cover phase names, pressure reasons, eligibility explanations, and final warnings.
14. Do not bake Arabic text into textures; use font rendering and localization resources.

## Balance Analysis
15. Comeback mechanics can easily become unfair if they reward being behind without action.
16. Every benefit must be tied to contested objectives, exposed leader state, or phase planning.
17. Caps are essential; a max-one-Claim adaptation prevents large hidden rubber-band swings.
18. Leader pressure must not create automatic dogpiling that makes leadership feel bad.
19. Phase shifts should redistribute opportunity but preserve already earned Claim records.
20. Passive players must not be the best beneficiaries; active contesting should unlock most recovery.
21. FFA requires kingmaking checks because three players can over-focus the leader.
22. 2v2 requires team-gap logic so one teammate cannot exploit individual trailing status unfairly.
23. Simulator metrics should include leader conversion rate, comeback success rate, passive win rate, and final-phase closeness.
24. QA should validate that players can explain why a comeback window opened.
25. Reviewer should reject any unclear, hidden, or spreadsheet-only comeback explanation.
