# <Project Name> Engineering Coding Standards

**Use:** Defines coding, documentation, naming, validation, error handling, and maintainability standards for ForgeFrame autonomous builds.  
**Author:** <Author / AI Partner>  
**Creation Date:** <YYYY-MM-DD>  
**Change Record:**  
- <YYYY-MM-DD> - Initial engineering coding standards template.

---

## 1. Purpose

Autonomous agents produce better enterprise applications when engineering standards are explicit. This file defines the minimum coding standards that every ForgeFrame-derived project should customize and enforce.

These standards apply to:

```text
source code
scripts
database migrations
configuration files
tests
documentation
runbooks
agent-generated code
```

---

## 2. Required file header

Every new source file, script, migration, and significant documentation file must include a header appropriate for the file type.

Standard header:

```text
filename: <path/name>
Use: <what this file does>
Author: Craig MacPherson / Arti Muse or project-defined authors
Creation Date: <YYYY-MM-DD>
Change Record:
- <YYYY-MM-DD> - <change summary>
```

For Python:

```python
# filename: src/example/exampleService.py
# Use: Provides example service behavior for <project>.
# Author: Craig MacPherson / Arti Muse
# Creation Date: <YYYY-MM-DD>
# Change Record:
# - <YYYY-MM-DD> - Initial implementation.
```

For shell:

```bash
#!/usr/bin/env bash
# filename: scripts/example.sh
# Use: Runs the example workflow.
# Author: Craig MacPherson / Arti Muse
# Creation Date: <YYYY-MM-DD>
# Change Record:
# - <YYYY-MM-DD> - Initial implementation.
```

For SQL:

```sql
-- filename: db/migrations/001_example.sql
-- Use: Adds example database objects.
-- Author: Craig MacPherson / Arti Muse
-- Creation Date: <YYYY-MM-DD>
-- Change Record:
-- - <YYYY-MM-DD> - Initial migration.
```

---

## 3. Inline documentation standard

Use inline comments to explain:

```text
why logic exists
non-obvious business rules
risk or safety gates
fallback behavior
external assumptions
edge cases
performance tradeoffs
security-sensitive decisions
```

Do not over-comment obvious code.

Good:

```python
# Fail closed when account state is stale because risk calculations may be invalid.
if account_age_seconds > max_account_age_seconds:
    return RiskDecision.blocked("STALE_ACCOUNT_STATE")
```

Poor:

```python
# Add one to x.
x = x + 1
```

---

## 4. Case usage documentation in code

For complex services, include a `CaseUsage` section in the class or module docstring.

Example:

```python
class TradeOutcomeLabeler:
    """
    Use:
        Labels hypothetical long/short outcomes for supervised training.

    CaseUsage:
        - Historical replay creates labels for model training.
        - Paper trading labels rejected and accepted candidates.
        - Calibration reports compare predicted probability to actual outcomes.

    Safety:
        Labels may inspect future candles only after feature construction.
        Feature generation must never read label data.
    """
```

Use `CaseUsage` for:

```text
repositories
services
adapters
pipelines
state machines
risk gates
model trainers
UI controllers
integration boundaries
```

---

## 5. Naming standards

Names must be meaningful, searchable, and domain-aligned.

Use:

```text
clear domain names
consistent tense
consistent units
explicit booleans
explicit timestamps
explicit IDs
```

Preferred examples:

```text
max_account_age_seconds
risk_per_trade_pct
created_at_utc
cycle_id
feature_version
is_live_enabled
should_block_new_entry
```

Avoid:

```text
data
stuff
temp
x1
flag
obj
result2
magic
```

Boolean naming:

```text
is_*
has_*
can_*
should_*
```

Timestamp naming:

```text
*_ts_utc
created_at_utc
updated_at_utc
last_success_ts_utc
```

Numeric unit suffixes:

```text
*_ms
*_seconds
*_bps
*_pct
*_usd
*_count
```

---

## 6. Constants and magic values

Do not scatter magic numbers or string literals.

Use named constants or typed configuration:

```python
MAX_RETRY_COUNT = 3
DEFAULT_REQUEST_TIMEOUT_SECONDS = 30
RISK_MODE_PAPER = "paper"
```

