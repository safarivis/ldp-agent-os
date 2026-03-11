# _agent Blueprint

## Purpose

This document is the canonical architectural blueprint for the `_agent` system.

It explains:
- what `_agent` is
- why it is structured this way
- how future agents should evaluate it
- how it can be reused for other users or test scenarios

Canonical instance:
- `/home/ldp/_agent`

Portable pattern:
- `<user-home>/_agent`
- e.g. `/home/test/_agent`

## System intent

`_agent` is a user-global agent operating workspace.
It is designed to provide a tidy, markdown-first control plane for memory, routing, outputs, review, migration, and the compounding capture of expert taste.

It is not meant to be a monolithic app or an over-automated framework.
It is meant to be understandable, inspectable, and improvable over time.

## Architectural principles

### 1. User-global, not filesystem-root-global
The canonical workspace lives under the user home directory, not `/`.

Reasoning:
- user ownership and permissions are simpler
- personal memory belongs with the user
- the same architecture can be compared across users
- it reduces cross-user contamination

### 2. Portable by design
The architecture should be reusable at paths like:
- `/home/ldp/_agent`
- `/home/test/_agent`

The folder schema should remain stable, while personal memory and preferences should vary.

### 3. Markdown-first
Use folders and markdown before databases or heavy automation.

Reasoning:
- simpler to inspect
- easier for humans and agents to read
- lower setup cost
- aligns with KISS and incremental improvement

### 4. Reviewable and migratable
The system must support ongoing review and gradual migration from existing chaos.

### 5. Taste compounds
Expert rejection, once articulated and encoded, becomes a reusable asset.

## The Six Pillars

1. **Critical Thinking & Decision Science**
   - state assumptions
   - inspect tradeoffs
   - watch for bias and sloppy reasoning

2. **First Principles Thinking**
   - reduce problems to fundamentals before adding structure or tools

3. **KISS (Radical Simplicity)**
   - prefer the simplest viable approach
   - avoid premature complexity

4. **Incremental Innovation & Compounding**
   - improve through small durable changes
   - compound standards and reusable assets over time

5. **Test-Driven Development**
   - define success and verification before implementation

6. **The Optimization Engine**
   - build reusable internal tooling, templates, conventions, and leverage systems

## Naming vocabulary

- **root** — the canonical per-user `_agent` workspace, e.g. `/home/ldp/_agent`
- **room** — a domain-level context under `rooms/` with its own `context.md`, standards, and routing guidance
- **cell** — a bounded local work context for a client, project, relationship, or initiative; cells usually live under `workspace/`
- **memory core** — the four persistent memory files: `soul.md`, `user.md`, `telos.md`, `context.md`
- **taste subsystem** — the markdown-first feedback loop that captures rejection, articulation, encoding, and reuse under `taste/`

These terms should be used consistently by future agents to reduce naming drift.

## Core components

### Layer 1 — The Map
Primary routing file:
- `agent.md`

Responsibilities:
- top-level folder map
- naming conventions
- routing rules
- safety rules
- portability guidance

### Layer 2 — The Rooms
Directory:
- `rooms/`

Each room should have a `context.md` that defines:
- when to use the room
- what to read
- what to skip
- which standards apply
- what outputs should be produced

### Layer 3 — The Workspace
Directory:
- `workspace/`

Purpose:
- store actual work products using predictable naming and review states

## Markdown memory core

Directory:
- `memory/`

Required files:
- `soul.md`
- `user.md`
- `telos.md`
- `context.md`

### Role of each file
- `soul.md` — identity, philosophy, non-negotiables
- `user.md` — user-specific preferences and constraints
- `telos.md` — strategic direction and long-term aims
- `context.md` — current priorities, open loops, near-term state

## Taste capture subsystem

Directory:
- `taste/`

Purpose:
Capture expert taste and corrections so they do not evaporate.

Core loop:
1. Recognition
2. Articulation
3. Encoding
4. Reuse

Subcomponents:
- `rejection-log.md`
- `principles.md`
- `patterns/`
- `anti-patterns/`
- `rubrics/`
- `reviews/`

### Timing rule
Start manual and markdown-first.
Only consider a critic agent or retrieval tooling after enough real examples have been encoded.

## Review and migration

Supporting files:
- `REVIEW.md`
- `ROADMAP.md`
- `MIGRATION.md`

Purpose:
- keep the architecture aligned
- track drift
- stage migration from scattered material
- prevent hidden complexity from accumulating

## Governance rules

1. Do not add more agents before the manual workflow proves useful.
2. Do not let durable rules live only in chat history.
3. Do not optimize with tooling before the human loop is understood.
4. Prefer reference and staged migration over chaotic reorganization.
5. Promote repeated corrections into reusable standards.

## What should change slowly

These should be relatively stable:
- folder schema
- naming conventions
- memory file roles
- Six Pillars doctrine
- taste capture operating loop

## What can evolve faster

These may evolve more often:
- room structure
- templates
- review cadence
- specific rubrics
- migration priorities
- future agent specs

## Re-evaluation criteria

When evaluating `_agent`, check:
- **Clarity** — Is it easy to understand where things belong?
- **Simplicity** — Is the structure lean enough?
- **Portability** — Can it be reused at `/home/test/_agent`?
- **Memory usefulness** — Do the memory files help future work?
- **Taste capture quality** — Are corrections being encoded and reused?
- **Token efficiency** — Are agents loading only relevant context?
- **Review discipline** — Is drift being noticed and corrected?
- **Migration discipline** — Is old chaos being integrated gradually and intentionally?
- **Leverage** — Is the system creating reusable internal assets?

## Comparison guidance for future `/home/test/_agent`

When a comparison system is created, compare:
- architecture clarity
- room usefulness
- memory quality
- naming consistency
- retrieval speed
- taste capture effectiveness
- maintainability over time
- alignment with the Six Pillars

## Source of truth relationship

Use these documents together:
- `BLUEPRINT.md` — architectural doctrine and evaluation basis
- `agent.md` — routing and operational rules
- `ROADMAP.md` — phased implementation plan
- `REVIEW.md` — ongoing alignment and hygiene
- `MIGRATION.md` — staged cleanup and adoption plan

## Final rule

Future agents should not merely preserve `_agent`.
They should periodically compare reality to this blueprint and suggest improvements that preserve simplicity, portability, reviewability, and compounding value.
