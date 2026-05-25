# Analysis — Game Concept and Win Condition

## Option Comparison

### Option A — First to reach a target score wins

- Benefit: Very easy to understand.
- Downside: Can end early, encourages runaway leaders, and violates the requirement that the match stays open.
- Fit with Godot: Easy.
- Fun/clarity: Clear but shallow.
- Complexity: Low.
- Recommendation: Rejected.

### Option B — Pure territory/area control victory

- Benefit: Visual and strategic.
- Downside: Reintroduces area control as a constraint, which the master plan explicitly removed.
- Fit with Godot: Good for 2D.
- Fun/clarity: Potentially strong but too restrictive.
- Complexity: Moderate.
- Recommendation: Rejected as mandatory concept; may appear later only if child nodes justify it.

### Option C — Hidden victory conditions

- Benefit: Surprise and bluffing.
- Downside: New players may not understand why they lost; violates clear win condition rule.
- Fit with Godot: Possible.
- Fun/clarity: Risky clarity.
- Complexity: Moderate/high.
- Recommendation: Rejected for primary win condition.

### Option D — Fixed-length match with visible Claim from public objectives

- Benefit: Clear goal, supports final-phase tension, prevents early end, allows changing objectives and comeback windows.
- Downside: Must avoid becoming a plain points table.
- Fit with Godot: Strong; can visualize banners, seals, tokens, objectives, and final reveal.
- Fun/clarity: Strong if presentation and feedback are handled well.
- Complexity: Moderate and appropriate.
- Recommendation: Accepted.

## Anti-Dominant Strategy Implications

The accepted concept requires:

- changing public objectives,
- counterplay visibility,
- multiple viable claim sources,
- leader exposure or opportunity cost,
- simulator tests later.

## Anti-Spreadsheet Implications

Claim must be represented as an in-world or game-board state: banners, seals, lanterns, route markers, court tokens, or similar Arabic-first strategic objects. A score number may exist but cannot be the primary experience.

## Branch Conclusion

Proceed with the fixed-length visible-Claim concept direction and expand through the four depth-2 nodes.