Document constants that represent business or safety assumptions.

---

## 7. Data validation and cleaning

Every boundary must validate input.

Boundaries include:

```text
API requests
file imports
database reads
external API responses
message queues
user input
model output
LLM output
configuration files
```

Validation should check:

```text
required fields
data types
numeric ranges
enum values
timestamps/timezones
schema version
record freshness
referential consistency
string length
invalid characters
null behavior
```

Cleaning should be explicit and logged when material:

```text
trim whitespace
normalize casing
normalize timezone
coerce safe numeric types
reject invalid records
quarantine bad input where needed
```

Required artifacts:

```text
src/common/validation.py
src/common/cleaning.py
tests/test_validation.py
tests/test_data_cleaning.py
```

---

## 8. Gate controls

Critical actions require explicit gates.

Gate examples:

```text
live execution gate
promotion gate
migration gate
release gate
admin action gate
model promotion gate
data deletion gate
external API write gate
configuration change gate
```

Each gate must define:

```text
input conditions
block conditions
approval conditions
audit event
test coverage
failure behavior
```

Gate implementation should be centralized where practical.

Required artifacts:

```text
docs/gateControlModel.md
src/gates/
tests/test_gate_controls.py
```

---

## 9. Error handling standard

Define an error taxonomy:

```text
ValidationError
ConfigurationError
DataFreshnessError
IntegrationError
RetryableExternalError
FatalExternalError
PermissionError
StateTransitionError
SafetyGateError
```

Every error path should answer:

```text
is it retryable?
should the user/operator see it?
should it be logged as warn/error/critical?
should processing continue?
should system fail closed?
```

Required artifacts:

```text
src/common/errors.py
docs/errorHandling.md
tests/test_error_handling.py
```

---

## 10. Logging and debug levels

Logging must be structured and configurable.

Minimum levels:

```text
ERROR   failures requiring attention
WARN    degraded behavior or recoverable problems
INFO    normal lifecycle events
DEBUG   diagnostic details
TRACE   high-volume internals, disabled by default
```

Every major operation should include correlation fields where applicable:

```text
request_id
cycle_id
trade_id
job_id
user_id
model_name
model_version
service_name
```

Logging must avoid leaking secrets or sensitive values.

Required artifacts:

```text
docs/loggingStrategy.md
src/common/logging.py
tests/test_logging_redaction.py
```

---

## 11. Code maps

Each project should maintain code maps that help humans and AI agents understand the repository quickly.

Required artifacts:

```text
docs/codeMap.md
docs/serviceMap.md
docs/moduleMap.md
docs/dataFlowMap.md
docs/dependencyMap.md
```

The code map should include:

```text
module purpose
entry points
critical services
database ownership
external dependencies
test coverage
known risks
```

Agents should update code maps when they add significant modules or change architecture.

---

## 12. Complexity and obfuscation guidance

Avoid unnecessary obfuscation. Enterprise maintainability is usually more valuable than cleverness.

Use encapsulation and interface boundaries instead of hiding logic.

Legitimate complexity-control techniques:

```text
clear module boundaries
private helper functions
adapter boundaries
contract tests
configuration isolation
redaction of sensitive logs
least-privilege interfaces
```

Avoid:

```text
intentionally obscure names
hidden side effects
magic globals
implicit runtime mutations
unexplained dynamic imports
untraceable generated code
```

If obfuscation is required for IP protection, document:

```text
what is obfuscated
why
how to debug it
how to test it
who can maintain it
```

---

## 13. Code quality checks

Recommended checks:

```text
formatting
linting
type checks where practical
unit tests
integration tests
security checks
dependency checks
coverage checks where useful
```

Required artifacts:

```text
scripts/run_quality.sh
scripts/run_tests.sh
```

---

## 14. Autonomous agent compliance

Agents must:

```text
include file headers
use meaningful names
add tests
update docs for significant modules
avoid unrelated refactors
clean cache artifacts
commit small scoped changes
summarize changed files and tests
```

Final acceptance must verify these standards are applied or documented as not applicable.
