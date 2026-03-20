# Daily Notes Setup

## Purpose

Set up a simple daily operating log inside a cell.

## When to use

Use when a cell needs better day-to-day continuity and activity tracking.

## Prompt

Set up a `daily-notes.md` file in this cell as the running operational log.

Requirements:
- create `daily-notes.md`
- add a simple template with:
  - Done
  - Sent
  - Changed
  - Waiting on
  - Next
- keep entries dated and in reverse-chronological order
- update the cell’s `agent.md` so `daily-notes.md` is included in the read order
- clearly state in `agent.md` that `daily-notes.md` is the day-to-day operational log the agent should check for recent context
- if useful, update `context.md` and `next-steps.md` to reference this workflow
- keep it simple and reusable across cells
