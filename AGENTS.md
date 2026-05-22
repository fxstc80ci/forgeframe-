# AGENTS.md

**Use:** Repository-level instructions for autonomous coding agents using ForgeFrame.  
**Author:** Craig MacPherson / Arti Muse  
**Creation Date:** 2026-05-22  
**Change Record:**  
- 2026-05-22 - Initial ForgeFrame agent instructions.

---

## Mission

This repository is a ForgeFrame template. Its purpose is to help AI agents build enterprise-grade software systems from versioned architecture, requirements, work packages, task cards, safety gates, and acceptance criteria.

Agents working in repositories derived from ForgeFrame must treat the repository documentation as the durable build memory.

---

## Required reading order

Before making changes, read:

```text
README.md
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
```

For project-specific repos, read the customized versions in that repo before using these templates.

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
