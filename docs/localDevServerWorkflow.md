# Local Dev Server Workflow

**Use:** Defines how ForgeFrame integrates local Linux development servers, databases, services, and coding agents.  
**Author:** Craig MacPherson / Arti Muse  
**Creation Date:** 2026-05-22  
**Change Record:**  
- 2026-05-22 - Initial local dev server workflow guide.

---

## 1. Purpose

ForgeFrame is designed for serious local development environments: Linux servers, local databases, background services, dashboards, test harnesses, and autonomous coding agents running near the code.

The local dev server is the execution laboratory. Git remains the memory and control surface.

---

## 2. Recommended layout

```text
~/projects/
  project-a/
  project-b/
  forgeframe-/

/opt/<project>/
  services/
  logs/
  data/
  artifacts/
```

Project repos should contain source, docs, tests, and scripts. Large runtime artifacts should live outside Git unless explicitly approved.

---

## 3. Environment pattern

Use:

```text
.env.example     committed
.env             local only, ignored
config/*.json    committed only when safe
```

Never commit real credentials.

---

## 4. Service pattern

For long-running projects:

```text
scripts/start_<service>.sh
scripts/stop_<service>.sh
scripts/status_<service>.sh
scripts/run_tests.sh
scripts/run_acceptance.sh
```

Optional systemd units:

```text
scripts/systemd/<service>.service
```

---

## 5. Database pattern

Use migrations:

```text
db/migrations/
```

Rules:

```text
additive migrations first
no destructive changes without explicit task and backup
schema tests required
migration numbers must follow existing repo sequence
```

---

## 6. Local testing pattern

Run task-level tests first, then broader regression:

```bash
python3 -m pytest tests/test_current_task.py -v
python3 -m pytest tests -k "relevant_keyword" -v
```

For final acceptance:

```bash
scripts/run_acceptance.sh
```

---

## 7. Logs and artifacts

Keep out of Git by default:

```text
logs/
*.log
artifacts/
models/
*.sqlite
*.db
__pycache__/
.pytest_cache/
```

Commit only schemas, metadata examples, and small fixtures.

---

## 8. Human/GPT/Agent loop

```text
Human monitors terminal and results
GPT reviews architecture and gap depth
Codex edits code on local server
Git records every checkpoint
```

This creates a practical distributed development organism without giving any single agent uncontrolled authority.
