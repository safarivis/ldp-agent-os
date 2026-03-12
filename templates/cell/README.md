# Cell Template

Use this template for a normal new cell under `workspace/<cell-name>/`.

If you need to stand up a fresh root first, use:
- `/home/ldp/_agent/templates/ROOT-BOOTSTRAP.md`
- `/home/ldp/_agent/templates/ROOT-BOOTSTRAP-COMMANDS.md`

Minimum starting files:
- `agent.md`
- `context.md`
- `notes.md`

Add other files only as needed, for example:
- `contacts.md`
- `decisions.md`
- `next-steps.md`
- `reply-drafts.md`
- `opportunities.md`

Do not create local `soul.md`, `user.md`, or `telos.md` by default.
Those belong to the global memory core unless the cell becomes a broader strategic domain.

## Scaffold helper

Use:
- `/home/ldp/_agent/templates/cell/create-cell.sh <cell-name> [purpose]`

Example:
- `/home/ldp/_agent/templates/cell/create-cell.sh acme-client "the Acme client relationship"`

## Validation

Use the weekly wrapper with logging for the normal review flow:
- `/home/ldp/_agent/tests/weekly-check-and-log.sh`
- This saves a dated report, marks the filename as `pass` or `fail`, updates `review/weekly-checks/INDEX.md`, and keeps only the latest 12 reports.

Use the weekly wrapper directly when you do not need a saved report:
- `/home/ldp/_agent/tests/weekly-check.sh`

Use the canonical layout test for direct structural validation:
- `/home/ldp/_agent/tests/validate-canonical-layout.sh`
