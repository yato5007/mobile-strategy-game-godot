# Plan — Commit Lock and Action Binding

## Scope

Depth-4 leaf defining commit lock protocol, action serialization schema, early-commit policy, and per-player/per-team lock semantics.

## Risks

| Risk | Mitigation |
|---|---|
| Action serialization too large | Schema uses IDs and enums; no free text |
| All-ready trivializes decisions | 15s floor enforced |
| 2v2 teammate commit causes confusion | Icon only; no action preview |

No Godot implementation.
