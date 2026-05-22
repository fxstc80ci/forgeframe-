# <Project Name> Autonomous Build Rules

**Use:** Mandatory execution rules for autonomous agents building this project.  
**Author:** <Author / AI Partner>  
**Creation Date:** <YYYY-MM-DD>  
**Change Record:**  
- <YYYY-MM-DD> - Initial autonomous build rules.

---

## 1. Purpose

This document defines scope, validation, safety, and continuation rules for autonomous agent execution.

---

## 2. Universal execution contract

For every task card, the agent must:

1. Read AGENTS.md and all build doctrine files.
2. Stay inside current task scope.
3. Add or update tests.
4. Run relevant tests.
5. Clean generated artifacts.
6. Commit scoped changes.
7. Continue or stop according to active mode.

---

## 3. Mandatory stop gates

Stop on:

```text
TEST_FAILURE_UNRESOLVED
BRANCH_CONFLICT
MIGRATION_CONFLICT
DESTRUCTIVE_CHANGE_REQUIRED
SECRET_OR_CREDENTIAL_REQUIRED
UNSAFE_RUNTIME_CHANGE_REQUIRED
MISSING_REQUIREMENTS
USER_STOP_REQUESTED
```

---

## 4. Per-task checklist

```bash
git status --short
find . -path './.venv' -prune -o -type d \( -name __pycache__ -o -name .pytest_cache \) -print
find . -path './.venv' -prune -o -type f -name '*.pyc' -print
git diff --stat
```

---

## 5. Checkpoint summary format

```text
Task completed:
Files changed:
Tests run:
Test result:
Commit:
Safety confirmation:
Next task:
Continuation decision:
```
