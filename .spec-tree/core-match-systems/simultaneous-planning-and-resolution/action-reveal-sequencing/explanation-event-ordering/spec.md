# spec.md — Explanation Event Ordering
Events ordered: ACTION_EXECUTED → CONFLICT_DETECTED → TIE_BROKEN → CLAIM_DELTA_APPLIED. Within each type: by player/relevance. Localizable event keys. No implementation.
