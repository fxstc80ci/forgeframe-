# <Project Name> Modular Scope and Boundary Control

**Use:** Defines file/module boundaries, autonomous-agent scope limits, modular code organization, and parallel development controls for ForgeFrame builds.  
**Author:** <Author / AI Partner>  
**Creation Date:** <YYYY-MM-DD>  
**Change Record:**  
- <YYYY-MM-DD> - Initial modular scope and boundary-control template.

---

## 1. Purpose

Autonomous agents must not be allowed to roam freely across a repository. Each task must define exactly which files, modules, interfaces, tests, and documents are in scope.

This prevents:

```text
large unreviewable changes
one giant file
uncontrolled refactors
mixed concerns
merge conflicts
hard-to-test code
hidden runtime behavior changes
parallel-agent collisions
```

ForgeFrame projects must design for modularity, testability, reviewability, and concurrent development.

---

## 2. Scope boundary rule

Every task card must include an explicit scope section:

```text
Allowed files:
  - <path>
  - <path>

Allowed modules:
  - <module/package>

Allowed tests:
  - <test path>

Allowed docs:
  - <doc path>

Out of scope:
  - <file/module/behavior>
  - <file/module/behavior>
```

Agents must not edit files outside the allowed scope unless one of these support exceptions applies:

```text
package __init__ file required for import
test fixture needed for the scoped tests
shared contract explicitly named by current task
documentation required to record a discovered mismatch
cache/artifact cleanup
```

Any support exception must be listed in the task summary.

---

## 3. Task-card boundary template

Each task card should include:

```text
### Scope boundary

Allowed implementation files:
- src/<domain>/<module>.py

Allowed test files:
- tests/test_<module>.py

Allowed docs:
- docs/<area>.md

Explicitly out of scope:
- live execution changes
- unrelated refactors
- UI changes
- database migrations unless listed
- configuration changes unless listed

Support exceptions allowed:
- package __init__.py if needed
- test fixture update if needed
```

---

## 4. Modular code organization standard

Prefer this shape for enterprise applications:

```text
src/
  api/                 external API routes/controllers
  application/         use cases / orchestration
  domain/              domain models and domain services
  contracts/           Pydantic/types/interfaces/events
  repositories/        persistence boundaries
  adapters/            external system adapters
  config/              typed configuration
  security/            auth/authz/security helpers
  observability/       logging/metrics/health
  workers/             background jobs
  pipelines/           ETL/process pipelines
  ui/                  UI layer if applicable
  common/              small shared utilities only

tests/
  unit/
  integration/
  contract/
  e2e/
  fixtures/

docs/
  architecture.md
  codeMap.md
  moduleMap.md
  serviceMap.md
  dataFlowMap.md
```

Domain-specific projects may alter this, but the module map must explain the chosen structure.

---

## 5. Anti-patterns

Avoid:

```text
one giant app.py
one giant utils.py
everything in src/
business logic in UI handlers
SQL scattered everywhere
API calls inside model logic
security checks duplicated randomly
configuration constants scattered across files
hidden background threads started on import
large unrelated refactors in feature tasks
```

---

## 6. Module size guidance

Guidance, not hard limits:

```text
single-purpose module: preferred
module over 500 lines: review for split
module over 1000 lines: split or justify
function over 80 lines: review for decomposition
class with unrelated responsibilities: split
common utility file growing rapidly: split by concern
```

Accept exceptions only when documented.

---

## 7. Interface-first development

For concurrent work, build contracts first:

```text
contracts/interfaces
schemas/events
repository interfaces
adapter interfaces
API request/response models
service input/output models
```

Then parallel agents can work on implementations behind stable interfaces.

Required artifacts:

```text
docs/interfaceContracts.md
docs/moduleDependencyGraph.md
tests/test_contracts.py
```

---

## 8. Dependency direction rules

Recommended dependency direction:

```text
api -> application -> domain
application -> repositories/adapters through interfaces
repositories -> database
adapters -> external systems
domain -> no infrastructure dependencies
```

Avoid circular imports.

Agents must document any intentional dependency inversion or exception.

---

## 9. Parallel-agent development controls

When multiple agents/subprocesses work concurrently:

```text
assign non-overlapping modules
assign separate branches or worktrees
define contract files first
avoid shared-file edits unless coordinated
commit task-level checkpoints
run integration tests after merging branches
```

Required artifacts:

```text
docs/parallelExecutionPlan.md
docs/workPackageDependencies.md
docs/agentOwnershipMap.md
```

---

## 10. Work-package dependency model

Each work package should declare:

```text
upstream dependencies
downstream dependents
parallelizable tasks
shared contracts
integration checkpoints
risk of merge conflicts
```

Example:

```text
WP2 State Contracts
  upstream: WP1 DB schema
  downstream: WP3 features, WP4 models
  parallelizable: schemas and repository tests after DB contract exists
  shared contracts: stateSchemas.py
```

---

## 11. Code maps and ownership

Every major module should be represented in:

```text
docs/codeMap.md
docs/moduleMap.md
docs/serviceMap.md
docs/dependencyMap.md
```

Minimum module-map fields:

| Module | Purpose | Owner | Inputs | Outputs | Tests | Dependencies | Risk |
|---|---|---|---|---|---|---|---|
|  |  |  |  |  |  |  |  |

---

## 12. Testability standard

Each module should be testable independently.

Design for:

```text
pure functions where practical
dependency injection for external systems
mockable adapters
small service methods
explicit contracts
no hidden import-time side effects
controlled time providers
controlled randomness
fixtures for external responses
```

---

## 13. Reviewability standard

A task should be reviewable from:

```text
git diff --stat
git diff
unit test output
commit summary
module map update where applicable
```

If a diff is too large to review, split the task.

---

## 14. Autonomous-agent compliance

Before committing, agents must report:

```text
files edited
files intentionally out of scope and untouched
support exceptions used
new/updated tests
module boundaries respected
any dependency-direction exceptions
```

---

## 15. Acceptance criteria

- Every task card has explicit allowed files/modules/tests/docs.
- Code is organized into testable modules.
- No large catch-all modules are introduced without justification.
- Shared contracts are created before parallel implementation.
- Parallel work ownership is documented where applicable.
- Code maps are updated for significant modules.
- Agents report any scope exceptions.
