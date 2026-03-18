# GitHub Issues + Agent Workflow

## Purpose

Use this workflow so humans and agents can work together clearly, with GitHub as the source of truth.

---

## Simple rule

- **GitHub** = task truth
- **_agent** = working memory and context

If a task matters, it should exist in GitHub.
If context matters, it should exist in `_agent`.

---

## What GitHub is for

Use GitHub for:
- issues
- pull requests
- labels
- milestones
- assignees
- project boards
- approvals
- final delivery status
- final decisions

---

## What `_agent` is for

Use `_agent` for:
- org memory
- project context
- notes
- drafts
- local decisions log
- lessons learned
- reusable knowledge

---

## Basic workflow

### 1. Human creates or updates a GitHub issue
The issue should say:
- what needs doing
- why it matters
- who owns it
- what done looks like

### 2. Agent reads context
The agent should read:
1. root `agent.md`
2. `memory/context.md`
3. `workspace/INDEX.md`
4. relevant project workspace files
5. relevant GitHub issue/PR

### 3. Agent makes a small plan
The agent should write or comment:
- what it will do
- what it will not do
- any blockers or assumptions

### 4. Agent does the work
Examples:
- draft docs
- write code
- research options
- update notes
- prepare PR

### 5. Agent gives a short update
Use:

```text
Did:
Next:
Blocked:
```

### 6. Human reviews
The human checks:
- is the work correct?
- is it safe?
- is it aligned?
- does anything need approval?

### 7. Final state is recorded in GitHub
The issue or PR should show the final outcome.

### 8. Durable lessons go back into `_agent`
If the work taught a reusable lesson, save it in:
- `taste/`
- `knowledge/`
- workspace files
- memory files

---

## Issue template guidance

A good issue should include:
- title
- problem
- goal
- scope
- acceptance criteria
- owner
- labels
- links to related docs or workspaces

Example:

```md
## Problem
We do not yet have a clear onboarding flow for client agents.

## Goal
Create a simple onboarding checklist and workspace template.

## Acceptance criteria
- checklist drafted
- reviewed by ops lead
- saved in docs
- linked in project workspace
```

---

## Recommended labels

Keep labels simple:
- `todo`
- `doing`
- `blocked`
- `review`
- `done`
- `human-needed`
- `agent-task`
- `decision-needed`
- `high-risk`

---

## Recommended role split

### Humans
- define goals
- approve important changes
- review risky work
- close final decisions

### Planner agent
- break work into tasks
- identify order and dependencies

### Worker agent
- perform the task
- update notes and drafts

### Reviewer agent
- check quality and risks
- request approval when needed

---

## Approval points

Human approval is needed before:
- major scope changes
- strategy changes
- architecture changes with long-term impact
- customer-facing changes
- production changes
- destructive actions
- spend or vendor decisions

---

## Short update rule

Every agent update should be short and easy to scan.

Example:

```text
Did: drafted the project workspace and linked the GitHub repo
Next: create 3 setup issues and fill project context
Blocked: need confirmation of project owner
```

---

## Good habits

- one issue per task
- one PR per meaningful change
- one project workspace per real project
- short comments
- final decisions written down
- lessons reused

---

## Bad habits

- task only discussed in chat
- no issue created
- no clear owner
- no approval step
- project context hidden in one person’s head
- agents making strategy changes silently

---

## Definition of a healthy workflow

A healthy workflow means:
- every important task exists in GitHub
- every active project has a workspace in `_agent`
- agents know where to read and write
- humans know what needs approval
- status is visible without asking around
