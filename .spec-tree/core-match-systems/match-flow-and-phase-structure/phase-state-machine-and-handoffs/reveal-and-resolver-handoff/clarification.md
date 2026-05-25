# clarification.md — Reveal and Resolver Handoff

Q1: Why fixed beat counts? Predictable UX pacing; dynamic counts risk overruns.
Q2: Where do tie-break rules live? `final-reveal-and-mode-completion` for final ties; resolver handles per-phase ties internally.
Q3: Can resolver fail? No in mock; online resolver is deterministic. Timeout = default neutral outcome.
