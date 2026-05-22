# <Project Name> Enterprise Methodology Reference Model

**Use:** Maps established enterprise, architecture, delivery, operations, data, security, UX, AI, and governance methodologies into ForgeFrame design artifacts and autonomous work packages.  
**Author:** Craig MacPherson / Arti Muse  
**Creation Date:** <YYYY-MM-DD>  
**Change Record:**  
- <YYYY-MM-DD> - Initial enterprise methodology reference model.

---

## 1. Purpose

ForgeFrame should not reinvent enterprise delivery from scratch. It should use proven methodologies as source patterns, then translate them into AI-executable repository artifacts.

This model maps common methodologies into:

```text
requirements
design sections
work packages
task cards
acceptance criteria
runbooks
tests
operational controls
```

Every ForgeFrame project should review this file and decide which methodologies apply.

---

## 2. Core delivery methods

### Agile / Scrum

Use for iterative delivery, backlog management, sprint planning, refinement, review, and retrospective.

ForgeFrame translation:

```text
product vision -> README / mission
product backlog -> taskCards.md
sprint backlog -> current autonomous task window
user stories -> requirement/task-card objectives
acceptance criteria -> task-card acceptance criteria
increment -> commit or release candidate
retrospective -> holisticCompletionReview.md / knownLimitations.md
```

Required artifacts:

```text
docs/agileDeliveryPlan.md
docs/backlog.md
templates/taskCards.md
```

---

### Kanban

Use for continuous flow, work-in-progress control, and visible status.

ForgeFrame translation:

```text
TODO -> NOT_STARTED task cards
DOING -> current agent task
REVIEW -> committed checkpoint awaiting review
DONE -> accepted task card
BLOCKED -> STOP_GATE or known limitation
```

Required artifacts:

```text
docs/workStatus.md
docs/stopGateLog.md
```

---

### DevOps

Use for build/test/deploy/operate feedback loops.

ForgeFrame translation:

```text
plan -> requirements/workPackages
code -> task-card implementation
build -> setup scripts/package configs
test -> unit/integration/regression/acceptance
release -> releaseManagement.md
deploy -> deploymentPlan.md
operate -> runbook/observability
monitor -> metrics/alerts/self-healing
feedback -> holistic review/self-improvement
```

Required artifacts:

```text
docs/devOpsPlan.md
docs/deploymentPlan.md
docs/releaseManagement.md
docs/observability.md
scripts/run_tests.sh
scripts/run_acceptance.sh
```

---

### GitOps

Use for repository-driven environment state and deployment control.

ForgeFrame translation:

```text
Git repo -> source of truth
pull request -> environment/release proposal
branch/tag -> release candidate
merge -> promotion gate
rollback -> checkout/tag/redeploy
```

Required artifacts:

```text
docs/gitWorkflow.md
docs/releaseManagement.md
docs/rollbackPlan.md
```

---

## 3. Enterprise architecture methods

### TOGAF / ADM-style architecture development

Use for enterprise architecture lifecycle and alignment.

ForgeFrame translation:

```text
architecture vision -> docs/architecture.md
business architecture -> docs/businessArchitecture.md
information systems architecture -> docs/applicationArchitecture.md + docs/dataArchitecture.md
technology architecture -> docs/technologyArchitecture.md
opportunities/solutions -> workPackages.md
migration planning -> migrationPlan.md
implementation governance -> acceptanceCriteria.md
architecture change management -> holisticCompletionReview.md
```

Required artifacts:

```text
docs/businessArchitecture.md
docs/applicationArchitecture.md
docs/dataArchitecture.md
docs/technologyArchitecture.md
docs/migrationPlan.md
```

---

### Zachman-style classification

Use for completeness across interrogatives and stakeholder views.

ForgeFrame translation:

```text
What -> data/model/artifacts
How -> process/functions/services
Where -> network/deployment/topology
Who -> roles/personas/access
When -> events/lifecycles/schedules
Why -> goals/rules/constraints
```

Required artifact:

