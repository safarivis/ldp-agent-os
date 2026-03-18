# Org Agent OS Setup Guide

## Purpose

Use this guide when an AI agent needs to set up a fresh Agent OS structure for a new organization that wants to manage work with agents.

This is the simple org/project version.

---

## What this setup is for

This setup gives the organization:
- one shared agent workspace
- one clear place for memory and context
- one workspace per project or workstream
- simple rules for how humans and agents work together
- a clean link to GitHub as the source of truth

---

## Core rule

If it matters, write it down.

Use:
- **GitHub** for tasks, issues, pull requests, decisions, and status
- **Agent OS** for agent memory, project context, notes, drafts, and reusable knowledge

---

## Recommended root path

Use a root folder like:

```text
<org-home>/_agent
```

Examples:
- `/home/acme/_agent`
- `/srv/acme/_agent`
- `C:\org\_agent`

Keep the structure simple and portable.

---

## Minimum folder structure

```text
_agent/
  agent.md
  memory/
    soul.md
    user.md
    telos.md
    context.md
  workspace/
    INDEX.md
    ACTIVE-CELLS.md
  knowledge/
    README.md
  taste/
    README.md
    principles.md
    rejection-log.md
  templates/
    cell/
  review/
  inbox/
  archive/
  ROADMAP.md
  REVIEW.md
```

---

## What each part means

### `agent.md`
The main rules for the agent.

It should explain:
- what this org workspace is
- how agents should behave
- where to look first
- where to save work
- how to route project requests
- how to work with GitHub

### `memory/`
The shared memory for the org.

- `soul.md` = values, principles, non-negotiables
- `user.md` = preferences, working style, constraints
- `telos.md` = long-term goals
- `context.md` = what matters right now

### `workspace/`
One folder per project, client, team, or initiative.

Examples:
- `workspace/customer-portal`
- `workspace/internal-ops`
- `workspace/client-acme`

### `knowledge/`
Processed reusable knowledge.

Use this for:
- distilled research
- stack notes
- workflow notes
- reusable architecture guidance

### `taste/`
Quality rules and lessons learned.

Use this for:
- what good output looks like
- what bad output looks like
- repeated mistakes
- review rubrics

### `templates/`
Starter files for new project workspaces.

### `review/`
Review notes, weekly checks, cleanup, and drift control.

---

## Setup flow for a new org

### Step 1: Create the root folder

Create the base structure.

Example:

```bash
mkdir -p _agent/{memory,workspace,knowledge,taste,templates/cell,review,inbox,archive}
```

If on Windows, create the same folders manually or with PowerShell.

---

### Step 2: Create the root instruction file

Create `agent.md`.

It should include:
- org name
- purpose of the workspace
- GitHub repo(s) used as source of truth
- routing rules
- status/update rules
- safety rules
- review rules

Minimum rule set:
1. Read `agent.md` first.
2. Check `memory/context.md` before giving strategic advice.
3. Check `workspace/INDEX.md` before starting project work.
4. Save outputs in the correct workspace folder.
5. Record important decisions in GitHub and the relevant workspace file.
6. Do not store secrets in `_agent`.
7. Keep updates short and clear.

---

### Step 3: Fill the memory core

Create these files:
- `memory/soul.md`
- `memory/user.md`
- `memory/telos.md`
- `memory/context.md`

What to put in them:

#### `memory/soul.md`
Write:
- org values
- decision principles
- non-negotiables
- quality expectations

#### `memory/user.md`
Write:
- who the key humans are
- communication preferences
- decision style
- risk tolerance
- constraints

#### `memory/telos.md`
Write:
- long-term org goals
- project goals
- strategic priorities

#### `memory/context.md`
Write:
- active priorities
- current projects
- known blockers
- immediate next actions

---

### Step 4: Create workspace indexes

Create:
- `workspace/INDEX.md`
- `workspace/ACTIVE-CELLS.md`

Use `workspace/INDEX.md` to list all project workspaces.

Use `workspace/ACTIVE-CELLS.md` to list only active projects and who owns them.

---

### Step 5: Create one workspace per project

For each project, create a folder:

```text
workspace/<project-name>/
  agent.md
  context.md
  notes.md
  decisions.md
  next-steps.md
```

Example:

```text
workspace/website-redesign/
workspace/customer-support-automation/
workspace/internal-knowledge-bot/
```

Keep it lean.
Only add more files when needed.

---

### Step 6: Define project-local instructions

