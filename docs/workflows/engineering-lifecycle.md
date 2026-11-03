# ADF Engineering Lifecycle

1. **Intake:** record problem, users, outcomes, constraints, assumptions, and out-of-scope items.
2. **Specify:** create a Spec Kit specification with scenarios, edge cases, non-functional requirements, and measurable acceptance criteria.
3. **Clarify:** resolve ambiguities that materially affect UX, architecture, security, data, cost, or scope; document safe assumptions.
4. **Plan:** document architecture, components, data contracts, dependencies, migrations, and verification.
5. **Task:** create small, ordered tasks linked to requirements and acceptance criteria.
6. **Analyze:** check gaps, terminology, uncovered criteria, architectural conflicts, and untested risks.
7. **Implement:** Codex implements approved tasks on a focused branch and reports blockers.
8. **Verify:** run focused tests, then relevant full checks; review security, accessibility, errors, documentation, and diff.
9. **Review and release:** human reviews and approves merge/release; update version and changelog.

## Status vocabulary
- Planned — specified, not started.
- In progress — implementation underway.
- Blocked — decision or dependency required.
- Ready for review — implementation and required checks completed.
- Accepted — human owner approved the deliverable.
- Released — approved version published/deployed.
