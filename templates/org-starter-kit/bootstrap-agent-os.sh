#!/usr/bin/env bash
set -euo pipefail

TARGET="${1:-./_agent}"

mkdir -p \
  "$TARGET/memory" \
  "$TARGET/workspace" \
  "$TARGET/knowledge" \
  "$TARGET/taste" \
  "$TARGET/templates/cell" \
  "$TARGET/review" \
  "$TARGET/inbox" \
  "$TARGET/archive"

cat > "$TARGET/agent.md" <<'EOF'
# Org Agent Root Instructions

## Purpose
This `_agent` workspace is the shared operating system for this org.

## Core rule
- GitHub = tasks and approvals
- _agent = memory and context

## Read order
1. agent.md
2. memory/context.md
3. memory/telos.md
4. workspace/INDEX.md
5. workspace/ACTIVE-CELLS.md
EOF

cat > "$TARGET/memory/soul.md" <<'EOF'
# Org Values and Non-Negotiables

- Add org values here
EOF

cat > "$TARGET/memory/user.md" <<'EOF'
# Key People and Preferences

- Add key people here
EOF

cat > "$TARGET/memory/telos.md" <<'EOF'
# Long-Term Goals

- Add org goals here
EOF

cat > "$TARGET/memory/context.md" <<'EOF'
# Current Context

- Add active priorities here
EOF

cat > "$TARGET/workspace/INDEX.md" <<'EOF'
# Workspace Index

- List project workspaces here
EOF

cat > "$TARGET/workspace/ACTIVE-CELLS.md" <<'EOF'
# Active Workspaces

- List active projects here
EOF

cat > "$TARGET/knowledge/README.md" <<'EOF'
# Knowledge

Store durable reusable knowledge here.
EOF

cat > "$TARGET/taste/README.md" <<'EOF'
# Taste

Store quality rules and lessons learned here.
EOF

cat > "$TARGET/taste/principles.md" <<'EOF'
# Quality Principles

- Add quality rules here
EOF

cat > "$TARGET/taste/rejection-log.md" <<'EOF'
# Rejection Log

- Record repeated mistakes and lessons here
EOF

cat > "$TARGET/ROADMAP.md" <<'EOF'
# Roadmap

- Add setup and rollout phases here
EOF

cat > "$TARGET/REVIEW.md" <<'EOF'
# Review

- Add review cadence and hygiene checks here
EOF

echo "Agent OS scaffold created at: $TARGET"
echo "Next steps:"
echo "1. Update agent.md"
echo "2. Fill in memory files"
echo "3. Create a real project workspace under workspace/"
echo "4. Link it to GitHub"
