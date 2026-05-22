# <Project Name> Technology Decision Matrix

**Use:** Guides language, framework, platform, integration, agent, and deployment choices for ForgeFrame autonomous builds.  
**Author:** <Author / AI Partner>  
**Creation Date:** <YYYY-MM-DD>  
**Change Record:**  
- <YYYY-MM-DD> - Initial technology decision matrix.

---

## 1. Purpose

AI coding agents perform better when the technology choices are explicit. This matrix prevents autonomous builds from drifting into tools, languages, frameworks, or integration patterns that are unsuitable for the project, difficult to test, or weakly supported by AI coding agents.

Every ForgeFrame project should define technology decisions before deep implementation begins.

---

## 2. Language and runtime selection

| Area | Preferred choices | Use when | Avoid when | Decision |
|---|---|---|---|---|
| Backend services | Python, TypeScript/Node, Go, Java, C# | API, workers, orchestration, enterprise services | Team/runtime mismatch |  |
| AI/ML/data | Python | ML, ETL, data science, vector/RAG, automation | Hard real-time or browser UI only |  |
| Frontend | TypeScript, React, Vue, Svelte | Complex UI, dashboards, design systems | Simple static admin page |  |
| Systems/performance | Go, Rust, C/C++ | high-concurrency, low-latency, embedded, agents | Fast iteration is more important |  |
| Enterprise integration | Java, C#, Python | mature enterprise APIs, DB, legacy integration | lightweight scripts only |  |
| Shell/ops | Bash, PowerShell | environment setup, service scripts | complex business logic |  |
| Database logic | SQL, PL/pgSQL, PL/SQL | data-intensive operations near DB | logic belongs in app layer |  |

---

## 3. AI-build suitability criteria

Score each candidate stack from 1-5:

| Criteria | Score | Notes |
|---|---:|---|
| AI coding support quality |  |  |
| Test ecosystem maturity |  |  |
| Package ecosystem maturity |  |  |
| Debugging clarity |  |  |
| Type safety |  |  |
| Runtime performance |  |  |
| Team familiarity |  |  |
| Deployment simplicity |  |  |
| Security ecosystem |  |  |
| Long-term maintainability |  |  |

---

## 4. Recommended default stacks

### Python-first AI/data/backend stack

Use for AI, ML, ETL, RAG, automation, research, data-heavy workflows:

```text
Python 3.11+
Pydantic
FastAPI
SQLAlchemy or psycopg
PostgreSQL/pgvector
pytest
ruff/mypy optional
```

### TypeScript-first web app stack

Use for modern full-stack UI apps:

```text
TypeScript
React or Next.js
Node.js
Prisma or Drizzle
PostgreSQL
Playwright/Vitest
```

### Go service stack

Use for high-concurrency service tooling:

```text
Go
stdlib net/http or Gin/Fiber
PostgreSQL driver
structured logging
go test
```

### Enterprise JVM/.NET stack

Use where organization standards require it:

```text
Java/Spring Boot or C#/.NET
OpenAPI
PostgreSQL/Oracle/SQL Server
JUnit/xUnit
enterprise auth integration
```

---

## 5. Cloud vs local decision

| Factor | Local first | Cloud first | Hybrid |
|---|---|---|---|
| Sensitive data | preferred | only if approved | common |
| High GPU need | local if hardware exists | cloud if bursty | common |
| Enterprise scale | possible | common | common |
| Cost control | strong | requires FinOps | common |
| Offline control | strong | weak | moderate |
| Managed reliability | manual | strong | moderate |
| Regulatory constraints | often strong | depends | common |

Decision:

```text
local / cloud / hybrid:
reason:
risks:
controls:
```

---

## 6. Build vs vendor agent decision

| Need | Build internal | Use vendor agent/tool | Hybrid |
|---|---|---|---|
| Generic coding | no | yes | yes |
| Business-specific workflow | yes | maybe | yes |
| Deep local system access | yes | maybe | yes |
| Security-sensitive automation | often yes | only with controls | yes |
| One-off productivity | no | yes | no |
| Long-lived enterprise platform | yes | maybe | yes |

Decision record:

```text
vendor tool:
internal component:
boundary:
data shared:
security controls:
fallback:
```

---

## 7. REST vs streaming vs event-driven

| Pattern | Use when | Avoid when | Examples |
|---|---|---|---|
| REST | request/response, CRUD, admin APIs | high-frequency push data | config APIs, reports |
| WebSocket | live bidirectional updates | simple CRUD | market data, dashboards |
| Server-Sent Events | one-way live updates | bidirectional control needed | status feeds |
| Message queue | async work, decoupling | strict immediate response | ETL jobs, notifications |
| Event sourcing | full audit/replay | simple apps | financial lifecycle, audit logs |
| Batch | scheduled high-volume work | low latency required | reports, backfills |

Each interface must define:

```text
contract
schema
latency expectation
retry/idempotency behavior
auth model
error handling
monitoring
```

---

## 8. Web UI vs screen automation

| Integration style | Use when | Risks | Controls |
|---|---|---|---|
| API integration | API exists and is stable | rate limits, contract changes | contract tests, retries |
| Browser automation | no API, workflow UI only | brittle selectors, auth issues | screenshots, selectors, replay tests |
| Screen management/RPA | legacy app/no API | brittle, hard to scale | strict runbooks, visual tests |
| CLI automation | stable CLI available | output parsing changes | version pinning, parsers |
| File exchange | batch integration | format drift | schema validation |

Decision:

```text
preferred integration:
reason:
fallback:
test method:
monitoring:
```

---

## 9. Database technology decision

| Use case | Candidate technologies |
|---|---|
| relational transactions | PostgreSQL, Oracle, SQL Server, MySQL |
| time-series | TimescaleDB, InfluxDB, PostgreSQL partitions |
| vector search | pgvector, Qdrant, Milvus, Chroma, Weaviate |
| document store | PostgreSQL JSONB, MongoDB |
| cache | Redis, Valkey |
| graph | Neo4j, PostgreSQL graph patterns |
| analytics | DuckDB, ClickHouse, BigQuery/Snowflake where approved |

Decision must include:

```text
source of truth
transaction model
backup strategy
migration strategy
retention strategy
schema ownership
```

---

## 10. Decision log

| Decision | Options considered | Choice | Reason | Date | Owner |
|---|---|---|---|---|---|
| Primary backend language |  |  |  |  |  |
| Frontend framework |  |  |  |  |  |
| Database |  |  |  |  |  |
| API style |  |  |  |  |  |
| Deployment model |  |  |  |  |  |
| Agent/vendor strategy |  |  |  |  |  |
