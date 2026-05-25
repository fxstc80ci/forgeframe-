# ForgeFrame Agent Registry

**Use:** Define standard agent roles and routing rules for autonomous builds.
**Author:** Craig MacPherson / Arti Muse
**Creation Date:** 2026-05-25

---

## Purpose

Agents are role-based reviewers or builders. A skill explains how to do a task. An agent decides when and why to apply the right skill from a specific professional viewpoint.

---

## One-Job Rule

Each agent should have one primary job.

Examples:

```text
Staff Reviewer: challenge plan quality and approve/request changes.
Architecture Reviewer: verify design consistency and dependency impact.
UI/UX Reviewer: validate screen design and interaction quality.
ML Validation Reviewer: verify evidence, folds, calibration, and promotion gates.
Security Reviewer: verify roles, access, secrets, and unsafe control exposure.
BuildOps Agent: verify branch, commit, PR, queue, and release hygiene.
```

---

## Required Agent File Sections

```text
name
role
mission
expertise
when to invoke
inputs to inspect
skills to use
review checklist
verdict format
stop gates
handoff output
```

---

## Verdict Format

Agents should return one of:

```text
APPROVE
REQUEST_CHANGES
RETHINK_REQUIRED
BLOCKED
```

Each verdict must include:

```text
reason
material findings
evidence checked
required next action
```

---

## Core ForgeFrame Agents

```text
staffReviewerAgent.md
architectureReviewerAgent.md
uiUxReviewerAgent.md
mlValidationAgent.md
securityAccessControlAgent.md
buildOpsAgent.md
```

---

## Routing Rules

```text
runtime code change -> staff reviewer
architecture/design change -> architecture reviewer
UI/browser-visible change -> UI/UX reviewer
ML/evidence/model change -> ML validation reviewer
roles/auth/secrets/control change -> security reviewer
branch/PR/release/change queue -> BuildOps reviewer
```

---

## Agent Registry Table

Projects should maintain a table:

| Agent | Trigger | Required Skills | Output |
| --- | --- | --- | --- |
| Staff Reviewer | Major plan or PR | work package, safety, testing | verdict |
| UI/UX Reviewer | Browser-visible change | UI design, browser regression | UI findings |
| ML Validation | Model/evidence change | ML validation, evidence pipeline | promotion risk |
