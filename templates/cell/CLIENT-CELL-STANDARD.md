# Client Cell Standard

## Purpose

This file defines the default standard for setting up and maintaining a client or project cell.

## KISS rule

Every real client, project, or opportunity should have its own cell.

Use the same lightweight scaffold each time.
Only add more structure when the work clearly needs it.

## Default scaffold

Always start with:
- `agent.md`
- `context.md`
- `notes.md`

## Standard active-work add-ons

For active client or opportunity work, usually add:
- `daily-notes.md`
- `next-steps.md`
- `decisions.md`
- `contacts.md`
- `email-log.md` *(if communication volume matters)*

## File roles

- `agent.md` = purpose, read order, file rules
- `context.md` = current state, active facts, open loops, immediate next step
- `notes.md` = broader notes and captured thinking
- `daily-notes.md` = running day-by-day operational log
- `next-steps.md` = pending actions and waiting items
- `decisions.md` = durable decisions and pending decisions
- `contacts.md` = key people, organisations, and relationship notes
- `email-log.md` = concise summaries of important emails

## Setup method

### Option 1 — scaffold script
Use:
- `templates/cell/create-cell.sh <cell-name> [purpose]`

### Option 2 — agent prompt
Use a standard prompt that tells the agent to create a new cell with this scaffold and add `daily-notes.md` for active work.

## Agent instruction

When a new client/project cell is created:
- include `daily-notes.md` for active work
- update `agent.md` so the read order reflects the actual files in use
- clearly mark `daily-notes.md` as the running operational log
- keep the structure simple and predictable for future agents

## RevvTech operating rule

For RevvTech itself:
- use the RevvTech cell as the internal operating cell
- maintain daily notes, next steps, decisions, and project notes there

For RevvTech clients:
- create a separate cell per client/project
- use this standard scaffold by default
- keep shared templates and standards in the shared AgentOS layer, not in the client cell

## GitHub recommendation

Push the reusable standard/template layer to the RevvTech repo.
Do not mix it with live private client context unless that repo is specifically for that client/project.
