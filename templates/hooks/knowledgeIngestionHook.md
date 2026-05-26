# Knowledge Ingestion Hook Template

**Use:** Capture durable learnings and reusable patterns when knowledge files change.

## Purpose

Help the project improve over time without relying on hidden chat memory.

## Trigger

```text
post edit to docs/learnings.md
post edit to docs/patterns/
post edit to docs/retrospectives/
post edit to framework knowledge files
```

## Suggested Actions

```text
validate required headings
link learning to issue, PR, incident, or work package
classify as bug, pattern, decision, risk, or reusable technique
update pattern index if present
propose follow-up work package if needed
```

## Required Learning Fields

```text
date
source issue/PR/work package
problem
resolution
reuse criteria
risks
follow-up action
```

## Stop Conditions

```text
learning has no source
pattern conflicts with existing standard
sensitive information is included
```
