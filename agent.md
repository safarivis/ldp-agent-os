# _agent Canonical Workspace Map

This directory is the canonical agent workspace for user `ldp`.

Primary path:
- `/home/ldp/_agent`

Portable pattern for future users/test scenarios:
- `<user-home>/_agent`
- e.g. `/home/test/_agent`

## Purpose

This workspace is the user-global control plane for agentic work on this machine.
It exists to keep agent behavior, memory, routing, outputs, review, and refinement tidy, reusable, and portable.

See also:
- `BLUEPRINT.md` — canonical architectural blueprint and evaluation basis
- `templates/ROOT-BOOTSTRAP.md` — end-to-end fresh `_agent` root setup guide
- `templates/ROOT-BOOTSTRAP-COMMANDS.md` — shortest copy-paste bootstrap block for another pi agent

## Non-negotiables

1. Read this file first for `_agent` work.
2. Prefer the simplest viable structure.
3. Define success before building.
4. Capture reusable decisions, not just outputs.
5. Encode expert taste and rejections as compounding assets.
6. Avoid premature automation and agent proliferation.
7. Design so the structure can later be reused in `/home/test/_agent` without copying personal identity blindly.

## The Six Pillars

1. **Critical Thinking & Decision Science** — Make bias-aware decisions, state assumptions, and compare alternatives.
2. **First Principles Thinking** — Decompose to fundamentals before building.
3. **KISS (Radical Simplicity)** — Prefer the simplest viable approach.
4. **Incremental Innovation & Compounding** — Improve in small durable steps.
5. **Test-Driven Development** — Define success and verification before implementation.
6. **The Optimization Engine** — Build reusable internal tooling, shared templates, and a leverage platform.

## Naming vocabulary

- **root** — the canonical `_agent` workspace for a user, e.g. `/home/ldp/_agent`
- **room** — a domain context under `rooms/` that contains local instructions and standards
- **cell** — a bounded local work context for a client, project, relationship, or initiative, typically stored under `workspace/`
- **memory core** — the four core memory files: `soul.md`, `user.md`, `telos.md`, `context.md`
- **taste subsystem** — the recognition → articulation → encoding → reuse loop under `taste/`

## Top-level map

- `memory/` — persistent markdown memory core
- `rooms/` — task-context rooms with local instructions
- `workspace/` — actual outputs and execution artifacts
- `taste/` — rejection capture, taste rules, rubrics, and compounding feedback loop
- `knowledge/` — durable processed knowledge distilled from NotebookLM and other sources
- `templates/` — reusable templates for rooms, reviews, and agent specs
- `agents/` — agent role specs (steward, critic, etc.)
- `review/` — periodic review notes
- `migration/` — migration inventory and staging docs
- `inbox/` — unclassified items waiting to be routed
- `archive/` — retained but inactive material
- `ROADMAP.md` — phased implementation plan
- `REVIEW.md` — current status and hygiene checklist
- `MIGRATION.md` — migration plan from existing chaos into this canonical workspace

## Memory core

Core memory files live in `memory/`:
- `soul.md`
- `user.md`
- `telos.md`
- `context.md`

Use them as follows:
- `soul.md` — philosophy, identity, non-negotiables
- `user.md` — user preferences and constraints
- `telos.md` — strategic direction and long-term goals
- `context.md` — active context, open loops, near-term state

## Default cell scaffold

For a normal new cell under `workspace/<cell-name>/`, start with:
- `agent.md`
- `context.md`
- `notes.md`

Add only what the work actually needs, for example:
- `contacts.md`
- `decisions.md`
- `next-steps.md`
- `reply-drafts.md`
- `opportunities.md`

KISS rule:
- do **not** create cell-local `soul.md`, `user.md`, or `telos.md` by default
- only add those when the cell becomes broad, long-running, and strategically significant

Reference examples:
- lean cell: `workspace/revvtech-dominic/agent.md`
- broader profile cell: `workspace/ldp-work-profile/agent.md`

Scaffold helper:
- `templates/cell/create-cell.sh <cell-name> [purpose]`

