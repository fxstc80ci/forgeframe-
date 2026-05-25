# ForgeFrame Skill Debt Review

**Use:** Keep the skills and agent automation layer maintainable.
**Author:** Craig MacPherson / Arti Muse
**Creation Date:** 2026-05-25

---

## Purpose

Skill debt appears when a project has too many stale, overlapping, vague, or unused skills. ForgeFrame requires periodic review so the automation layer remains useful.

---

## Review Triggers

Run a skill-debt review:

```text
monthly
before major release
before changing primary AI tools
when a skill conflicts with another skill
when the builder repeatedly ignores a skill
when a work package reveals a missing or weak skill
```

---

## Review Checklist

For each skill, check:

```text
still used
clear trigger
clear output
not duplicated
not contradicted
tool capability still valid
agent can use it without operator hand-holding
verification method exists
stop gates are current
```

---

## Outcomes

```text
KEEP
REWRITE
MERGE
RETIRE
SUPERSEDE
PROMOTE_TO_AGENT
PROMOTE_TO_HOOK
```

---

## Report Format

```text
review date
reviewer
skills inspected
findings
actions taken
follow-up work packages
risks
next review date
```

---

## Principle

The goal is not to have the most skills. The goal is to have the smallest useful toolkit that agents can actually apply reliably.
