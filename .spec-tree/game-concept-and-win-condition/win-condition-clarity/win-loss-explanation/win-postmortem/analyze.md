# Analysis: Win Postmortem

## Mobile UX Analysis
- **Thumb zone**: The horizontal timeline lives in the middle-third of the screen, which is the natural thumb-reach zone. Players can scroll with one hand.
- **Card size**: 120x80px is tappable but not button-like. This is intentionally read-only to avoid accidental taps during the emotional post-win moment.
- **Scroll vs swipe**: Using `ScrollContainer` ensures native inertia and momentum. Custom swipe would be more work and less predictable.

## Cognitive Load
- The timeline tells a story: "First I claimed this, then that, then the winning claim."
- Three data points per card (order, name, turn) is the upper limit for glanceability.
- The visual connecting line reinforces the narrative sequence without requiring reading.
- Color coding in 2v2 adds a fourth dimension (who claimed what) without overloading text.

## Psychological Design
- Seeing claims in order triggers the "serial position effect" — players remember the first and last claims best. The first claim card and the final victory card are naturally emphasized.
- The victory flag icon on the last card creates a satisfying visual payoff.
- For blowout wins (few opponent claims), the postmortem still maintains value by showing the clean path.
- For close wins (claim threshold reached by 1), the postmortem becomes a tense narrative of "every claim mattered."

## RTL Implications
- The connecting line drawing code must invert the start/end points in RTL mode.
- Arabic ordinal numbers differ from English: "الأول", "الثاني", "الثالث" — the badge text must use locale-aware ordinal formatting.
- Icon placement: the start icon appears on the right in Arabic mode, not the left.
- The scrollbar appearing on the left in Arabic mode is handled automatically by Godot if `is_layout_rtl()` returns true.

## Performance
- 3-5 cards only → negligible performance cost.
- One `Tween` per card for animation → max 5 active tweens, safe on any mobile device.
- `draw_line()` on a `Control` overlay is called once on populate, not every frame. No CPU concern.
