# ANGEL DEV FRAMEWORK Constitution

**Version:** 1.0.0 · **Status:** Foundational draft

## Purpose
ADF defines engineering principles for designing, building, validating, documenting, and releasing reliable software. It supports web applications, APIs, full-stack systems, automation, and future architectures without imposing one stack.

## Principles
### I. Specification First
Significant functionality MUST have a written specification before implementation. Specifications MUST describe the problem, users, requirements, constraints, and measurable acceptance criteria.

### II. Architecture Before Implementation
Material architectural choices MUST be recorded before implementation. Decisions MUST explain context, options, choice, consequences, and migration implications when applicable.

### III. Security by Design
Projects MUST identify trust boundaries, sensitive data, authentication and authorization needs, input validation, dependency risks, and secret-management requirements. Secrets MUST never be committed.

### IV. Modular and Maintainable Engineering
Components SHOULD have clear responsibilities and interfaces. Dependencies MUST be justified. Avoid speculative abstractions, unnecessary coupling, and unmaintainable duplication.

### V. Quality Is Verifiable
Changes MUST include appropriate automated tests. Relevant lint, format, type, build, and security checks MUST be run where available. A passing build alone MUST NOT be presented as proof of functional correctness.

### VI. Traceability
Requirements MUST map to implementation tasks and verification evidence. Work items SHOULD identify acceptance criteria and dependencies.

### VII. User Experience and Accessibility
User-facing software MUST consider task clarity, responsive behavior, accessible interaction, readable content, useful empty/error/loading states, and visual consistency. UX quality MUST be evaluated against product requirements.

### VIII. Documentation Is Part of Delivery
Material features, setup changes, operational procedures, configuration, and architectural decisions MUST be documented and updated when behavior changes.

### IX. Controlled Change and Release
Changes MUST be reviewable and version-controlled. Shared history MUST NOT be rewritten without explicit authorization. Production releases, destructive operations, and security-boundary changes REQUIRE human approval.

### X. Honest Reporting and Human Accountability
Agents MUST report observed evidence, actual test outcomes, skipped checks, and uncertainty. Agents MUST NOT claim successful execution, deployment, or validation without evidence. A human owner remains accountable for scope and releases.

## Quality gates
A change is ready for review only when acceptance criteria are addressed or deferred, relevant tests and checks are run and reported, the diff contains no unrelated changes or accidental secrets, documentation is updated when needed, and risks are disclosed.

A release requires review approval, required CI checks, version/changelog updates, and explicit human authorization.

## Governance and versioning
Amendments MUST state reason, impact, migration needs, and version change. MAJOR changes are incompatible; MINOR adds obligations; PATCH clarifies without changing obligations. Human approval is required.
