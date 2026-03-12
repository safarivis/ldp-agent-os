#!/usr/bin/env bash
set -euo pipefail

ROOT="/home/ldp/_agent"
FILES=(
  "$ROOT/templates/cell/agent.md"
  "$ROOT/workspace/revvtech-dominic/agent.md"
  "$ROOT/workspace/ldp-work-profile/agent.md"
)

status=0

for file in "${FILES[@]}"; do
  if [[ ! -f "$file" ]]; then
    echo "MISSING $file"
    status=1
    continue
  fi

  starts=$(grep -c '<!-- managed: cell-routing:start -->' "$file" || true)
  ends=$(grep -c '<!-- managed: cell-routing:end -->' "$file" || true)

  if [[ "$starts" -eq 1 && "$ends" -eq 1 ]]; then
    echo "PASS $file"
  else
    echo "FAIL $file (start=$starts end=$ends)"
    status=1
  fi
done

exit $status
