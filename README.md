# ForgeFrame

**A Git-native framework for autonomous enterprise AI builds.**

ForgeFrame is a reusable repository template for building enterprise-grade applications with GPT-level architecture collaboration, Git-grounded operating doctrine, Codex CLI or similar coding agents, local development infrastructure, safety gates, task-card execution, and acceptance-driven delivery.

It grew out of the CryptoBot V5 autonomous build program, where the build process evolved from chat-driven coding into a repository-embedded framework for long-running AI software construction.

---

## Core idea

ForgeFrame turns a software project into an executable build doctrine.

Instead of asking an AI agent to “build the app” from a loose prompt, ForgeFrame gives the agent:

```text
mission
architecture
requirements
detailed design
work packages
task cards
autonomous build rules
continuous mode rules
extended task queue
acceptance criteria
stop gates
quality gates
runbooks
paper/blog traceability
```

The result is a repeatable framework for enterprise application delivery where AI agents can build continuously while staying inside explicit safety, test, architecture, and Git boundaries.

---

## Why this matters

Autonomous coding agents are powerful, but they need structure.

Without structure, they drift:

```text
wrong scope
missing acceptance tests
premature implementation
unsafe assumptions
undocumented decisions
weak handoff between design and code
```

ForgeFrame embeds the structure directly in the repository so the agent operates from versioned instructions, not fragile chat memory.

---

## Framework layers

```text
Human / GPT collaboration layer
  -> vision, architecture, doctrine, review, correction

Git governance layer
  -> AGENTS.md, docs, work packages, task cards, acceptance criteria

Autonomous execution layer
  -> Codex CLI / coding agent builds task cards, runs tests, commits checkpoints

Local dev infrastructure layer
  -> local server, databases, services, test harnesses, logs, dashboards

Enterprise assurance layer
  -> safety gates, no-live defaults, replayability, observability, runbooks
```

---

## Repository structure

```text
forgeframe-/
  README.md
  AGENTS.md
  docs/
    architecture.md
    gptCollaborationModel.md
    gitWorkflow.md
    codexCliWorkflow.md
    localDevServerWorkflow.md
    autonomousBuildDoctrine.md
    safetyAndStopGates.md
    acceptanceStrategy.md
    paper/
      forgeframePaper.md
    blog/
      forgeframeBlogPost.md
  templates/
    requirements.md
    design.md
    workPackages.md
    taskCards.md
    autonomousBuildRules.md
    continuousAutonomousMode.md
    extendedAutonomousTaskQueue.md
    holisticCompletionReview.md
    acceptanceCriteria.md
    runbook.md
  examples/
    cryptobotV5/
      README.md
  scripts/
    validateFramework.sh
```

---

## Quick start

Use ForgeFrame to start a new autonomous build project:

```bash
mkdir my-enterprise-app
cd my-enterprise-app

# copy the ForgeFrame templates into the new repo
cp -r ../forgeframe-/templates ./docs
cp ../forgeframe-/AGENTS.md ./AGENTS.md
```

Then customize:

```text
requirements.md
design.md
workPackages.md
taskCards.md
autonomousBuildRules.md
continuousAutonomousMode.md
acceptanceCriteria.md
```

Start the agent with:

```text
Read AGENTS.md, docs/workPackages.md, docs/taskCards.md, docs/autonomousBuildRules.md, and docs/continuousAutonomousMode.md. Continue the build autonomously from the first incomplete task card. Commit after each task. Stop only on mandatory stop gates.
```

---

## Design principles

1. **Git is the build memory.** Chat can guide, but the repository must hold the durable instructions.
2. **Task cards are execution units.** Every autonomous build task must have scope, deliverables, tests, and acceptance criteria.
3. **Continuous mode needs stop gates.** Autonomy should not mean blind execution.
4. **Safety defaults matter.** Production-affecting actions must be disabled by default.
5. **Tests are the agent's guardrails.** Each task must add or update tests.
6. **Architecture must be versioned.** The agent should never rely only on transient conversation context.
7. **Completeness requires holistic review.** The framework must detect missing depth before final acceptance.

---

## Project lineage

ForgeFrame was extracted from a live autonomous build effort for CryptoBot V5, where the framework evolved through real failures and improvements:

```text
single-task stopping -> continuous autonomous mode
broad work packages -> scoped task cards
missing ML detail -> ML training design
missing enterprise gaps -> holistic completion review
ad hoc prompting -> repository-embedded doctrine
```

---

## Status

Initial template seed. The framework is ready for refinement into a reusable project generator and publication package.

---

## Authors

Craig MacPherson / Arti Muse

---

## License

TBD.
