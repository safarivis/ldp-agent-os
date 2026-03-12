# Fresh `_agent` Root Bootstrap Guide

## Purpose

Use this guide to stand up a fresh `_agent` root end-to-end.

Example targets:
- `/home/ldp/_agent`
- `/home/test/_agent`

## Minimum root structure

```text
<user-home>/_agent/
  agent.md
  memory/
    soul.md
    user.md
    context.md
    telos.md
  templates/
    cell/
    memory/
  workspace/
  taste/
  knowledge/
```

## KISS bootstrap flow

### 1. Create the root folders
```bash
mkdir -p <user-home>/_agent/{memory,templates,workspace,taste,knowledge}
```

### 2. Copy the canonical root map
```bash
cp /home/ldp/_agent/agent.md <user-home>/_agent/agent.md
```

### 3. Copy the memory core from templates
```bash
cp /home/ldp/_agent/templates/memory/soul.md <user-home>/_agent/memory/soul.md
cp /home/ldp/_agent/templates/memory/user.md <user-home>/_agent/memory/user.md
cp /home/ldp/_agent/templates/memory/context.md <user-home>/_agent/memory/context.md
cp /home/ldp/_agent/templates/memory/telos.md <user-home>/_agent/memory/telos.md
```

### 4. Copy the cell scaffold templates
```bash
mkdir -p <user-home>/_agent/templates/cell
cp /home/ldp/_agent/templates/cell/agent.md <user-home>/_agent/templates/cell/agent.md
cp /home/ldp/_agent/templates/cell/context.md <user-home>/_agent/templates/cell/context.md
cp /home/ldp/_agent/templates/cell/notes.md <user-home>/_agent/templates/cell/notes.md
cp /home/ldp/_agent/templates/cell/create-cell.sh <user-home>/_agent/templates/cell/create-cell.sh
chmod +x <user-home>/_agent/templates/cell/create-cell.sh
```

### 5. Adapt only the essential local details
Update:
- `memory/user.md`
- `memory/context.md`
- `memory/telos.md`

Keep `soul.md` mostly stable unless the identity/philosophy truly differs.

### 6. Create the first cell when needed
```bash
<user-home>/_agent/templates/cell/create-cell.sh example-cell "the example workstream"
```

## Validation

After setup, verify:
- `agent.md` exists at root
- memory core exists under `memory/`
- cell scaffold exists under `templates/cell/`
- new cells default to:
  - `agent.md`
  - `context.md`
  - `notes.md`
- normal cells do not get local `soul.md`, `user.md`, or `telos.md`

## Promotion rule

When eval experiments produce a winning improvement:
1. update the live active file
2. update the matching template
3. record the lesson in the eval system
4. commit and push

## See also

- `templates/memory/ROOT-SETUP.md`
- `templates/memory/README.md`
- `templates/cell/README.md`
