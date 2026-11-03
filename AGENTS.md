# ANGEL DEV FRAMEWORK — Agent Operating Instructions

## Mission
Build and maintain ADF as a reusable engineering system. Treat this repository as the source of truth for conventions, specifications, decisions, and delivery evidence.

## Before changing files
1. Read this file and `.specify/memory/constitution.md`.
2. Read the relevant specification in `specs/`, including plan, tasks, and acceptance criteria.
3. Inspect implementation and tests; do not assume the repository is empty.
4. Identify affected interfaces, dependencies, data, security boundaries, and documentation.

## Implementation rules
- Follow Specification-Driven Development for significant features.
- Do not silently expand scope or change requirements.
- Prefer simple, modular, typed, testable solutions over speculative abstractions.
- Preserve existing behavior unless a specification explicitly changes it.
- Avoid unnecessary dependencies and generated-file churn.
- Never hardcode secrets or expose sensitive information.
- Do not perform destructive operations, production deployments, or irreversible data changes without explicit human approval.

## Quality requirements
- Add or update tests for changed behavior.
- Run relevant tests, linting, formatting, type checks, and security checks available in the project.
- Never claim a check passed unless it was run and observed.
- Distinguish failures, skipped checks, and unavailable checks.
- Review the final diff for accidental changes, secrets, debug code, and unrelated modifications.

## Completion report
Report summary, files changed, actual commands/results, limitations/risks, and follow-up tasks.

## Git workflow
Use focused branches and descriptive commits. Do not force-push or rewrite shared history. Prefer pull requests. Do not merge or release without required human approval.
