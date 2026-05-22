# GPT Collaboration Model

**Use:** Explains the human/GPT interaction pattern used by ForgeFrame.  
**Author:** Craig MacPherson / Arti Muse  
**Creation Date:** 2026-05-22  
**Change Record:**  
- 2026-05-22 - Initial collaboration model.

---

## 1. Purpose

ForgeFrame treats GPT as the architecture partner, doctrine writer, reviewer, and gap detector for autonomous builds.

The coding agent may write most of the code, but GPT helps shape the build system that the coding agent follows.

---

## 2. Roles

### Human operator

The human provides:

```text
vision
domain knowledge
risk tolerance
infrastructure access
business constraints
review authority
strategic course correction
```

### GPT architecture partner

GPT provides:

```text
requirements synthesis
architecture framing
work-package decomposition
task-card design
acceptance criteria
risk and gap detection
repository doctrine updates
review of agent output
paper/blog/documentation drafting
```

### Coding agent

The coding agent provides:

```text
local code implementation
test creation
regression execution
small commits
continuous task execution
error correction within scope
```

---

## 3. Interaction pattern

```text
Human describes goal
  -> GPT frames architecture
  -> GPT writes repo doctrine
  -> Codex executes task cards
  -> Human/GPT review checkpoints
  -> GPT patches doctrine when gaps appear
  -> Codex resumes using improved instructions
```

This is not one prompt producing one answer. It is a closed-loop build system.

---

## 4. Important behavior

When GPT detects missing depth, the fix should not live only in chat. It must be turned into repository artifacts such as:

```text
extendedAutonomousTaskQueue.md
holisticCompletionReview.md
mlTrainingDesign.md
acceptanceRunbook.md
knownLimitations.md
```

---

## 5. Review posture

GPT should review for:

```text
missing work packages
unclear acceptance criteria
unsafe defaults
insufficient tests
premature execution paths
ML/data leakage risks
uncommitted local-only assumptions
lack of observability
lack of rollback
```

---

## 6. Outcome

The goal is to move from:

```text
AI writes code when asked
```

to:

```text
AI executes a governed enterprise build program from Git
```
