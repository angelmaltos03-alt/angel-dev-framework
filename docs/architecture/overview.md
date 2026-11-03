# ADF Architecture Overview

## Design approach
ADF is a repository-first framework, not a standalone runtime or centralized autonomous agent. Its foundation consists of governance artifacts, Codex instructions, Spec Kit conventions, validation scripts, and GitHub automation.

## Logical layers
1. **Direction and discovery:** human owner and ChatGPT establish goals, scope, and requirements.
2. **Specification engine:** GitHub Spec Kit provides constitution/specify/plan/tasks/analyze/implement workflows and generated artifacts.
3. **Execution:** Codex works in a checked-out repository, follows `AGENTS.md`, edits code, and executes available tools/tests.
4. **Source of truth:** GitHub stores versioned files, issues, pull requests, decisions, and CI results.
5. **Quality gates:** local scripts and GitHub Actions validate repository hygiene and configured project checks.

## Boundaries
- ChatGPT context is not automatically synchronized with Codex or GitHub; durable decisions belong in files.
- GitHub connector access is not equivalent to a local terminal or arbitrary Codex execution.
- Spec Kit owns its generated integration files. ADF adds conventions without overwriting generated skills.
- Unavailable checks must be reported as unavailable, never passed.

## Extensibility
Future templates may add language-specific toolchains. ADF core stays stack-neutral and delegates specialized checks to project configuration.
