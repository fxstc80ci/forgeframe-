# ForgeFrame

**A Git-native framework for autonomous enterprise AI builds.**

ForgeFrame is a reusable repository template for building enterprise-grade applications with GPT-level architecture collaboration, Git-grounded operating doctrine, Codex CLI or similar coding agents, local development infrastructure, safety gates, task-card execution, code-map driven reuse, and acceptance-driven delivery.

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
enterprise design checklist
capability coverage matrix
work packages
task cards
autonomous build rules
continuous mode rules
startup checklist
code map
reuse rules
extended task queue
acceptance criteria
stop gates
quality gates
runbooks
paper/blog traceability
```

The result is a repeatable framework for enterprise application delivery where AI agents can build continuously while staying inside explicit safety, test, architecture, reuse, Git, configuration, data, UX, ML, operations, release, and governance boundaries.

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
shallow enterprise coverage
forgotten architecture context
duplicate modules and functions
parallel controllers and services
multiple inconsistent sources of truth
```

ForgeFrame embeds the structure directly in the repository so the agent operates from versioned instructions, not fragile chat memory.

---

## Framework layers

```text
Human / GPT collaboration layer
  -> vision, architecture, doctrine, review, correction

Git governance layer
  -> AGENTS.md, docs, work packages, task cards, acceptance criteria

Structural memory layer
  -> startup checklist, code map, reuse rules, source/function ownership

Autonomous execution layer
  -> Codex CLI / coding agent builds task cards, runs tests, commits checkpoints

Local dev infrastructure layer
  -> local server, databases, services, test harnesses, logs, dashboards

Enterprise assurance layer
  -> safety gates, configuration, security, data governance, QA, observability, runbooks
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
    paper/
      forgeframePaper.md
    blog/
      forgeframeBlogPost.md
  templates/
    requirements.md
    design.md
    enterpriseDesignChecklist.md
    capabilityCoverageMatrix.md
    workPackages.md
    taskCards.md
    startupChecklist.md
    codeMap.md
    reuseRules.md
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

## Operational design additions

ForgeFrame now includes three reusable controls that prevent autonomous-agent drift:

### 1. Startup checklist

Forces the agent to read architecture, design, requirements, active queue, code map, reuse rules, and stop gates before coding.

### 2. Code map

Acts as the repository's persistent structural memory. It records subsystem ownership, source files, public functions/classes, entrypoints, database objects, tests, dependencies, and reuse guidance.

### 3. Reuse rules

Require agents to search before creating new modules, functions, services, scripts, tables, or config files. Existing owners must be extended where appropriate instead of duplicating behavior.

---

## Enterprise capability coverage

ForgeFrame explicitly prompts each autonomous project to account for:

```text
API design and construction
security and access control
certificates, DNS, and networking
package and environment setup
configuration and parameter control
UI/UX design, mockups, workspace grids, chat interfaces, multimedia, and voice
database schemas and data model design
metadata, master data, and reference data
ETL and data pipelines
vector databases, RAG, and memory frameworks
ML integration and model promotion
reports and analytics
debug, error handling, structured logging, and log levels
monitoring, observability, self-healing, and self-improvement
token optimization and AI cost control
performance tuning
work-package dependencies and parallel coding-agent execution
QA, regression, acceptance, and UX testing
cost modelling
Git, release management, backup, recovery, retention, archiving, and disposition
production promotion, runbooks, documentation, and rollback
code-map maintenance and reuse governance
```

Each item must be implemented, tested, documented, accepted, declared not applicable, or explicitly deferred with a known limitation.

---

## Quick start

Use ForgeFrame to start a new autonomous build project:

```bash
mkdir my-enterprise-app
cd my-enterprise-app

# copy the ForgeFrame templates into the new repo
cp -r ../forgeframe-/templates ./docs
cp ../forgeframe-/AGENTS.md ./AGENTS.md

# recommended agent-control layout
mkdir -p docs/agent
cp ../forgeframe-/templates/startupChecklist.md ./docs/agent/startupChecklist.md
cp ../forgeframe-/templates/codeMap.md ./docs/agent/codeMap.md
cp ../forgeframe-/templates/reuseRules.md ./docs/agent/reuseRules.md
```

Then customize:

```text
requirements.md
design.md
enterpriseDesignChecklist.md
capabilityCoverageMatrix.md
workPackages.md
taskCards.md
startupChecklist.md
codeMap.md
reuseRules.md
autonomousBuildRules.md
continuousAutonomousMode.md
acceptanceCriteria.md
```

Start the agent with:

```text
Read AGENTS.md, docs/agent/startupChecklist.md, docs/agent/codeMap.md, docs/agent/reuseRules.md, docs/architecture.md, docs/design.md, docs/enterpriseDesignChecklist.md, docs/capabilityCoverageMatrix.md, docs/workPackages.md, docs/taskCards.md, docs/autonomousBuildRules.md, and docs/continuousAutonomousMode.md. Continue the build autonomously from the first incomplete task card. Commit after each task. Stop only on mandatory stop gates. Reuse existing owners where possible and update the code map with every new or changed public file/function/class/entrypoint/database object.
```

---

## Design principles

1. **Git is the build memory.** Chat can guide, but the repository must hold the durable instructions.
2. **Task cards are execution units.** Every autonomous build task must have scope, deliverables, tests, and acceptance criteria.
3. **Continuous mode needs stop gates.** Autonomy should not mean blind execution.
4. **Safety defaults matter.** Production-impacting actions must be disabled by default.
5. **Tests are the agent's guardrails.** Each task must add or update tests.
6. **Architecture must be versioned.** The agent should never rely only on transient conversation context.
7. **Enterprise coverage must be explicit.** API, security, UI, data, ML, operations, QA, release, backup, and retention are design concerns, not afterthoughts.
8. **Completeness requires holistic review.** The framework must detect missing depth before final acceptance.
9. **Code maps prevent amnesia.** Agents must know what exists before adding more.
10. **Reuse comes before creation.** Existing owners should be extended unless a new boundary is justified.

---

## Project lineage

ForgeFrame was extracted from a live autonomous build effort for CryptoBot V5, where the framework evolved through real failures and improvements:

```text
single-task stopping -> continuous autonomous mode
broad work packages -> scoped task cards
missing ML detail -> ML training design
missing enterprise gaps -> holistic completion review and enterprise checklist
ad hoc prompting -> repository-embedded doctrine
architecture docs skipped by agents -> mandatory startup checklist
code duplication risk -> code map and reuse rules
```

---

## Status

Reusable framework seed with autonomous-build doctrine, enterprise capability coverage templates, startup checklist, code-map governance, and reuse-before-create controls.

---

## Authors

Craig MacPherson / Arti Muse

---

## License

TBD.
