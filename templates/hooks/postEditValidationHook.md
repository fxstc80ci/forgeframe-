# Post Edit Validation Hook Template

**Use:** Run safe checks after file edits.

## Purpose

Catch formatting, syntax, generated artifact, and obvious safety issues immediately after a file edit.

## Trigger

```text
post file edit
post write tool
post patch application
```

## Suggested Checks

```text
format check where configured
lint check where configured
syntax check for changed scripts
secret-like diff scan
generated artifact scan
project-specific focused tests when cheap
```

## Required Output

```text
files changed
checks run
checks passed/failed
next safe action
```

## Stop Conditions

```text
secret-like value detected
generated artifact staged
syntax failure outside scoped fix
unsafe file modified
```
