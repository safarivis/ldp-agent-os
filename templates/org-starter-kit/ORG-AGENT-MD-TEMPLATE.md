# Org Agent Root Instructions

## Purpose

This `_agent` workspace is the shared operating system for a new organization using humans and AI agents to manage work.

Use this workspace to:
- keep shared memory and context
- organize project workspaces
- guide agent behavior
- save reusable knowledge
- record lessons learned
- support GitHub as the source of truth for execution

---

## Core rule

If it matters, write it down.

- **GitHub** = tasks, issues, PRs, status, decisions, approvals
- **_agent** = memory, context, notes, drafts, knowledge, lessons

---

## Read order

When working in this org, read in this order:

1. `agent.md`
2. `memory/context.md`
3. `memory/telos.md`
4. `workspace/INDEX.md`
5. `workspace/ACTIVE-CELLS.md`
6. the relevant project workspace files

---

## Folder map

- `memory/` = shared org memory
- `workspace/` = one folder per project, client, or initiative
- `knowledge/` = durable reusable knowledge
- `taste/` = quality rules, failures, and lessons learned
- `templates/` = starter files for new workspaces
- `review/` = review logs and hygiene checks
- `inbox/` = unclassified items
- `archive/` = inactive material

---

## Memory rules

### `memory/soul.md`
Store:
- org values
- principles
- non-negotiables
- quality standards

### `memory/user.md`
Store:
- key people
- communication preferences
- working style
- decision style
- constraints

### `memory/telos.md`
Store:
- long-term goals
- strategic direction
- success outcomes

### `memory/context.md`
Store:
- active priorities
- current focus
- blockers
- next actions

---

## Workspace rules

Create one workspace per real project, client, or initiative.

Examples:
- `workspace/customer-portal`
- `workspace/ops-automation`
- `workspace/client-onboarding`

Each workspace should start lean.

Minimum files:
- `agent.md`
- `context.md`
- `notes.md`
- `decisions.md`
- `next-steps.md`

Only add more files when the work actually needs them.

---

## GitHub rules

GitHub is the source of truth for execution.

Use GitHub for:
- issues
- pull requests
- milestones
- labels
- owners
- task status
- approvals
- final decisions

Use `_agent` for:
- working memory
- local context
- notes and drafts
- reusable knowledge
- lessons learned

If something was agreed in chat or a meeting, record the final version in GitHub.

---

## Agent role rules

Start with only these roles:

### Planner
- turns goals into tasks
- proposes sequencing
- identifies blockers

### Worker
- does the task
- writes notes and drafts
- updates project files

### Reviewer
- checks clarity, completeness, and risk
- flags missing context
- asks for human approval when needed

Do not create many more roles until the workflow is stable.

---

## Update format

All updates should be short.

Use:

```text
Did:
Next:
Blocked:
```

Example:

```text
Did: reviewed project context and drafted initial workspace notes
Next: create GitHub issues for setup and delivery
Blocked: need repo owner confirmation
```

---

## Approval rules

Ask for human approval before:
- changing strategy
- changing scope significantly
- making architecture decisions with long-term impact
- changing customer-facing outputs
- changing production systems
- spending money
- taking risky or destructive actions

---

## Safety rules

- Do not store secrets in `_agent`
- Do not use chat as the only memory
- Do not overwrite project context without checking
- Do not make major changes without approval
- Keep the structure simple
- Prefer clarity over cleverness

---

## Review rules

At the end of important work:
- update the relevant workspace files
- update `memory/context.md` if org priorities changed
- capture durable lessons in `taste/`
- ensure GitHub has the final task/decision state

---

## Success definition

This org Agent OS is working well when:
- humans can understand it quickly
- agents know what to read first
- every active project has a clear workspace
- GitHub holds task truth
- key context is easy to find
- updates are short and consistent
- lessons are captured and reused

---

## Final rule

Keep it simple.

If the setup becomes confusing, reduce complexity before adding more structure.
