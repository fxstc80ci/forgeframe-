# <Project Name> Continuous Autonomous Mode

**Use:** Enables autonomous agents to continue through task cards without one-task-at-a-time prompting.  
**Author:** <Author / AI Partner>  
**Creation Date:** <YYYY-MM-DD>  
**Change Record:**  
- <YYYY-MM-DD> - Initial continuous autonomous mode.

---

## Mode

```text
CONTINUOUS_AUTONOMOUS_BUILD
```

---

## Loop

For each task:

```text
read task
implement scoped files
add tests
run tests
clean artifacts
commit
summarize checkpoint
continue
```

---

## Stop only on gates

```text
TEST_FAILURE_UNRESOLVED
BRANCH_CONFLICT
MIGRATION_CONFLICT
DESTRUCTIVE_CHANGE_REQUIRED
SECRET_OR_CREDENTIAL_REQUIRED
UNSAFE_RUNTIME_CHANGE_REQUIRED
FUTURE_DATA_LEAKAGE_RISK
MANUAL_POLICY_DECISION_REQUIRED
USER_STOP_REQUESTED
```

---

## Final completion

After the last task, run the final acceptance suite and report:

```text
complete/incomplete
tests passed/failed
known limitations
manual production gates
```
