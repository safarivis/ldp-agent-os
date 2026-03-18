# Project Workspace Starter Pack

## Purpose

Use this starter pack to create a new project workspace inside an org `_agent` setup.

Create a folder at:

```text
workspace/<project-name>/
```

Example:

```text
workspace/customer-portal/
```

---

## Minimum files

Create these files:

```text
workspace/<project-name>/
  agent.md
  context.md
  notes.md
  decisions.md
  next-steps.md
```

Keep it lean.
Do not add more files unless needed.

---

## 1. `agent.md`

Use this template:

```md
# <Project Name> Agent Instructions

## Purpose
This workspace is for the <project name> project.

## Project goal
Write the project goal here in simple language.

## Success means
- clear outcome 1
- clear outcome 2
- clear outcome 3

## GitHub source of truth
- Repo: <repo-url>
- Issues: <issues-url>
- Board/Project: <board-url>

## Read order
1. `context.md`
2. `decisions.md`
3. `next-steps.md`
4. relevant GitHub issues/PRs

## Rules
- Check GitHub before proposing work
- Save notes in `notes.md`
- Save decisions in `decisions.md`
- Save proposed actions in `next-steps.md`
- Ask for human approval before major scope or architecture changes
- Keep updates short

## Update format
Did:
Next:
Blocked:
```

---

## 2. `context.md`

Use this template:

```md
# <Project Name> Context

## What this project is
Short explanation of the project.

## Why it matters
Why the org cares about this.

## Current status
- not started / active / blocked / review / done

## Active priorities
- priority 1
- priority 2
- priority 3

## Known constraints
- constraint 1
- constraint 2

## Known risks
- risk 1
- risk 2

## Dependencies
- dependency 1
- dependency 2

## Current blockers
- blocker 1
- blocker 2
```

---

## 3. `notes.md`

Use this template:

```md
# <Project Name> Notes

## Notes
- date - note
- date - note
- date - note
```

Use this for:
- meeting notes
- rough thinking
- findings
- reminders
- useful links

---

## 4. `decisions.md`

Use this template:

```md
# <Project Name> Decisions

## Decisions log

### <date> - <decision title>
- Decision: 
- Why: 
- Approved by: 
- GitHub link: 
```

Use this for important choices that should not get lost.

---

## 5. `next-steps.md`

Use this template:

```md
# <Project Name> Next Steps

## Current next actions
- [ ] action 1
- [ ] action 2
- [ ] action 3

## Waiting on
- item 1
- item 2

## Suggested follow-up
- follow-up 1
- follow-up 2
```

This file is for immediate momentum.

---

## Setup checklist for the agent

When creating a new project workspace:

1. Create `workspace/<project-name>/`
2. Create the 5 minimum files
3. Fill in the project goal
4. add GitHub repo and issue links
5. write current context and priorities
6. list known blockers
7. record any decisions already made
8. add the first 3 next steps
9. update `workspace/INDEX.md`
10. add the project to `workspace/ACTIVE-CELLS.md` if active

---

## KISS rules

- one folder per real project
- one clear purpose per workspace
- short notes
- short updates
- no duplicate truth across many files
- GitHub remains the task source of truth

---

## Definition of a good project workspace

A good workspace means:
- the project goal is clear
- the current status is obvious
- the next actions are obvious
- decisions are easy to find
- both humans and agents can understand it fast
