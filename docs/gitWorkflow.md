# Git Workflow

**Use:** Defines the Git workflow ForgeFrame expects for autonomous enterprise builds.  
**Author:** Craig MacPherson / Arti Muse  
**Creation Date:** 2026-05-22  
**Change Record:**  
- 2026-05-22 - Initial Git workflow guide.

---

## 1. Purpose

Git is the durable memory and audit system for ForgeFrame.

The chat may guide the build, but Git preserves:

```text
decisions
instructions
work packages
code changes
tests
checkpoints
review history
rollback points
```

---

## 2. Branch model

Recommended branches:

```text
main                         stable framework or project baseline
feature/<major-workstream>   active autonomous build branch
review/<checkpoint>          optional human/GPT review branch
hotfix/<issue>               targeted correction branch
```

For generated projects:

```text
feature/state-engine
feature/feature-store
feature/model-stack
feature/risk-authority
feature/execution-lifecycle
feature/learning-dashboard
feature/qa-ops
```

---

## 3. Commit model

Autonomous agents should commit after each task card.

Good commit messages:

```text
Implement V5 model contracts and registry
Implement V5 risk authority
Add holistic completion review
Add continuous autonomous build mode
```

Avoid:

```text
misc fixes
update stuff
big changes
WIP everything
```

---

## 4. Rebase vs merge

If local agent commits and remote doctrine commits diverge, prefer:

```bash
git pull --rebase origin <branch>
```

This keeps the autonomous build history linear.

Use merge when preserving major branch history is more important than linearity.

---

## 5. Safety branch

Before risky restructuring:

```bash
git branch backup/before-major-change
```

Optionally push it:

```bash
git push origin backup/before-major-change
```

---

## 6. Clean working tree rule

Before starting an autonomous build run:

```bash
git status
```

Target:

```text
nothing to commit, working tree clean
```

If local changes exist, either commit, stash, or intentionally include them in the current task scope.

---

## 7. Do not commit

```text
.env
API keys
exchange keys
private keys
wallet material
logs/
*.log
__pycache__/
*.pyc
.pytest_cache/
local DB files
large binary artifacts unless approved
```

---

## 8. Checkpoint review

After each autonomous task:

```bash
git log --oneline -5
git status --short
```

The agent summary should include:

```text
commit SHA
files changed
tests run
test result
next task
continuation decision
```
