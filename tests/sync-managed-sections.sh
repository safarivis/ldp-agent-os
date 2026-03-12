#!/usr/bin/env bash
set -euo pipefail

ROOT="/home/ldp/_agent"
SOURCE="$ROOT/templates/cell/agent.md"
TARGETS=(
  "$ROOT/workspace/revvtech-dominic/agent.md"
  "$ROOT/workspace/ldp-work-profile/agent.md"
)
START='<!-- managed: cell-routing:start -->'
END='<!-- managed: cell-routing:end -->'

extract_block() {
  python - "$1" "$START" "$END" <<'PY'
import sys
path, start, end = sys.argv[1:4]
text = open(path).read()
si = text.find(start)
ei = text.find(end)
if si == -1 or ei == -1 or ei < si:
    raise SystemExit(f"Managed block not found in {path}")
ei += len(end)
print(text[si:ei])
PY
}

replace_block() {
  python - "$1" "$2" "$START" "$END" <<'PY'
import sys
path, replacement, start, end = sys.argv[1:5]
text = open(path).read()
si = text.find(start)
ei = text.find(end)
if si == -1 or ei == -1 or ei < si:
    raise SystemExit(f"Managed block not found in {path}")
ei += len(end)
new = text[:si] + replacement + text[ei:]
with open(path, 'w') as f:
    f.write(new)
print(path)
PY
}

BLOCK="$(extract_block "$SOURCE")"

for target in "${TARGETS[@]}"; do
  replace_block "$target" "$BLOCK" >/dev/null
  echo "SYNCED $target"
done

echo "Done."
