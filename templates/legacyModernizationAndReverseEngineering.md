# <Project Name> Legacy Modernization and Reverse Engineering Guide

**Use:** Guides AI-assisted reverse engineering, replatforming, modernization, and replacement of existing applications.  
**Author:** <Author / AI Partner>  
**Creation Date:** <YYYY-MM-DD>  
**Change Record:**  
- <YYYY-MM-DD> - Initial legacy modernization and reverse engineering guide.

---

## 1. Purpose

Many enterprise builds are not greenfield. They involve old code, undocumented databases, batch jobs, integrations, reports, spreadsheets, access databases, vendor apps, scripts, or tribal knowledge.

ForgeFrame should help AI reverse engineer what exists before replacing or enhancing it.

---

## 2. Modernization strategy options

| Strategy | Meaning | Use when | Risk |
|---|---|---|---|
| Rehost | Move without major change | infrastructure/platform migration | old flaws preserved |
| Replatform | Move to new platform with limited changes | runtime or DB modernization | hidden compatibility gaps |
| Refactor | Improve internal structure | code still valuable | regression risk |
| Rebuild | Rewrite with same business function | old code too brittle | scope creep |
| Replace | Use new product/platform | commodity function | vendor lock-in |
| Retire | Remove system | no longer needed | dependency surprises |
| Encapsulate | Wrap old system with API | cannot replace yet | legacy dependency remains |
| Strangler pattern | Replace piece by piece | large critical system | requires strong routing/control |

---

## 3. Reverse engineering checklist

Account for:

```text
source code inventory
repository/history inventory
runtime inventory
scheduled jobs
batch processes
database schema
data lineage
business rules
reports
interfaces
files exchanged
APIs called
users and roles
security model
configuration
secrets handling
error handling
logs
operational runbooks
known incidents
manual workarounds
performance bottlenecks
licensing/vendor constraints
```

Required artifacts:

```text
docs/legacySystemInventory.md
docs/reverseEngineeringFindings.md
docs/businessRuleCatalog.md
docs/interfaceInventory.md
docs/reportInventory.md
docs/dataLineage.md
```

---

## 4. AI-assisted reverse engineering workflow

```text
collect files and schemas
build file/module map
extract entry points
trace data flows
extract business rules
identify dead code
identify duplicated logic
identify integration points
identify manual operator steps
create current-state architecture
create target-state architecture
create migration plan
create regression harness
```

---

## 5. Current-state reconstruction

The AI should produce:

```text
current architecture diagram
current database model
current process flow
current integration map
current security model
current operational model
current report catalog
known risk register
```

---

## 6. Target-state design

The modernization design must define:

```text
replacement architecture
migration approach
data conversion strategy
parallel run strategy
cutover plan
rollback plan
user transition plan
integration transition plan
report reconciliation plan
```

---

## 7. Regression and equivalence testing

For modernization, tests must compare old vs new behavior:

```text
same input -> same output
same report totals
same business-rule result
same data transformations
same security outcomes
same audit expectations
```

Required artifacts:

```text
tests/test_legacy_equivalence.py
tests/test_report_reconciliation.py
tests/test_data_conversion.py
```

---

## 8. Replatforming considerations

Account for:

```text
runtime differences
OS differences
path/file differences
case sensitivity
timezone behavior
numeric precision
character encoding
transaction semantics
scheduler differences
network/firewall differences
authentication differences
```

---

## 9. Acceptance criteria

- Current state is documented before replacement.
- Business rules are catalogued.
- Integrations are inventoried.
- Data conversion path is defined.
- Regression/equivalence tests exist.
- Cutover and rollback are documented.
- Known gaps are recorded.
