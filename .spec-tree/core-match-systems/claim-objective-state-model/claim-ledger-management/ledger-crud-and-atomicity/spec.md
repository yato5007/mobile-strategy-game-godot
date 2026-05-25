# spec.md — Ledger CRUD and Atomicity
Ledger: per-player/per-team Claim total. Atomic delta: all phase deltas applied in one transaction. Rollback on error. CRUD operations: CREATE (init 0), READ (get total/deltas), UPDATE (apply delta), no DELETE (history preserved). No implementation.
