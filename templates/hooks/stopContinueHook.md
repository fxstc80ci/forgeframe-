# Stop / Continue Hook Template

**Use:** Decide whether an agent should continue automatically or stop for review.

## Purpose

Prevent one-task-and-stop behavior while preserving mandatory stop gates.

## Trigger

```text
agent turn ends
work package completes
checkpoint generated
```

## Continue When

```text
focused tests passed
worktree is clean or expected local-only files are ignored
queue has a clear next TODO item
no mandatory stop gate is active
no operator approval is required
```

## Stop When

```text
tests failed and no scoped fix is clear
queue state is ambiguous
finish line is ambiguous
secrets risk exists
unsafe config is required
operator approval is required
tool capability is missing
```

## Required Output

```text
decision: CONTINUE | STOP
reason
next work package
blocking gate if stopped
```
