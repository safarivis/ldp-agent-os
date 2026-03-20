# New Cell Setup

## Purpose

Set up a new project/client/workstream cell using the standard AgentOS structure.

## When to use

Use when starting a new bounded context under `workspace/` for a client, opportunity, project, or relationship.

## Prompt

Set up a new cell for this project/client using the standard AgentOS structure.

Requirements:
- create the cell under `workspace/<cell-name>/`
- create the minimum scaffold:
  - `agent.md`
  - `context.md`
  - `notes.md`
- add only the extra files that are clearly needed, for example:
  - `daily-notes.md`
  - `next-steps.md`
  - `decisions.md`
  - `contacts.md`
  - `email-log.md`
- keep the structure simple
- in `agent.md`, clearly define:
  - purpose of the cell
  - read order
  - what the cell is for
  - where to store decisions, message summaries, and next steps
- if the work is likely to be active or ongoing, add `daily-notes.md` and reference it in the `agent.md` read order
- do not create cell-local `soul.md`, `user.md`, or `telos.md` unless specifically justified
- align with AgentOS conventions and keep the cell easy for future agents to understand