```text
docs/architectureCompletenessMatrix.md
```

---

### C4 Model

Use for software architecture diagrams.

ForgeFrame translation:

```text
System Context -> docs/diagrams/context.md
Container -> docs/diagrams/container.md
Component -> docs/diagrams/component.md
Code -> generated or selective detailed docs
```

Required artifacts:

```text
docs/diagrams/context.md
docs/diagrams/container.md
docs/diagrams/component.md
```

---

### Domain-Driven Design

Use for complex domain modeling.

ForgeFrame translation:

```text
ubiquitous language -> docs/glossary.md
bounded contexts -> docs/domainModel.md
aggregates/entities/value objects -> data model + domain modules
domain services -> service layer
repositories -> persistence boundaries
domain events -> event contracts
```

Required artifacts:

```text
docs/glossary.md
docs/domainModel.md
docs/eventModel.md
```

---

### Clean Architecture / Hexagonal Architecture

Use for testable service boundaries.

ForgeFrame translation:

```text
domain core -> src/domain
use cases -> src/application
ports -> src/contracts
adapters -> src/adapters
infrastructure -> src/infrastructure
```

Required artifacts:

```text
docs/serviceBoundaryDesign.md
docs/adapterContracts.md
```

---

## 4. IT governance and service management

### COBIT-style governance

Use for control objectives, governance alignment, risk, and performance measurement.

ForgeFrame translation:

```text
goals cascade -> requirements priorities
control objectives -> acceptanceCriteria.md
risk optimization -> riskRegister.md
resource optimization -> costModel.md / capacityPlan.md
performance measurement -> metrics/observability
```

Required artifacts:

```text
docs/governanceModel.md
docs/controlObjectives.md
docs/riskRegister.md
docs/metricsPlan.md
```

---

### ITIL / ITSM

Use for service management, incident/problem/change/release operations.

ForgeFrame translation:

```text
incident management -> docs/incidentRunbook.md
problem management -> docs/problemManagement.md
change enablement -> docs/changeManagement.md
release management -> docs/releaseManagement.md
service request -> docs/supportModel.md
configuration management -> docs/configuration.md
service level management -> docs/sloSla.md
```

Required artifacts:

```text
docs/incidentRunbook.md
docs/problemManagement.md
docs/changeManagement.md
docs/sloSla.md
```

---

### CMMI-style maturity improvement

Use for process maturity and continuous improvement.

ForgeFrame translation:

```text
initial -> ad hoc scripts
managed -> task cards and commits
defined -> reusable templates
quantitatively managed -> metrics and quality gates
optimizing -> self-improvement loop
```

Required artifact:

```text
docs/maturityModel.md
```

---

## 5. Project and program management

### PMBOK / PRINCE2-style controls

Use for scope, schedule, cost, risk, quality, stakeholder, and change governance.

ForgeFrame translation:

```text
business case -> docs/businessCase.md
scope baseline -> requirements.md
work breakdown -> workPackages.md
schedule -> roadmap.md
risk register -> riskRegister.md
quality plan -> qaStrategy.md
change control -> changeManagement.md
stakeholders -> stakeholderMap.md
lessons learned -> holisticCompletionReview.md
```

Required artifacts:

```text
docs/businessCase.md
docs/roadmap.md
docs/riskRegister.md
docs/stakeholderMap.md
```

---

### Six Sigma / Lean IT

Use for waste reduction, defect reduction, root cause analysis, and process optimization.

ForgeFrame translation:

```text
DMAIC -> define/measure/analyze/improve/control sections
value stream -> processFlow.md
root cause -> problemManagement.md
control plan -> acceptanceCriteria.md + monitoring
```

Required artifacts:

```text
docs/valueStream.md
docs/rootCausePlaybook.md
docs/controlPlan.md
```

---

## 6. Security and compliance methods

### ISO 27001 / ISMS-style security management

Use for security control management and risk treatment.

ForgeFrame translation:

