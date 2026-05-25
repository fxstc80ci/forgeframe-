# ForgeFrame Tool Capability Matrix

**Use:** Track what each AI/runtime tool can safely do in a project.
**Author:** Craig MacPherson / Arti Muse
**Creation Date:** 2026-05-25

---

## Purpose

ForgeFrame supports multiple tools. Do not assume a feature exists across all runtimes. Each project should declare which tools support skills, agents, hooks, loops, schedules, browser validation, GitHub operations, file edits, shell commands, and external services.

---

## Capability Table

| Tool / Runtime | Skills | Agents | Hooks | Loops | Schedules | GitHub | Local Files | Shell | Browser | Notes |
| --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- |
| ChatGPT Plus + GitHub connector | Yes | Reasoning-level | No local hooks | No | Tasks only where supported | Yes | GitHub files only | No | No | Best for architecture, QA, issues, PRs. |
| Codex CLI | Runtime-dependent | Runtime-dependent | Runtime-dependent | Runtime-dependent | Runtime-dependent | Via git/gh if configured | Yes | Yes | Via external tools | Best for local implementation. |
| Claude Code | Yes | Yes | Yes where configured | Yes where configured | Yes where supported | Via git/gh if configured | Yes | Yes | Via external tools | Confirm local configuration. |
| agent-browser | Specialized | No | No | No | No | No | No | Browser only | Yes | Best for UI/UX regression. |
| GitHub App | No | No | No | No | No | Yes | Repo contents | No | No | Best for repository operations. |
| Sentinel / MCP tools | Project-specific | Project-specific | Project-specific | Project-specific | Project-specific | Optional | Optional | Optional | Optional | Must be explicitly authorized. |

---

## Required Project Matrix Fields

```text
tool name
available yes/no
authorized yes/no
supports skills
supports agents
supports hooks
supports loops
supports schedules
supports local shell
supports browser automation
supports GitHub operations
supports file edits
supports external network
safety restrictions
fallback method
```

---

## Use Rule

If a work package relies on a capability, the capability must be declared available and authorized. Otherwise the builder must use a fallback or stop with:

```text
TOOL_CAPABILITY_MISSING
```
