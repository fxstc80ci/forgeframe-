# ForgeFrame Skill Lifecycle

**Use:** Govern when skills are created, maintained, rewritten, or retired.
**Author:** Craig MacPherson / Arti Muse
**Creation Date:** 2026-05-25

---

## Purpose

Skills are reusable tools for agents and operators. ForgeFrame keeps the skill library small, clear, and maintainable by using an inner-loop test and a recurring skill review.

---

## Inner-Loop Test

Create or keep a skill only when all are true:

```text
1. The task is repeated often.
2. The workflow follows a predictable pattern.
3. Preloaded context improves quality or speed.
4. The skill can be used by an agent as well as an operator.
5. The expected output can be verified.
```

If the test fails, use a normal prompt, a task card, or a one-time work package instead.

---

## Required Skill Sections

Each skill should define:

```text
name
purpose
when to use
when not to use
required inputs
expected outputs
files to inspect
allowed scope
stop gates
verification checks
review cadence
```

---

## Lifecycle States

```text
PROPOSED
ACTIVE
NEEDS_REVIEW
DEPRECATED
RETIRED
SUPERSEDED
```

---

## Creation Checklist

```text
inner-loop test passed
no existing skill already covers the workflow
agent or operator trigger is clear
verification method is defined
stop gates are defined
maintenance burden is acceptable
```

---

## Review Output

A skill review should produce:

```text
skills kept
skills rewritten
skills merged
skills retired
new skills proposed
risks found
follow-up work packages
```
