# ForgeFrame: A Git-Native Framework for Autonomous Enterprise Application Development with GPT, Codex CLI, and Local Dev Infrastructure

**Use:** Draft paper describing the ForgeFrame framework.  
**Author:** Craig MacPherson / Arti Muse  
**Creation Date:** 2026-05-22  
**Change Record:**  
- 2026-05-22 - Initial paper draft.

---

## Abstract

Autonomous coding agents are rapidly changing software development, but their effectiveness depends on the quality of the operating framework around them. This paper introduces ForgeFrame, a Git-native framework for autonomous enterprise application development. ForgeFrame combines GPT-level architectural collaboration, repository-embedded build doctrine, Codex CLI execution, local development infrastructure, continuous task-card workflows, safety gates, and acceptance-driven delivery. The framework emerged from a real autonomous build effort, CryptoBot V5, where the process evolved from chat-driven prompting into a durable, reusable, version-controlled build system.

---

## 1. Introduction

The rise of AI coding agents has created a new software delivery problem. The bottleneck is no longer only code generation. The bottleneck is disciplined autonomous execution.

A coding agent can write code quickly, but without structure it may drift across scope boundaries, miss tests, make unsafe assumptions, or produce shallow completeness. Enterprise software requires more than output. It requires traceability, safety, testing, architecture, operations, and governance.

ForgeFrame addresses this by turning the repository itself into the operating system for the autonomous build.

---

## 2. Core thesis

The central thesis is:

```text
Autonomous AI software development becomes reliable when the build doctrine is embedded in Git, decomposed into executable task cards, enforced by tests, and bounded by explicit stop gates.
```

The AI is not merely prompted. It is placed inside a versioned engineering control system.

---

## 3. Framework components

ForgeFrame consists of:

```text
AGENTS.md
requirements.md
design.md
workPackages.md
taskCards.md
autonomousBuildRules.md
continuousAutonomousMode.md
extendedAutonomousTaskQueue.md
holisticCompletionReview.md
acceptanceCriteria.md
runbooks
validation scripts
```

These documents collectively define what to build, how to build it, when to continue, when to stop, how to test, and what complete means.

---

## 4. Human/GPT/Codex operating model

ForgeFrame uses three complementary intelligence layers:

```text
Human operator: vision, domain authority, infrastructure, approval
GPT partner: architecture, requirements, work packages, review, gap detection
Codex/coding agent: implementation, tests, commits, local execution
```

The human and GPT shape the doctrine. Codex executes the doctrine. Git preserves the memory.

---

## 5. Continuous autonomous mode

A key evolution was moving from one-task-at-a-time approval to continuous autonomous execution.

In continuous mode, the agent:

```text
implements a task
runs tests
cleans artifacts
commits
summarizes
continues
```

It stops only when a defined stop gate is reached.

This converts the agent from a tool awaiting repeated instruction into a controlled autonomous builder.

---

## 6. Case study: CryptoBot V5

CryptoBot V5 provided the practical proving ground. The project required state construction, feature generation, model contracts, baseline prediction models, signal fusion, risk authority, execution lifecycle, historical replay, ML training design, and operational safety.

During the build, missing depth was discovered in the original ML plan. Rather than patching the issue verbally, the missing training design was written into the repository as `mlTrainingDesign.md`, then integrated into an extended autonomous task queue.

This showed the core ForgeFrame principle: when a process flaw is discovered, improve the framework, not merely the current conversation.

---

## 7. Enterprise relevance

ForgeFrame is applicable beyond trading systems. Any enterprise build with complex architecture, data flows, security requirements, operational constraints, and acceptance gates can benefit.

Potential domains include:

```text
legal evidence systems
RAG platforms
data governance frameworks
AI memory systems
monitoring dashboards
workflow automation
publication pipelines
infrastructure automation
```

---

## 8. Safety and governance

Autonomy without governance is dangerous. ForgeFrame therefore uses:

```text
safe defaults
explicit stop gates
no secret commits
small commits
mandatory tests
acceptance criteria
runbooks
rollback plans
observability requirements
```

The purpose is not to slow the agent down, but to keep speed aligned with reliability.

---

## 9. Conclusion

ForgeFrame demonstrates that autonomous AI development can be made more reliable by embedding the build instructions, safety rules, and acceptance gates inside Git. The result is a framework where GPT-level reasoning, Codex-level implementation, and local infrastructure work together as a governed enterprise build system.

The broader implication is that future software teams may not manage AI agents through prompts alone. They will manage them through versioned build doctrine.
