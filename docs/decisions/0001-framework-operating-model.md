# ADR 0001: ADF Operating Model

- **Status:** Accepted as initial direction
- **Date:** 2026-11-03
- **Decision owner:** Project owner

## Context
ADF needs a repeatable workflow for AI-assisted software delivery that remains auditable and does not depend on hidden conversation state.

## Decision
Use GitHub as durable source of truth, GitHub Spec Kit for specification workflows, Codex as repository implementation agent, and ADF-owned instructions and quality gates as governance.

## Consequences
- Decisions and handoffs must be committed as files.
- Codex behavior is governed by `AGENTS.md` and project-specific instructions.
- Spec Kit integration files are initialized and maintained by its CLI.
- Human approval remains required for sensitive changes and releases.
- CI results evidence configured checks only, not all product behavior.
