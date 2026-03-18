# Fresh `_agent` Root Bootstrap Commands

Use this when you want the **actual setup commands from this repo**, not references to some other local machine.

## Option 1 — fastest: run the included script

### macOS / Linux
```bash
bash templates/org-starter-kit/bootstrap-agent-os.sh ./_agent
```

### Windows PowerShell
```powershell
powershell -ExecutionPolicy Bypass -File .\templates\org-starter-kit\bootstrap-agent-os.ps1 -Target .\_agent
```

## Option 2 — copy the included scaffold from this repo

### macOS / Linux
```bash
TARGET="./_agent"
mkdir -p "$TARGET"
cp -R templates/org-starter-kit/scaffold/_agent/. "$TARGET/"
```

### Windows PowerShell
```powershell
$Target = ".\_agent"
New-Item -ItemType Directory -Force -Path $Target | Out-Null
Copy-Item -Recurse -Force .\templates\org-starter-kit\scaffold\_agent\* $Target
```

## Then adapt

Edit these first:
- `_agent/agent.md`
- `_agent/memory/user.md`
- `_agent/memory/context.md`
- `_agent/memory/telos.md`
- `_agent/workspace/sample-project/`

## Important

This repo already contains the actual starter files here:
- `templates/org-starter-kit/scaffold/_agent/`
- `templates/org-starter-kit/bootstrap-agent-os.sh`
- `templates/org-starter-kit/bootstrap-agent-os.ps1`

## See also

- `ROOT-BOOTSTRAP.md`
- `templates/org-starter-kit/README.md`
- `templates/org-starter-kit/PROJECT-WORKSPACE-STARTER-PACK.md`
