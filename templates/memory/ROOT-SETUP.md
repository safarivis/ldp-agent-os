# Root Memory Setup Guide

## Purpose

Use these templates to bootstrap the memory core for a fresh `_agent` root.

Canonical memory core:
- `memory/soul.md`
- `memory/user.md`
- `memory/context.md`
- `memory/telos.md`

## KISS setup flow

From a new `_agent` root:

1. Create the memory directory:
```bash
mkdir -p <user-home>/_agent/memory
```

2. Copy the templates:
```bash
cp /home/ldp/_agent/templates/memory/soul.md <user-home>/_agent/memory/soul.md
cp /home/ldp/_agent/templates/memory/user.md <user-home>/_agent/memory/user.md
cp /home/ldp/_agent/templates/memory/context.md <user-home>/_agent/memory/context.md
cp /home/ldp/_agent/templates/memory/telos.md <user-home>/_agent/memory/telos.md
```

3. Adapt only the user-specific parts first:
- machine/user
- tooling notes
- current priorities
- long-term direction

4. Keep the structure simple.
Do not add more memory files unless there is a clear recurring need.

## What each file is for

- `soul.md` — philosophy, identity, non-negotiables
- `user.md` — user preferences, style, constraints
- `context.md` — current state, priorities, operating focus, open loops
- `telos.md` — long-term direction and tradeoff preferences

## Promotion rule

If repeated eval wins improve one of these files:
- update the live canonical file
- update the matching template here
- record the lesson in the eval system
