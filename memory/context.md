# context

## Current state

- `_agent` is the live canonical workspace for this machine and VPS runtime under `ldp`
- Canonical map, roadmap, review, migration, eval, and routing systems now exist
- Manual taste capture subsystem is active
- Host-wide VPS ops routing now lives in `workspace/vps-ops/`
- App-specific live surfaces now have cells under `workspace/<app-name>/`

## Near-term priorities

1. Improve the live `_agent` system through small eval-gated iterations and promote winning lessons into live files, templates, and workflows
2. Update global notes so future sessions point to `_agent`
3. Create initial rooms and their `context.md` files
4. Start capturing real rejections in `taste/rejection-log.md`
5. Decide first migration targets from existing notes and workflows
6. Support the RevvTech goal of using project repos plus `_agent` as a compounding delivery system across many projects
7. Keep the pattern-capture loop lightweight: ask "Anything here we should standardize or reuse?" and promote only clear winners

## Current operating focus

- Prefer improvements to the active canonical system over speculative redesign
- Prefer one small validated change at a time
- Treat documentation, templates, and git-backed history as part of the operating system

## Open loops

- Which room should be implemented first?
- What existing materials should migrate into `_agent` first?
- When is there enough taste data to justify a critic agent?

## Durable operational notes

- For GitHub repo backup on this PC, prefer GitHub CLI + HTTPS over SSH when `gh auth status` is healthy. See `knowledge/tools/github-backups.md`.
