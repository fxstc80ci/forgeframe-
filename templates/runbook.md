# <Project Name> Runbook

**Use:** Operational runbook for starting, stopping, validating, troubleshooting, and rolling back the system.  
**Author:** <Author / AI Partner>  
**Creation Date:** <YYYY-MM-DD>  
**Change Record:**  
- <YYYY-MM-DD> - Initial runbook template.

---

## 1. System overview

Describe the system, runtime components, services, databases, ports, and dependencies.

---

## 2. Prerequisites

```text
OS:
Python/Node/etc:
Database:
Environment variables:
Secrets location:
```

---

## 3. Start procedure

```bash
scripts/start.sh
```

---

## 4. Stop procedure

```bash
scripts/stop.sh
```

---

## 5. Status procedure

```bash
scripts/status.sh
```

---

## 6. Test procedure

```bash
scripts/run_tests.sh
scripts/run_acceptance.sh
```

---

## 7. Troubleshooting

| Symptom | Likely cause | Action |
|---|---|---|
| Service will not start | Missing config | Check `.env` and config files. |
| Tests fail | Regression or environment issue | Review failing test and recent commits. |
| Database unavailable | DB down or credentials wrong | Check DB service and connection settings. |

---

## 8. Rollback

```bash
git log --oneline -10
git checkout <known-good-sha>
```

Document data rollback separately if required.

---

## 9. Safety notes

- Production-impacting actions must be disabled by default.
- Secrets must not be committed.
- Manual overrides must be documented and audited.
