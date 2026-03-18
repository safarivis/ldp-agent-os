# Agent OS Bootstrap Pack

## Purpose

This is the master bootstrap doc for setting up Agent OS for a new org that wants to manage projects with humans and AI agents.

Use this with:
- `ORG-AGENT-OS-SETUP.md`
- `ORG-AGENT-MD-TEMPLATE.md`
- `PROJECT-WORKSPACE-STARTER-PACK.md`
- `GITHUB-ISSUES-AGENT-WORKFLOW.md`
- `AGENT-OS-FOLDER-TREE.txt`

---

## What this setup gives you

A simple system with:
- one shared agent workspace
- one shared memory layer
- one folder per project
- one clear link to GitHub
- simple roles for humans and agents
- a repeatable operating model

---

## Files in this bootstrap pack

### 1. `ORG-AGENT-OS-SETUP.md`
Explains how to set up Agent OS for a new org.

### 2. `ORG-AGENT-MD-TEMPLATE.md`
Starter root `agent.md` for the org.

### 3. `PROJECT-WORKSPACE-STARTER-PACK.md`
Starter structure and templates for each project workspace.

### 4. `GITHUB-ISSUES-AGENT-WORKFLOW.md`
Simple workflow for using GitHub Issues and agents together.

### 5. `AGENT-OS-FOLDER-TREE.txt`
A quick folder map.

---

## Fast start

### Step 1: Create the `_agent` root
Use the folder tree in `AGENT-OS-FOLDER-TREE.txt`.

### Step 2: Create the root files
Create:
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

### Step 3: Use `ORG-AGENT-MD-TEMPLATE.md`
Copy it into your root `agent.md` and adapt it for the org.

### Step 4: Fill in org memory
Add:
- values
- goals
- key people
- priorities
- blockers

### Step 5: Create the first project workspace
Use `PROJECT-WORKSPACE-STARTER-PACK.md`.

Create:

```text
workspace/<project-name>/
```

With:
- `agent.md`
- `context.md`
- `notes.md`
- `decisions.md`
- `next-steps.md`

### Step 6: Connect to GitHub
Use `GITHUB-ISSUES-AGENT-WORKFLOW.md`.

Set the simple rule:
- GitHub = task truth
- `_agent` = memory and context

### Step 7: Start with only 3 roles
- Planner
- Worker
- Reviewer

### Step 8: Begin working
For each task:
1. create or update a GitHub issue
2. read the project workspace
3. do the work
4. post a short update
5. get human review if needed
6. record the final state in GitHub

---

## Best first project setup

For a new org, do not try to model the whole company on day one.

Start with:
- one org `_agent` root
- one active project workspace
- one GitHub repo or project board
- three simple agent roles
- one clear approval path

---

## Simple setup checklist

- [ ] `_agent` root created
- [ ] root `agent.md` created
- [ ] memory files created
- [ ] workspace indexes created
- [ ] first project workspace created
- [ ] GitHub repo/issues linked
- [ ] Planner/Worker/Reviewer roles agreed
- [ ] update format agreed
- [ ] approval points agreed

---

## KISS rule

If the setup feels too big, reduce it.

A good setup is:
- clear
- light
- inspectable
- easy for both humans and agents to use

---

## Final summary

This bootstrap pack helps a new org set up a simple Agent OS that works with GitHub.

It is meant to give structure, memory, and repeatability without making the system too complex.
