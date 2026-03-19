# North-Star Alignment Workflow

## Purpose
Keep project work, agent behavior, and system improvements aligned to the shared delivery vision.

## North-star summary
We are building a practical delivery operating system where:
- each project has its own repo as project-specific truth
- `_agent` holds reusable cross-project truth
- agents help execute work inside structured context
- useful patterns get captured and promoted into reusable assets

## When to use
- during weekly review
- after meaningful project work
- before promoting a new workflow, template, or standard
- when deciding whether something belongs in a project repo or `_agent`

## Weekly alignment questions
1. Are current projects moving us toward the north star?
2. What did we do this week that is reusable across projects?
3. What should stay project-specific?
4. What should be promoted into `_agent` as a workflow, template, or standard?
5. What is creating unnecessary complexity that we should simplify?

## End-of-task prompt
At the end of meaningful work, ask:
- "Anything here we should standardize or reuse?"
- or: "Any patterns?"

If yes, add the candidate to:
- `/home/ldp/_agent/knowledge/inbox/pattern-candidates.md`

## KISS decision filter
Before adding process or structure, ask:
- Does this improve delivery?
- Does this reduce rework?
- Does this improve handover or continuity?
- Will this help on future projects too?

If the answer is mostly no, simplify or leave it local.

## Placement rule
- project-specific fact or decision -> keep it in the project repo or cell
- reusable method, workflow, or standard -> promote it into `_agent`
- human approval or direction -> record the outcome back into the repo or `_agent`
