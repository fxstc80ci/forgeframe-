# <Project Name> Acceptance Criteria

**Use:** Defines final acceptance gates for the autonomous build.  
**Author:** <Author / AI Partner>  
**Creation Date:** <YYYY-MM-DD>  
**Change Record:**  
- <YYYY-MM-DD> - Initial acceptance criteria.

---

## 1. Overall definition of done

The project is complete when all required work packages are implemented, tested, documented, and operationally validated.

---

## 2. Architecture acceptance

- Layer separation is preserved.
- Core contracts are explicit.
- Runtime behavior is reproducible.
- Existing behavior is preserved unless intentionally replaced.

---

## 3. Functional acceptance

- All functional requirements are implemented.
- Required workflows pass.
- Edge cases are tested.

---

## 4. Safety acceptance

- Unsafe behavior is disabled by default.
- Stop gates work.
- Failure modes fail closed where required.

---

## 5. Testing acceptance

- Unit tests pass.
- Integration tests pass.
- Regression tests pass.
- Fault-injection tests pass where applicable.
- Final acceptance command passes.

---

## 6. Operations acceptance

- Configuration docs exist.
- Runbooks exist.
- Rollback is documented.
- Observability is available.

---

## 7. Documentation acceptance

- README is complete.
- Architecture and design docs are current.
- Known limitations are documented.
