# Codex CLI Workflow

**Use:** Defines how Codex CLI or similar coding agents should execute a ForgeFrame project.  
**Author:** Craig MacPherson / Arti Muse  
**Creation Date:** 2026-05-22  
**Change Record:**  
- 2026-05-22 - Initial Codex CLI workflow guide.

---

## 1. Purpose

Codex CLI acts as the autonomous implementation agent. ForgeFrame gives Codex a controlled operating environment.

Codex should not be asked to build from a vague prompt. It should be asked to execute the repository doctrine.

---

## 2. Start command pattern

From the project root:

```bash
cd ~/projects/<project>
codex
```

Then instruct:

```text
Read AGENTS.md and all ForgeFrame build documents. Continue from the first incomplete task card. Use continuous autonomous mode. Commit after each task. Stop only on mandatory stop gates.
```

---

## 3. Required reading set

```text
AGENTS.md
README.md
docs/requirements.md
docs/design.md
docs/workPackages.md
docs/taskCards.md
docs/autonomousBuildRules.md
docs/continuousAutonomousMode.md
docs/extendedAutonomousTaskQueue.md
docs/acceptanceCriteria.md
```

---

## 4. Execution loop

Codex should follow:

```text
read current task
inspect repo
implement scoped files
add tests
run tests
clean caches
commit
summarize
continue
```

---

## 5. Stop gates

Codex must stop on:

```text
unresolved test failure
branch conflict
migration conflict
need for credentials
unsafe production behavior
unclear destructive change
missing critical requirements
explicit user stop
```

---

## 6. Handling divergence

When the local branch and remote branch diverge:

```bash
git pull --rebase origin <branch>
```

Resolve conflicts, then:

```bash
git add <resolved-files>
git rebase --continue
```

Abort if needed:

```bash
git rebase --abort
```

---

## 7. Checkpoint output

After each task, Codex should print:

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

---

## 8. Model selection note

If Codex reports that a specific model is unsupported, remove the model override and use the default model for the account context.

The framework should not depend on one exact model name.
