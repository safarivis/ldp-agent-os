# Sync Policy

## Purpose

Safely propagate winning improvements across `_agent` without overwriting important local context.

## KISS rule

Promote wins in this order:
1. live canonical file
2. template
3. existing derived files only when safe

## Safe propagation rules

### 1. Never full-overwrite local context files by default
Do not blindly copy template content over:
- existing cell `agent.md`
- existing `context.md`
- existing custom workspace docs

### 2. Prefer one of these sync patterns

#### A. Canonical reference
Local files point back to the canonical root guidance instead of duplicating it.

#### B. Managed section
Only a clearly marked block is synchronized.

Example markers:
```md
<!-- managed: cell-routing:start -->
...
<!-- managed: cell-routing:end -->
```

Everything outside the managed block stays local.

### 3. Promote only repeated wins
A lesson should usually win in evals before it becomes a default template or managed-block rule.

## Promotion decision table

- **Live canonical file**: yes, for any kept win
- **Template**: yes, if future setups should inherit it
- **Existing derived files**: only if the change is generic and can live in a managed block
- **Taste/principles**: after repeated validation

## Existing file update rule

When updating an existing cell:
- preserve purpose
- preserve read order
- preserve local scope rules
- preserve local output rules
- only sync the small shared rule block

## Validation rule

After editing managed sections:
- run `tests/sync-managed-sections.sh` to propagate the shared block from the template into existing files
- run `tests/validate-managed-sections.sh`
- inspect the changed file(s)
- commit only the intended block updates
