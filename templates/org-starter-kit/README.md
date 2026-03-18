# Agent OS Starter Kit

A simple starter kit for setting up Agent OS for a new org that wants humans and AI agents to manage projects together.

## What this is

This pack gives you:
- a simple README
- a ready folder scaffold
- starter docs
- bootstrap scripts
- a GitHub workflow guide

## Core idea

- **GitHub** = tasks, issues, PRs, approvals, final status
- **_agent** = memory, context, notes, drafts, knowledge, lessons

If it matters, write it down.

## Files in this kit

- `README.md` — this file
- `ORG-AGENT-OS-SETUP.md` — setup guide for a new org
- `ORG-AGENT-MD-TEMPLATE.md` — starter root `agent.md`
- `PROJECT-WORKSPACE-STARTER-PACK.md` — starter project workspace template
- `GITHUB-ISSUES-AGENT-WORKFLOW.md` — simple human + agent workflow
- `AGENT-OS-FOLDER-TREE.txt` — quick folder map
- `AGENT-OS-BOOTSTRAP.md` — master setup doc
- `bootstrap-agent-os.ps1` — PowerShell bootstrap script
- `bootstrap-agent-os.sh` — shell bootstrap script
- `scaffold/_agent/` — ready starter scaffold

## Quick start

### Option 1: Use the ready scaffold
Copy the `_agent/` folder and adapt it for your org.

### Option 2: Run a bootstrap script
Use one of:
- `bootstrap-agent-os.ps1`
- `bootstrap-agent-os.sh`

These create a fresh `_agent` structure for you.

## Minimum setup flow

1. Create or copy `_agent/`
2. Update `_agent/agent.md`
3. Fill in `_agent/memory/`
4. Create a real project under `_agent/workspace/`
5. Link the project to GitHub issues/repo
6. Start with 3 roles only:
   - Planner
   - Worker
   - Reviewer

## Recommended first project setup

Create one project folder like:

```text
_agent/workspace/website-redesign/
```

With:
- `agent.md`
- `context.md`
- `notes.md`
- `decisions.md`
- `next-steps.md`

## KISS rule

Do not overbuild.

Start with:
- one org memory layer
- one project workspace
- one GitHub workflow
- a few simple roles

## Success means

A human should be able to open `_agent` and quickly understand:
- what matters now
- what projects exist
- what the agent should do
- where updates live
- what needs approval
