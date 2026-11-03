# ANGEL DEV FRAMEWORK (ADF)

**Spec-Driven Engineering System** · v1.0.0 foundation

ADF is a reusable, specification-driven software engineering framework for discovering, specifying, architecting, planning, implementing, testing, reviewing, documenting, and releasing software.

## Operating model
- **ChatGPT:** product and technical direction, requirements analysis, architecture review, and engineering oversight.
- **GitHub Spec Kit:** specification workflow and structured artifacts.
- **OpenAI Codex:** implementation agent in the repository environment.
- **GitHub:** source of truth for code, decisions, issues, pull requests, and CI.
- **ADF Quality Gates:** repeatable checks for correctness, security, and delivery readiness.

Conversation state is not assumed to synchronize automatically between agents. Durable decisions and handoffs belong in repository files.

## First-time setup (macOS)
Prerequisites: Git, Python 3.11+, Homebrew, and [uv](https://docs.astral.sh/uv/).

```bash
brew install uv
uv tool install specify-cli
specify init . --integration codex --here
specify integration status
codex
```

Check `specify init --help` if your CLI differs. Review generated changes before committing. Spec Kit owns its generated integration files; ADF adds governance alongside them.

## Spec Kit workflow
Use the skills installed by Spec Kit. Typical sequence:
1. `$speckit-constitution`
2. `$speckit-specify`
3. `$speckit-clarify` (when needed)
4. `$speckit-plan`
5. `$speckit-tasks`
6. `$speckit-analyze`
7. `$speckit-implement`
8. `$speckit-converge` (when available in installed release)

Verify installed skill names; availability can vary by release.

## Governance
- Significant work starts with a specification and measurable acceptance criteria.
- Material architecture decisions are documented.
- Changes are small, reviewable, and traceable to requirements.
- Tests and checks run before completion is claimed.
- Security-sensitive changes and production releases require human approval.
- Agents report what changed, what they tested, and what remains unverified.
- Never commit credentials, private keys, tokens, or real user data.

See [Constitution](.specify/memory/constitution.md), [AGENTS.md](AGENTS.md), and [engineering lifecycle](docs/workflows/engineering-lifecycle.md).

## Repository status
This is the foundation bootstrap. Spec Kit-generated files are created by local initialization, not fabricated in advance. ADF evolves through versioned specifications and tested increments.

## License
MIT. See [LICENSE](LICENSE).
