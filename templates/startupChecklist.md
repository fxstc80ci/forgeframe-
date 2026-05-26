# Agent Startup Checklist

**Use:** Project startup checklist template for autonomous coding agents using ForgeFrame.  
**Author:** Craig MacPherson / Arti Muse  
**Creation Date:** 2026-05-25  
**Change Record:**  
- 2026-05-25 - Initial reusable startup checklist template created.

---

## Purpose

This checklist prevents agents from coding from the task queue alone. Operational queue files are not enough. Agents must load architecture, design, requirements, code ownership, reuse rules, and stop gates before changing files.

---

## Customize this file

In a project derived from ForgeFrame, copy this file to:

```text
docs/agent/startupChecklist.md
```

Then replace the file list below with project-specific paths.

---

## Mandatory read set before implementation

Every agent must read these project files before editing code:

```text
AGENTS.md
README.md
docs/architecture.md
docs/requirements.md
docs/design.md
docs/workPackages.md
docs/taskCards.md
docs/acceptanceCriteria.md
docs/agent/codeMap.md
docs/agent/reuseRules.md
```

For continuous autonomous mode, also read:

```text
docs/continuousAutonomousMode.md
docs/autonomousBuildRules.md
docs/stopGates.md
docs/currentState.md
docs/nextWorkQueue.md
docs/decisionLog.md
```

---

## Required startup response

Before implementation, the agent must state:

```text
Architecture files read:
Operational queue files read:
Code-map files read:
Current work package/task:
Relevant existing modules found:
Files likely to be touched:
Tests likely to be run or created:
Reuse decision:
Stop gates checked:
```

---

## Stop condition

If the project has architecture, design, or code-map files and the agent has not read them, do not implement code.

---

## Reuse-first requirement

Before creating a new file or function, search for an existing owner in this order:

1. project code map;
2. existing files by name/path;
3. existing function/class names;
4. tests referencing related behavior;
5. migration, architecture, or design docs naming the subsystem.

If a reusable owner exists, extend it. If no owner exists, create the new file and update the code map in the same change.
