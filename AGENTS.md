# AGENTS.md

**Use:** Repository-level instructions for autonomous coding agents using ForgeFrame.  
**Author:** Craig MacPherson / Arti Muse  
**Creation Date:** 2026-05-22  
**Change Record:**  
- 2026-05-22 - Initial ForgeFrame agent instructions.
- 2026-05-25 - Added mandatory startup checklist, code-map, and reuse-before-create controls.

---

## Mission

This repository is a ForgeFrame template. Its purpose is to help AI agents build enterprise-grade software systems from versioned architecture, requirements, work packages, task cards, safety gates, code maps, reuse rules, and acceptance criteria.

Agents working in repositories derived from ForgeFrame must treat the repository documentation as the durable build memory.

---

## Required reading order

Before making changes, read:

```text
README.md
AGENTS.md
docs/architecture.md
docs/autonomousBuildDoctrine.md
templates/requirements.md
templates/design.md
templates/workPackages.md
templates/taskCards.md
templates/autonomousBuildRules.md
templates/continuousAutonomousMode.md
templates/extendedAutonomousTaskQueue.md
templates/acceptanceCriteria.md
templates/startupChecklist.md
templates/codeMap.md
templates/reuseRules.md
```

For project-specific repos, read the customized versions in that repo before using these templates.

---

## Mandatory startup context check

Before implementation, the agent must read and summarize the project startup checklist. A derived project should place its customized checklist at:

```text
docs/agent/startupChecklist.md
```

The startup response must include:

```text
Architecture files read:
Operational queue files read:
Code-map files read:
Current work package/task:
Relevant existing modules found:
Files likely to be touched:
Tests likely to be run or created:
Reuse decision:
Stop gates checked:
```

If the project has a code map and the agent has not read it, the agent must not begin implementation.

---

## Reuse-before-create rule

Before creating a new module, class, function, service, script, table, config file, or test helper, the agent must check the project code map and existing repository structure for an owner.

Derived projects should maintain:

```text
docs/agent/codeMap.md
docs/agent/reuseRules.md
```

If a reusable owner exists, extend it. If no reusable owner exists, create a new owner and update the code map in the same change.

---

## Agent operating rules

1. Work from task cards, not vague intent.
2. Keep changes scoped to the current task unless the task explicitly requires shared-contract updates.
3. Add or update tests for each implementation task.
4. Commit in small, reviewable checkpoints.
5. Do not commit secrets, credentials, `.env`, logs, local database files, cache directories, `.pyc`, or `__pycache__`.
6. Do not enable production-impacting behavior by default.
7. Stop on explicit stop gates.
8. If requirements are incomplete, add a holistic completion review or task-queue addendum instead of guessing.
9. Preserve existing runtime behavior unless the current task explicitly replaces it.
10. Treat Git as the system of record.
11. Read the code map before implementation.
12. Update the code map when source ownership, functions, entrypoints, database objects, or service boundaries change.
13. Prefer extending existing owners over creating parallel implementations.

---

## Continuous autonomous mode

When continuous mode is active, the agent should:

```text
complete task
run tests
clean artifacts
commit scoped changes
summarize checkpoint
continue to next task
```

Stop only on mandatory stop gates such as unresolved test failures, unsafe production changes, missing credentials, destructive migrations, branch conflicts, future-data leakage risk, or explicit user stop.

---

## Documentation discipline

When the agent discovers missing project depth, it should update the framework docs, not rely on transient chat context.

Preferred correction documents:

```text
holisticCompletionReview.md
extendedAutonomousTaskQueue.md
knownLimitations.md
acceptanceRunbook.md
codeMap.md
reuseRules.md
startupChecklist.md
```

---

## Authorship

Use this header format in generated project files where appropriate:

```text
filename: <path>
Use: <purpose>
Author: Craig MacPherson / Arti Muse
Creation Date: <YYYY-MM-DD>
Change Record:
- <YYYY-MM-DD> - <change summary>
```
