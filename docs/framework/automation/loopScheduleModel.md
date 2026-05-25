# ForgeFrame Loop and Schedule Model

**Use:** Define recurring automation patterns for runtimes that support loops or scheduled runs.
**Author:** Craig MacPherson / Arti Muse
**Creation Date:** 2026-05-25

---

## Purpose

Loops and schedules let an agent check work repeatedly without repeated operator prompts. ForgeFrame treats them as optional capability-based automation. Do not assume support unless the tool capability matrix confirms it.

---

## Local Loops

Local loops run inside an active agent session.

Recommended uses:

```text
check whether tests completed
check whether queue still has TODO work
check whether generated artifacts need cleanup
check whether a stop gate appeared
check whether a PR or commit is ready
```

---

## Scheduled Reviews

Schedules run at defined times or intervals where the runtime supports them.

Recommended uses:

```text
weekly skill review
weekly stale issue/work package review
nightly dependency/security scan
nightly acceptance/regression run
monthly framework template review
periodic learnings/pattern consolidation
```

---

## Safety Rules

```text
never use schedules to mutate production without approval
never use loops to bypass stop gates
log every recurring action
rate limit recurring tasks
set budget limits where model/API cost applies
include a disable/kill switch
```

---

## Loop Manifest Fields

```text
loop name
interval
runtime/tool
purpose
inputs checked
actions allowed
stop conditions
budget/rate limit
logging path
owner/review cadence
```

---

## Schedule Manifest Fields

```text
schedule name
frequency
runtime/tool
purpose
inputs checked
actions allowed
approval required yes/no
budget/rate limit
logging path
owner/review cadence
```
