# ForgeFrame Hook Model

**Use:** Define optional event-triggered automation patterns for tools that support hooks.
**Author:** Craig MacPherson / Arti Muse
**Creation Date:** 2026-05-25

---

## Purpose

Hooks run when an event occurs in a supported coding-agent runtime. ForgeFrame describes hook intent in a tool-neutral way. A project must confirm tool support in `toolCapabilityMatrix.md` before relying on hooks.

---

## Common Hook Events

```text
session start
post file edit
post command/tool use
before commit
on stop/checkpoint
knowledge or pattern file change
```

---

## Standard Hook Types

| Hook | Purpose |
| --- | --- |
| Session Start | Load repo instructions, queue, stop gates, and active phase map. |
| Post Edit Validation | Run formatting, linting, or focused checks after safe file edits. |
| Stop / Continue | Check whether TODO work remains and whether continuation is safe. |
| Knowledge Ingestion | Update learnings/pattern index when durable knowledge files change. |

---

## Hook Safety Rules

```text
hooks must be deterministic where practical
hooks must log what they did
hooks must not expose secrets
hooks must not mutate production resources
hooks must have a safe failure mode
hooks must be documented before activation
```

---

## Stop / Continue Hook Logic

A stop/continue hook should continue only when:

```text
worktree is safe
tests are passing or next test is known
queue has TODO work
no stop gate is active
no operator approval is required
```

It should stop when:

```text
queue is ambiguous
tests fail without scoped fix
secrets risk exists
unsafe environment is required
operator approval is needed
```

---

## Hook Manifest Fields

```text
hook name
event
runtime/tool support
command or skill invoked
allowed file scope
expected output
failure behavior
logging path
owner/review cadence
```
