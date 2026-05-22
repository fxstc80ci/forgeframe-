# ForgeFrame Architecture

**Use:** Describes the reusable architecture of the ForgeFrame autonomous enterprise build framework.  
**Author:** Craig MacPherson / Arti Muse  
**Creation Date:** 2026-05-22  
**Change Record:**  
- 2026-05-22 - Initial architecture document.

---

## 1. Architecture thesis

ForgeFrame is a framework for converting enterprise software delivery into a Git-native, AI-executable build program.

The central idea is that autonomous coding agents need more than a prompt. They need a durable operating environment made from versioned documents, explicit task cards, validation gates, acceptance criteria, and safe continuation rules.

---

## 2. Layer model

```text
Human + GPT Strategy Layer
  - vision
  - architecture
  - requirements refinement
  - design critique
  - gap detection
  - publication narrative

Repository Doctrine Layer
  - AGENTS.md
  - requirements
  - design
  - work packages
  - task cards
  - autonomous build rules
  - continuous mode
  - acceptance criteria

Autonomous Execution Layer
  - Codex CLI / coding agent
  - task-card implementation
  - test execution
  - scoped commits
  - stop-gate detection

Local Development Layer
  - Linux/dev server
  - databases
  - services
  - scripts
  - logs
  - dashboards
  - test harnesses

Enterprise Assurance Layer
  - safety defaults
  - fail-closed behavior
  - observability
  - runbooks
  - rollback
  - auditability
  - acceptance tests
```

---

## 3. Core artifacts

### AGENTS.md

The root instruction file. It tells agents how to behave in the repository.

### requirements.md

Defines what the system must do.

### design.md

Defines how the system should be shaped.

### workPackages.md

Breaks the system into major delivery streams.

### taskCards.md

Converts work packages into small, executable build units.

### autonomousBuildRules.md

Defines scope, safety, and commit behavior.

### continuousAutonomousMode.md

Allows the agent to continue through the task queue without asking for permission after every task.

### extendedAutonomousTaskQueue.md

Adds missing enterprise-depth tasks discovered during holistic review.

### holisticCompletionReview.md

Used when the build plan looks complete but may be shallow.

### acceptanceCriteria.md

Defines the final done state.

---

## 4. Execution sequence

```text
1. Human/GPT creates architecture package.
2. Git repo stores the durable build doctrine.
3. Codex reads repo instructions.
4. Codex executes task cards.
5. Codex tests each slice.
6. Codex commits each checkpoint.
7. GPT/human review major gates or stop conditions.
8. Framework is patched when gaps are found.
9. Codex resumes from the improved doctrine.
10. Final acceptance validates the enterprise build.
```

---

## 5. Safety model

ForgeFrame does not assume the agent is always right. It assumes the agent is powerful and therefore must be bounded.

Core safety rules:

```text
safe defaults
no production enablement by default
small commits
required tests
explicit stop gates
versioned decisions
reviewable artifacts
```

---

## 6. Reuse model

ForgeFrame can seed projects such as:

```text
trading systems
RAG systems
legal evidence systems
enterprise dashboards
data governance platforms
agent orchestration tools
local infrastructure automation
publication workflows
```

The domain changes; the build doctrine remains reusable.
