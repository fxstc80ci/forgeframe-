# Agent Reuse Rules

**Use:** Reuse-before-create rules template for ForgeFrame projects.  
**Author:** Craig MacPherson / Arti Muse  
**Creation Date:** 2026-05-25  
**Change Record:**  
- 2026-05-25 - Initial reusable reuse-rules template created.

---

## Core rule

Search before creating.

An agent must not create a new module, function, class, service, script, table, config file, or test helper until it has checked whether an existing owner already exists.

---

## Required search order

Before creating new code, inspect:

1. project code map;
2. architecture document;
3. detailed design document;
4. migration plan where applicable;
5. existing source paths;
6. existing tests;
7. existing scripts;
8. existing migrations and database objects.

---

## Reuse decision values

Each implementation summary must include one reuse decision:

```text
reuse_existing
extend_existing
create_new_owner
replace_existing_with_migration
blocked_needs_human_review
```

---

## When to extend existing code

Extend an existing file or owner when:

- it already owns the subsystem;
- it already defines the contract or data model;
- tests already cover related behavior;
- the new behavior is a small variation of existing behavior;
- duplication would create two sources of truth.

---

## When to create new code

Create a new owner only when:

- no existing owner exists;
- the architecture names a new subsystem;
- the new subsystem has a distinct lifecycle or contract;
- adding to an existing file would blur responsibility;
- tests can define the new boundary cleanly.

---

## Code-map update requirement

Any change that adds or materially changes a source file, entrypoint, public function, class, table, or service must update the project code map.

The update must include:

- path;
- purpose;
- owner subsystem;
- main classes/functions;
- important dependencies;
- reuse guidance;
- related tests.

---

## Common duplication risks

Customize this list for the project:

- environment loading;
- logging setup;
- database connections;
- API clients;
- authentication helpers;
- risk or validation gates;
- calculation utilities;
- data schemas;
- controllers/watchdogs;
- CLI wrappers;
- test fixtures.
