# MCP_SERVERS_PLAN.md

This is a plan only. Do not add active MCP servers unless their benefit is documented and they directly serve the project.

## Priority Order

| MCP | Status | Benefit | Downside | Activation Rule |
|---|---|---|---|---|
| Context7 | Planned/available when needed | Fresh docs for Godot, GDScript, multiplayer, export, and tools | Can distract if queried unnecessarily | Use when APIs/build steps are uncertain |
| Filesystem | Deferred | Structured file access for external assistants | OpenCode already has file tools | Add only if external workflow needs it |
| Git | Deferred | Git-aware automation | Can duplicate scripts | Add only if checkpoint workflow needs richer automation |
| GitHub | Deferred | Issues/PR integration | Requires auth and can add process overhead | Add after Spec Kit tasks stabilize |
| Online multiplayer service MCP | Future | Could help later network integration | Premature service coupling | Only after multiplayer solution decision |

## Context7 Usage Plan

- Query when Godot/GDScript/export APIs are uncertain.
- Prefer official/current docs over memory.
- Do not use Context7 as proof that code works; validate with tests/builds.

## Rule for New MCP Servers

Before adding any MCP config, update `DECISIONS.md` with benefit, downside, project fit, activation timing, and stop condition.
