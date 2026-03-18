# RevvTech Private Setup Guide

## Purpose

This guide explains how RevvTech should think about using AgentOS in **private repos** for internal work and client work.

## KISS model

Use this simple split:

- **Claude Teams** = each team member’s working AI assistant
- **GitHub private repos** = shared source of truth for tasks, docs, decisions, updates, and history
- **AgentOS** = the structure, templates, and guidance Claude and humans follow

## Recommended repo pattern

### 1. Private company AgentOS repo
Use for:
- RevvTech internal operating docs
- templates
- standards
- reusable playbooks
- non-client-specific knowledge

Example:
- `revvTech/AgentOS`

### 2. Private client/project repos
Use for:
- client-specific delivery
- code
- issues
- project docs
- client-specific `_agent` workspace when needed

Example:
- `revvTech/HungryLion`

## What lives where

### In the private company AgentOS repo
Store:
- team role model
- partner rules
- lifecycle model
- templates
- starter scaffold
- generic workflows

### In private client repos
Store:
- client project context
- code
- issues
- PRs
- project decisions
- project-specific notes

## What should not go in GitHub

Do **not** store:
- real API keys
- passwords
- tokens
- private certs
- sensitive secrets

Instead use:
- Varlock or another proper secret manager

GitHub may store:
- secret references
- env var names
- setup docs
- `.env.example`
- rotation/ownership notes

## Team access advice

### Internal team
- give access based on role
- keep permissions as low as possible
- use GitHub teams where possible

### Partners
- do not give broad access by default
- prefer project-specific access only
- avoid cross-client visibility
- use separate repos/workspaces for sensitive clients

## Recommended operating rule

If it matters:
- **task / status / approval / final decision** -> GitHub
- **memory / context / notes / reusable guidance** -> AgentOS docs

## Best practical setup for RevvTech

### Start with
- one private company AgentOS repo
- one private repo per sensitive client/project
- one workspace per real project/client context
- simple role model
- human approval for important changes

### Then grow carefully
- add more project workspaces
- refine team roles
- refine partner access
- separate sensitive clients where needed

## Bottom line

Private GitHub repos are good for controlled collaboration and tracked changes.

But:
- they are **not** secret stores
- they **are** good shared operating spaces for humans and agents

That means Claude Teams can fit this well, as long as shared truth stays in the private repos rather than only in private chat history.
