# <Project Name> Architecture Topology Guide

**Use:** Guides selection of tiered, threaded, concurrent, distributed, cloud/local, and integration architectures for ForgeFrame autonomous builds.  
**Author:** <Author / AI Partner>  
**Creation Date:** <YYYY-MM-DD>  
**Change Record:**  
- <YYYY-MM-DD> - Initial architecture topology guide.

---

## 1. Purpose

This guide helps humans and AI agents choose the right application topology before implementation. It prevents the agent from building a single-process prototype when the real requirement needs multi-user concurrency, distributed processing, layered architecture, streaming, background workers, or enterprise release landscapes.

---

## 2. Tiered architecture decision model

### 1-tier / local utility

Use when:

```text
single user
local files
small automation
no server required
limited persistence
```

Typical shape:

```text
script/app -> local files/db
```

Risks:

```text
harder to scale
weak multi-user support
limited security boundaries
```

---

### 2-tier / client-server

Use when:

```text
small team
simple app server or DB-backed desktop/web app
moderate concurrency
```

Typical shape:

```text
client -> database or API server
```

Risks:

```text
business logic may leak into client
security can be coarse
scaling limited if DB is directly exposed
```

---

### 3-tier / standard enterprise web app

Use when:

```text
multi-user app
clear UI/API/data separation
role-based access
centralized business logic
```

Typical shape:

```text
UI -> API/service layer -> database
```

Recommended default for most ForgeFrame enterprise apps.

---

### N-tier / enterprise modular architecture

Use when:

```text
multiple services
complex workflows
integration layers
reporting/analytics layers
external systems
separate security/identity layer
```

Typical shape:

```text
UI
  -> API gateway
  -> domain services
  -> workflow/queue layer
  -> integration adapters
  -> data services
  -> operational/reporting stores
```

---

### Microservices / distributed architecture

Use when:

```text
clear bounded contexts
independent deployability required
large team or scaling requirement
service isolation matters
```

Avoid when:

```text
small team
unclear domain boundaries
data consistency is simple
operational maturity is low
```

Risks:

```text
network failures
distributed transactions
observability complexity
version compatibility
higher operations cost
```

---

### Modular monolith

Use when:

```text
enterprise app needs structure
team wants fast delivery
microservice complexity is premature
clean internal boundaries are enough
```

Recommended when domain complexity is high but operational scale does not yet justify microservices.

---

## 3. Threading and concurrency design

Account for:

```text
single-threaded event loop
multi-threading
multi-processing
background workers
job queues
async I/O
scheduler jobs
worker pools
producer/consumer pipelines
backpressure
lock contention
shared mutable state
race conditions
idempotency
```

Required design decisions:

```text
concurrency model:
state ownership:
queue/backpressure model:
retry/idempotency policy:
thread/process safety rules:
```

Required artifacts:

```text
docs/concurrencyDesign.md
tests/test_concurrency_contracts.py
```

---

## 4. Multi-user concurrent design

Account for:

```text
number of concurrent users
session model
tenant model
role/permission model
record locking
optimistic concurrency
pessimistic locking where required
lost update prevention
audit trail
activity history
user notifications
collaboration conflicts
```

Required decisions:

```text
single tenant / multi tenant:
expected users:
expected concurrent sessions:
locking strategy:
conflict resolution strategy:
```

Required artifacts:

```text
docs/multiUserDesign.md
tests/test_multiuser_concurrency.py
```

---

## 5. Distributed architecture design

Account for:

```text
service discovery
API gateway
message broker
queue semantics
event schemas
schema registry
saga/workflow patterns
distributed tracing
service retries
timeouts
circuit breakers
partial failure
eventual consistency
idempotency
outbox/inbox patterns
```

Required artifacts:

```text
docs/distributedArchitecture.md
docs/eventContracts.md
docs/resiliencePatterns.md
tests/test_distributed_contracts.py
```

---

## 6. REST, streaming, batch, and event selection

| Pattern | Best for | Watch for |
|---|---|---|
| REST | CRUD, command APIs, admin screens | chatty APIs, version drift |
| WebSocket | live dashboards, bidirectional updates | reconnect/state recovery |
| SSE | simple server-to-client live feeds | one-way only |
| Queue/event | async workflows, integration, decoupling | poison messages, retries |
| Batch | scheduled ETL, reports, backfills | freshness, rerun logic |
| CDC | data replication/integration | schema drift, ordering |

Each process pipeline must define:

```text
trigger
input contract
output contract
state transition
retry policy
failure handling
monitoring
replay/rerun method
```

---

## 7. Local, cloud, hybrid, and edge deployment

Decision factors:

```text
data sensitivity
latency
cost
control
gpu/compute availability
regulatory requirements
integration location
network bandwidth
availability expectations
operator skillset
```

Deployment options:

```text
local server
on-prem rack/homelab
private cloud
public cloud
hybrid
edge device
containerized
VM-based
bare metal
```

Required artifacts:

```text
docs/deploymentTopology.md
docs/networkArchitecture.md
docs/capacityPlan.md
```

---

## 8. Vendor agent vs internal build decision

Account for:

```text
vendor AI agents
local AI agents
Codex/Claude/Gemini/Cline-style coding tools
internal orchestration
screen automation
browser automation
API-first integration
RPA-style integration
```

Decision criteria:

```text
data exposure
control level
auditability
cost
latency
model capability
vendor lock-in
fallback path
local execution need
```

Required artifacts:

```text
docs/agentStrategy.md
docs/vendorToolBoundary.md
```

---

## 9. Acceptance criteria

- Architecture topology is explicitly selected.
- Tiering is justified.
- Concurrency model is documented.
- Multi-user behavior is documented where applicable.
- Distributed patterns are documented where applicable.
- Integration styles are selected and tested.
- Deployment topology is documented.
- Vendor/internal agent boundaries are documented.
