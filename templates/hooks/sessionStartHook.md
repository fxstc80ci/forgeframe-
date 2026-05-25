# Session Start Hook Template

**Use:** Load project context when an agent session starts.

## Purpose

Ensure the agent begins from repository state rather than stale chat memory.

## Trigger

```text
session start
new agent workspace
restart after usage limit or crash
```

## Read Order

```text
AGENTS.md
README.md
docs/framework or framework docs
docs/currentState.md or equivalent
docs/nextWorkQueue.md or taskCards.md
docs/stopGates.md
docs/acceptanceCriteria.md
```

## Required Output

```text
Total phase status:
Current phase:
Current work package:
Current step:
Finish line:
Remaining work:
Blocking gates:
Tool capabilities loaded:
```

## Stop Conditions

```text
required files missing
queue state ambiguous
finish line ambiguous
tool capability missing
```
