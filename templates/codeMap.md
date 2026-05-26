# Project Code Map

**Use:** Persistent structural map for autonomous coding agents. Identifies project documents, subsystem ownership, module boundaries, entrypoints, public functions/classes, database objects, tests, and reuse guidance.  
**Author:** Craig MacPherson / Arti Muse  
**Creation Date:** 2026-05-25  
**Change Record:**  
- 2026-05-25 - Initial reusable code-map template created.

---

## Purpose

This file is the agent-facing structural map of the repository. It must be read before implementation and updated whenever source files, entrypoints, public classes, public functions, services, database objects, or subsystem ownership boundaries change.

Task cards define what to do. This file defines what already exists, what owns each concern, and where reuse should happen.

---

## Mandatory update rule

Update this file in the same change whenever any of the following changes:

- source file added;
- source file materially changed;
- public class added or changed;
- public function added or changed;
- script or entrypoint added;
- database table, migration, index, or view added;
- service boundary changed;
- configuration owner changed;
- tests added for a new subsystem.

---

## Architecture and design documents

| Path | Purpose | Agent guidance |
|---|---|---|
| `AGENTS.md` | Repository-level instructions for coding agents. | Must be read first. |
| `README.md` | Project orientation. | Use as entry point. |
| `docs/architecture.md` | Target architecture. | Authoritative runtime architecture. |
| `docs/requirements.md` | Requirements. | Check before implementing behavior. |
| `docs/design.md` | Detailed subsystem/interface/schema design. | Authoritative design detail. |
| `docs/workPackages.md` | Work package breakdown. | Use for sequencing. |
| `docs/taskCards.md` | Ordered implementation task cards. | Use for active task selection. |
| `docs/acceptanceCriteria.md` | Acceptance criteria. | Use for done conditions. |
| `docs/agent/startupChecklist.md` | Mandatory startup context checklist. | Must be followed before coding. |
| `docs/agent/reuseRules.md` | Reuse-before-create rules. | Must be followed before new files/functions. |

---

## Subsystem ownership map

| Subsystem | Owner path | Purpose | Reuse guidance | Related tests |
|---|---|---|---|---|
| Configuration | TBD | Environment, config files, defaults, validation. | Avoid duplicate env/config loaders. | TBD |
| Logging | TBD | Structured logging, log levels, log destinations. | One logging owner. | TBD |
| Database | TBD | Connections, migrations, data access, persistence. | Avoid duplicate DB clients/session helpers. | TBD |
| API | TBD | HTTP/API contracts, routing, clients. | Centralize shared request/response models. | TBD |
| Domain models | TBD | Core business objects and schemas. | One owner per canonical object. | TBD |
| Services | TBD | Business logic services. | Extend service owners rather than creating parallel logic. | TBD |
| UI | TBD | Frontend, workspace grids, dashboards, forms, charts. | Reuse shared components. | TBD |
| Jobs/workers | TBD | Background tasks, schedulers, queues. | One owner per worker family. | TBD |
| Testing | TBD | Unit, integration, regression, acceptance, UX tests. | Reuse fixtures and helpers. | TBD |
| Operations | TBD | Scripts, launchers, systemd, deployment, runbooks. | Avoid duplicate controllers/watchdogs. | TBD |

---

## Known duplication-risk areas

Customize this table for the project.

| Area | Risk | Required action |
|---|---|---|
| Environment loading | Multiple inconsistent loaders. | Use one config owner. |
| Logging | Multiple log formats. | Use one structured logger owner. |
| Database connections | Duplicate connection/session code. | Use one DB owner. |
| API clients | Duplicate auth/rate-limit/error handling. | Extend API client owner. |
| Business rules | Same rule implemented in multiple layers. | Centralize under domain/service owner. |
| State schemas | Multiple payload shapes. | Create one canonical schema. |
| Controllers/watchdogs | Competing long-running loops. | One controller owner; wrappers call it. |
| Test fixtures | Repeated setup logic. | Centralize fixtures/helpers. |

---

## Source file inventory

Each source file entry should use this format:

```text
Path:
Subsystem:
Purpose:
Primary classes:
Primary functions:
Entrypoint: yes/no
Reads:
Writes:
Depends on:
Used by:
Tests:
Reuse guidance:
Last reviewed:
```

### Current inventory status

TBD by project source inventory pass.

---

## Database object inventory

Use this format for database objects:

```text
Object:
Type: table/view/index/function/hypertable/collection
Owner subsystem:
Purpose:
Created by migration:
Read by:
Written by:
Retention/partition policy:
Tests:
```

### Current status

TBD by project data design work.

---

## Entrypoint inventory

Use this format for scripts/services:

```text
Entrypoint:
Mode: dev/test/staging/production/diagnostic
Purpose:
Calls:
Writes:
Safety gates:
Service/unit/wrapper:
Tests:
```

### Current status

TBD by project source inventory pass.

---

## Agent note

If this file does not identify an owner for the code you are about to create, inspect the repository first. If no owner exists, create the owner and update this file. If an owner exists, extend the owner and update this file with the new function/class/test details.
