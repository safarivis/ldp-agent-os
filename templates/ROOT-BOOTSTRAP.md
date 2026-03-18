# Fresh `_agent` Root Bootstrap Guide

## Purpose

Use this guide to stand up a fresh `_agent` root **using the actual files stored in this repo**.

Example targets:
- `./_agent`
- `/home/test/_agent`
- `C:\org\_agent`

## Minimum root structure

```text
_agent/
  agent.md
  memory/
    soul.md
    user.md
    context.md
    telos.md
  workspace/
    INDEX.md
    ACTIVE-CELLS.md
    sample-project/
      agent.md
      context.md
      notes.md
      decisions.md
      next-steps.md
  knowledge/
    README.md
  taste/
    README.md
    principles.md
    rejection-log.md
  templates/
    cell/
  review/
  inbox/
  archive/
  ROADMAP.md
  REVIEW.md
```

## KISS bootstrap flow

### Option A — run the included bootstrap script

#### macOS / Linux
```bash
bash templates/org-starter-kit/bootstrap-agent-os.sh ./_agent
```

#### Windows PowerShell
```powershell
powershell -ExecutionPolicy Bypass -File .\templates\org-starter-kit\bootstrap-agent-os.ps1 -Target .\_agent
```

### Option B — copy the included scaffold directly

#### macOS / Linux
```bash
TARGET="./_agent"
mkdir -p "$TARGET"
cp -R templates/org-starter-kit/scaffold/_agent/. "$TARGET/"
```

#### Windows PowerShell
```powershell
$Target = ".\_agent"
New-Item -ItemType Directory -Force -Path $Target | Out-Null
Copy-Item -Recurse -Force .\templates\org-starter-kit\scaffold\_agent\* $Target
```

## Then adapt only the essential local details

Update:
- `_agent/agent.md`
- `_agent/memory/user.md`
- `_agent/memory/context.md`
- `_agent/memory/telos.md`
- `_agent/workspace/sample-project/`

Replace `sample-project` with your real project or client workspace.

## Validation

After setup, verify:
- `agent.md` exists at root
- memory core exists under `memory/`
- workspace index files exist
- sample project workspace exists
- GitHub remains the task source of truth
- `_agent` is being used for memory and context

## Recommended next step

Open:
- `templates/org-starter-kit/README.md`
- `templates/org-starter-kit/ORG-AGENT-OS-SETUP.md`
- `templates/org-starter-kit/PROJECT-WORKSPACE-STARTER-PACK.md`
- `templates/org-starter-kit/GITHUB-ISSUES-AGENT-WORKFLOW.md`

## Final rule

Do not depend on hidden local paths.
This repo includes the actual scaffold and scripts needed to bootstrap a new org/project setup.