```text
asset inventory -> docs/assetInventory.md
risk assessment -> threatModel.md + riskRegister.md
control selection -> securityArchitecture.md
statement of applicability -> securityControlMatrix.md
continuous improvement -> securityReview.md
```

Required artifacts:

```text
docs/securityArchitecture.md
docs/securityControlMatrix.md
docs/threatModel.md
docs/assetInventory.md
```

---

### NIST Cybersecurity Framework-style lifecycle

Use for identify/protect/detect/respond/recover coverage.

ForgeFrame translation:

```text
identify -> asset inventory, data classification
protect -> authentication, access, encryption
 detect -> monitoring, audit, alerts
respond -> incident runbook
recover -> backup/restore and continuity
```

Required artifacts:

```text
docs/securityLifecycle.md
docs/incidentRunbook.md
docs/backupRecovery.md
```

---

### OWASP secure application design

Use for web/API/application security.

ForgeFrame translation:

```text
input validation -> API contracts/tests
access control -> authorization model
secure configuration -> config tests
logging/monitoring -> observability
dependency safety -> package scanning process
```

Required artifacts:

```text
docs/appSecurityChecklist.md
tests/test_security_contracts.py
```

---

### Zero Trust

Use for identity-first access and least privilege.

ForgeFrame translation:

```text
never trust, always verify -> auth/authz tests
least privilege -> role matrix
continuous validation -> session/token policy
segmentation -> networkArchitecture.md
```

Required artifacts:

```text
docs/accessControlModel.md
docs/rolePermissionMatrix.md
docs/networkArchitecture.md
```

---

## 7. Data and analytics methods

### DAMA-DMBOK-style data management

Use for data governance, architecture, modelling, quality, metadata, master data, warehousing, and lifecycle.

ForgeFrame translation:

```text
data governance -> dataGovernance.md
data architecture -> dataArchitecture.md
data modelling -> dataModel.md
metadata -> metadataControl.md
data quality -> dataQualityPolicy.md
master/reference data -> masterDataManagement.md
integration/interoperability -> etlDesign.md
lifecycle -> dataRetentionPolicy.md
```

Required artifacts:

```text
docs/dataGovernance.md
docs/dataModel.md
docs/metadataControl.md
docs/masterDataManagement.md
docs/dataQualityPolicy.md
```

---

### DataOps

Use for reliable data pipelines.

ForgeFrame translation:

```text
pipeline automation -> ETL scripts/workflows
pipeline tests -> data quality tests
lineage -> metadata records
monitoring -> pipeline observability
rollback/replay -> data recovery playbooks
```

Required artifacts:

```text
docs/dataOpsPlan.md
docs/etlDesign.md
tests/test_data_quality.py
```

---

### MLOps

Use for model lifecycle and governance.

ForgeFrame translation:

```text
feature store -> feature design
training data -> dataset builder
model registry -> registry tables/files
validation -> walk-forward or validation reports
calibration -> calibration reports
promotion -> modelPromotion.md
monitoring -> drift detection
rollback -> model rollback plan
```

Required artifacts:

```text
docs/mlDesign.md
docs/modelRegistry.md
docs/modelPromotionPolicy.md
docs/modelMonitoring.md
```

---

### RAG / Vector retrieval methodology

Use for memory, retrieval, and context-grounded AI.

ForgeFrame translation:

```text
chunking -> vectorDbDesign.md
embedding -> embedding policy
metadata -> metadata schema
retrieval -> retriever contracts
reranking -> retrieval pipeline
memory -> memoryFramework.md
evaluation -> retrieval tests
```

Required artifacts:

```text
docs/vectorDbDesign.md
docs/ragDesign.md
docs/memoryFramework.md
```

---

## 8. UX and product design methods

### Design Thinking / Human-Centered Design

Use for user empathy, problem definition, ideation, prototyping, and testing.

ForgeFrame translation:

```text
personas -> uiUxDesign.md
journeys -> userJourneyMap.md
prototypes -> wireframes/mockups
usability testing -> uxTestingPlan.md
iteration -> backlog/task cards
```

