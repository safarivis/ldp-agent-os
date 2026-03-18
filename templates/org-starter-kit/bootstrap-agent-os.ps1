param(
  [string]$Target = "./_agent"
)

$dirs = @(
  "$Target",
  "$Target/memory",
  "$Target/workspace",
  "$Target/knowledge",
  "$Target/taste",
  "$Target/templates",
  "$Target/templates/cell",
  "$Target/review",
  "$Target/inbox",
  "$Target/archive"
)

foreach ($dir in $dirs) {
  New-Item -ItemType Directory -Force -Path $dir | Out-Null
}

$files = @{
  "$Target/agent.md" = "# Org Agent Root Instructions`n`n## Purpose`nThis `_agent` workspace is the shared operating system for this org.`n`n## Core rule`n- GitHub = tasks and approvals`n- _agent = memory and context`n`n## Read order`n1. agent.md`n2. memory/context.md`n3. memory/telos.md`n4. workspace/INDEX.md`n5. workspace/ACTIVE-CELLS.md`n";
  "$Target/memory/soul.md" = "# Org Values and Non-Negotiables`n`n- Add org values here`n";
  "$Target/memory/user.md" = "# Key People and Preferences`n`n- Add key people here`n";
  "$Target/memory/telos.md" = "# Long-Term Goals`n`n- Add org goals here`n";
  "$Target/memory/context.md" = "# Current Context`n`n- Add active priorities here`n";
  "$Target/workspace/INDEX.md" = "# Workspace Index`n`n- List project workspaces here`n";
  "$Target/workspace/ACTIVE-CELLS.md" = "# Active Workspaces`n`n- List active projects here`n";
  "$Target/knowledge/README.md" = "# Knowledge`n`nStore durable reusable knowledge here.`n";
  "$Target/taste/README.md" = "# Taste`n`nStore quality rules and lessons learned here.`n";
  "$Target/taste/principles.md" = "# Quality Principles`n`n- Add quality rules here`n";
  "$Target/taste/rejection-log.md" = "# Rejection Log`n`n- Record repeated mistakes and lessons here`n";
  "$Target/ROADMAP.md" = "# Roadmap`n`n- Add setup and rollout phases here`n";
  "$Target/REVIEW.md" = "# Review`n`n- Add review cadence and hygiene checks here`n";
}

foreach ($file in $files.Keys) {
  Set-Content -Path $file -Value $files[$file]
}

Write-Output "Agent OS scaffold created at: $Target"
Write-Output "Next steps:"
Write-Output "1. Update agent.md"
Write-Output "2. Fill in memory files"
Write-Output "3. Create a real project workspace under workspace/"
Write-Output "4. Link it to GitHub"