In each project workspace `agent.md`, write:
- what this project is
- what success means
- where the GitHub repo/issues are
- what the agent should read first
- what the agent should not change without approval
- where updates should be posted

Simple project `agent.md` rule example:
- Read project `context.md` first
- Check open GitHub issues before suggesting work
- Save notes in `notes.md`
- Save decisions in `decisions.md`
- Save proposed next actions in `next-steps.md`
- Ask for human approval before major scope changes

---

### Step 7: Connect Agent OS to GitHub

GitHub should stay the source of truth for execution.

Use this split:

#### GitHub is for:
- issues
- pull requests
- milestones
- labels
- owners
- task status
- approvals
- final decisions

#### Agent OS is for:
- memory
- local project context
- notes
- drafts
- reusable knowledge
- lessons learned

Simple working rule:

**Talk in many places if needed, but record the final truth in GitHub.**

---

### Step 8: Define simple agent roles

Start with only 3 roles:

#### 1. Planner
Turns goals into tasks.

#### 2. Worker
Does the task.

#### 3. Reviewer
Checks quality, risk, and completeness.

Do not start with many specialist agents unless the workflow is already stable.

---

### Step 9: Define update rules

Every human or agent update should be short.

Use this format:

```text
Did:
Next:
Blocked:
```

Example:

```text
Did: drafted onboarding flow for project workspace
Next: create GitHub issues for review and implementation
Blocked: need final owner list from ops lead
```

---

### Step 10: Define review and approval points

Humans should approve:
- strategy changes
- architecture changes
- customer-facing outputs
- spending decisions
- risky actions
- production changes

Agents may draft and propose, but humans should approve important moves.

---

## Suggested files to create first

### Root
- `agent.md`
- `memory/soul.md`
- `memory/user.md`
- `memory/telos.md`
- `memory/context.md`
- `workspace/INDEX.md`
- `workspace/ACTIVE-CELLS.md`
- `taste/principles.md`
- `taste/rejection-log.md`
- `ROADMAP.md`
- `REVIEW.md`

### Per project
- `workspace/<project>/agent.md`
- `workspace/<project>/context.md`
- `workspace/<project>/notes.md`
- `workspace/<project>/decisions.md`
- `workspace/<project>/next-steps.md`

---

## Example org setup

```text
_agent/
  agent.md
  memory/
    soul.md
    user.md
    telos.md
    context.md
  workspace/
    INDEX.md
    ACTIVE-CELLS.md
    website-redesign/
      agent.md
      context.md
      notes.md
      decisions.md
      next-steps.md
    internal-ai-ops/
      agent.md
      context.md
      notes.md
      decisions.md
      next-steps.md
  knowledge/
    README.md
  taste/
    README.md
    principles.md
    rejection-log.md
  templates/
    cell/
  review/
  inbox/
  archive/
  ROADMAP.md
  REVIEW.md
```

---

## Rules for the AI agent doing the setup

When setting up a new org Agent OS:

1. Keep the structure simple.
2. Do not add extra folders unless needed.
3. Do not invent many agent roles at the start.
4. Use one workspace folder per real project or workstream.
5. Make GitHub the source of truth for tasks and approvals.
6. Use markdown files for memory and context.
7. Do not store secrets in `_agent`.
8. Add review and update habits from day one.
9. Make the setup easy for humans to inspect.
10. Prefer clarity over cleverness.

---

## Minimum operating process

For each new task:

1. Human creates or updates a GitHub issue.
2. Agent reads root `agent.md`.
3. Agent reads `memory/context.md`.
4. Agent reads the relevant project workspace files.
5. Agent does the work.
6. Agent posts a short update.
7. Human reviews.
8. Agent updates docs if a durable lesson was learned.

---

## What not to do

Do not:
- use chat as the only memory
- create 20 agents on day one
- hide important decisions outside GitHub
- over-design the folder system
- mix all projects into one notes file
- let agents change strategy without approval
- store passwords or API keys in `_agent`

---

## Definition of a good setup

A good org setup means:
- a human can understand it quickly
- an agent knows where to read and write
- project context is easy to find
- GitHub and Agent OS have clear roles
- updates are short and consistent
- lessons are captured and reused

---

## Simple final summary

Agent OS for an org should be:
- one shared memory layer
- one workspace per project
- one clear connection to GitHub
- a few simple agent roles
- human approval for important changes

If the setup feels confusing, it is too complex.