Required artifacts:

```text
docs/personas.md
docs/userJourneyMap.md
docs/uiUxDesign.md
docs/wireframes.md
docs/uxTestingPlan.md
```

---

### Accessibility-first design

Use for inclusive UI delivery.

ForgeFrame translation:

```text
semantic UI -> UI component standards
keyboard navigation -> UX tests
contrast/readability -> visual design checks
screen reader support -> accessibility tests
```

Required artifacts:

```text
docs/accessibilityPlan.md
tests/test_accessibility.py
```

---

## 9. Reliability engineering methods

### SRE

Use for reliability, observability, error budgets, incident response, and automation.

ForgeFrame translation:

```text
SLI/SLO -> sloSla.md
error budget -> reliabilityPlan.md
incident response -> incidentRunbook.md
monitoring -> observability.md
automation -> selfHealing.md
postmortem -> problemManagement.md
```

Required artifacts:

```text
docs/reliabilityPlan.md
docs/sloSla.md
docs/observability.md
docs/selfHealing.md
```

---

### Twelve-Factor App

Use for deployable service design.

ForgeFrame translation:

```text
codebase -> Git repo
config -> environment/config schema
dependencies -> package manifest
backing services -> DB/service contracts
logs -> structured event streams
processes -> stateless where possible
```

Required artifacts:

```text
docs/deploymentPlan.md
docs/configuration.md
docs/loggingStrategy.md
```

---

## 10. Quality engineering methods

### TDD / BDD

Use for test-first or behavior-oriented development.

ForgeFrame translation:

```text
unit tests -> tests/test_*.py
behavior scenarios -> feature files or scenario docs
acceptance criteria -> task cards
regression -> run_regression.sh
```

Required artifacts:

```text
docs/qaStrategy.md
scripts/run_regression.sh
scripts/run_acceptance.sh
```

---

### Shift-left testing

Use for early validation.

ForgeFrame translation:

```text
contract tests before integration
schema tests before data loads
mock adapters before live integrations
security tests before release
UX tests before final UI acceptance
```

Required artifacts:

```text
docs/testStrategy.md
tests/
```

---

## 11. Financial and operational management

### FinOps / cost governance

Use for cloud/API/LLM/computation cost visibility and optimization.

ForgeFrame translation:

```text
cost allocation -> costModel.md
usage metrics -> metrics
budget thresholds -> alerts
optimization -> performancePlan.md/tokenOptimization.md
```

Required artifacts:

```text
docs/costModel.md
docs/aiCostModel.md
docs/tokenOptimization.md
```

---

## 12. Parallel AI agent orchestration

Use for splitting work across multiple coding agents or subprocesses.

ForgeFrame translation:

```text
interface-first design -> contracts before implementation
parallel tasks -> dependency graph
agent ownership -> agentOrchestration.md
merge checkpoints -> integration plan
conflict avoidance -> branch/worktree rules
```

Required artifacts:

```text
docs/workPackageDependencies.md
docs/parallelExecutionPlan.md
docs/agentOrchestration.md
```

---

## 13. Minimum methodology stack recommendation

For most ForgeFrame enterprise applications, use at least:

```text
Agile/Scrum for iterative build
DevOps for build-test-operate loop
GitOps for repository-controlled delivery
TOGAF/C4/DDD for architecture coverage
ITIL for service operations
COBIT-style controls for governance
ISO/NIST/OWASP patterns for security
DAMA/DataOps for data lifecycle
MLOps when ML exists
SRE for reliability
Design Thinking for UX
TDD/BDD and shift-left QA for testing
FinOps for cost control
```

---

## 14. How agents should use this file

Autonomous agents should:

1. Read this file during project initialization.
2. Select applicable methodologies.
3. Map each selected methodology into work packages and task cards.
4. Mark non-applicable methodologies with reasons.
5. Add missing artifacts to the extended task queue.
6. Validate coverage through `capabilityCoverageMatrix.md`.