Validation:
- run `tests/validate-canonical-layout.sh` to verify the canonical layout, templates, and example cells
- run `tests/weekly-check.sh` for the normal weekly wrapper: validator + workspace hygiene + root hygiene
- run `tests/weekly-check-and-log.sh` for the weekly review flow with a saved report under `review/weekly-checks/`, automatic retention of the latest 12 reports, and an updated `review/weekly-checks/INDEX.md`; report filenames are marked `pass` or `fail`

## Routing rules

1. Start here.
2. If the user asks about business opportunities, clients, pricing, replies, or current work context, check `workspace/INDEX.md` and `workspace/ACTIVE-CELLS.md` first.
3. For business/work-context questions, do not answer from generic prior knowledge before checking the relevant `_agent` workspace context.
4. For prioritization, sequencing, or "what should we do next?" questions, consult `memory/context.md` and `memory/telos.md` before giving recommendations.
5. If the task is strategic, ambiguous, high-stakes, architecture-shaping, or commercially important, apply:
   - `knowledge/workflows/meta-model-thinking__workflow__approved__v1.md`
   - `knowledge/workflows/thinking-review-checklist__workflow__approved__v1.md`
5. If the task is about backing up `_agent` to GitHub, use:
   - `knowledge/workflows/github-backup__workflow__approved__v1.md`
6. Determine which room or cell applies.
7. Load only the relevant room context and needed references.
8. Save outputs in `workspace/` using naming conventions.
9. If a correction reveals a reusable standard, encode it in `taste/`.
10. If a rule becomes durable, promote it into `memory/`, room context, or templates.

## Contact placement rule

When saving contact information:
- Put **durable user-level contacts, partner leads, and cross-opportunity relationships** in the appropriate broad profile cell (for `ldp`, this is `workspace/ldp-work-profile/contacts.md`).
- Put **client- or opportunity-specific contacts** in that specific cell's `contacts.md`.
- If a contact could matter across multiple opportunities, default to the broader profile cell rather than a single client cell.
- Only duplicate a contact into a client cell when the relationship becomes materially specific to that client context.

## Naming convention

### Classification rule

To keep naming simple and reduce confusion:
- **tool / platform** = a thing we use in solution design or delivery (e.g. Moeba, Supabase, Neon)
- **project** = a concrete codebase or runnable implementation we build and operate (e.g. `moeba-bridge`)
- **cell** = a bounded context used to track thinking, relationships, opportunities, or work state in `_agent/workspace/`

Decision rule:
- if it is a **thing we use**, classify it as a **tool/platform**
- if it is a **thing we build/run**, classify it as a **project**
- if it is a **thing we track/think through**, classify it as a **cell**

Naming rule:
- tool/platform names use the normal product name
- project/codebase names use **lowercase kebab-case**
- cell/context names use **context-oriented kebab-case**

Default file pattern for markdown workspace files:

`[topic]__[type]__[status]__v[version].md`

Examples:
- `agent-system__plan__active__v1.md`
- `taste-capture__rubric__draft__v1.md`
- `workspace-steward__spec__review__v2.md`

Suggested statuses:
- `draft`
- `active`
- `review`
- `approved`
- `archived`

## Taste capture rule

Treat expert rejection as a compounding asset.

When output is rejected:
1. Recognize the failure
2. Articulate why it failed
3. Encode the lesson in `taste/`
4. Reuse it on the next similar task

## Safety rules

- Do not store secrets in workspace files.
- KISS secret rule:
  - use **SSH** for server access
  - use **`pass`** for passwords, API keys, tokens, and other secrets on this machine
  - use `.env` files only in the **real runtime/project directory**, not in `_agent`
  - `_agent` may store only secret references, paths, owners, and rotation notes
- Prefer explicit paths and predictable conventions over hidden behavior.
- Before destructive changes, verify intent.
- Do not add more agents or automation until the manual workflow is stable and reviewed.

## Portability rule

Keep the structure reusable across users. Personal identity and preferences belong in the memory files, not the folder schema.
