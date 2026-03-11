# Canonical Secure Agent Blueprint

## Purpose

This note is the durable local version of the secure personal agent blueprint distilled from NotebookLM research.

## Core recommendation

Adopt a **rebuild** philosophy: construct a private, high-agency orchestrator from the ground up instead of bolting features onto large, risky, or opaque frameworks.

The architecture should prioritize:
- radical simplicity
- controllability
- markdown-first memory
- secure execution
- auditable behavior
- compounding improvement over time

## Why build-your-own

Large framework stacks create:
- unnecessary complexity
- fragile dependencies
- weak auditability
- security risk
- framework sprawl and decision paralysis

A smaller, understandable system is preferable because it is easier to:
- inspect
- test
- secure
- evolve
- align to user taste and judgment

## Markdown memory core

Use a simple file-based memory architecture:
- `soul.md` — identity, values, judgment layer
- `user.md` — preferences, conventions, constraints
- `telos.md` — long-term purpose and direction
- `context.md` — rolling operating context and recent continuity

Memory should be:
- human-readable
- version-controlled
- easy to refine
- durable across sessions

## Why `soul.md` matters

`soul.md` is not cosmetic. It provides:
- personality and non-sycophantic behavior
- stronger judgment and taste
- resilience against manipulation/prompt drift
- a more human and coherent operating posture

It acts as a judgment layer that helps the agent move from generic completion behavior toward principled partnership.

## Security posture

The security model should assume:
- no secrets in workspace files
- credentials handled through environment variables or secret stores
- isolated execution where possible
- auditable logs and clear control boundaries
- minimal attack surface

## KISS / radical simplicity

The system should be built piece by piece.

Prefer:
- one working agent before many agents
- clear contracts before broad autonomy
- fewer layers over more tooling
- explicit design over implicit framework magic

Complexity should be treated as a liability.

## Practical operating model

A strong secure agent should support:
- proactive scheduled behavior
- thin communication channels
- human approval for high-risk actions
- gradual extension through modular skills/capabilities

## Final canonical blueprint

A secure agent system should be:
- private
- markdown-memory-driven
- simple enough to understand fully
- secure by design
- able to evolve through small disciplined improvements
- shaped by explicit user taste, not generic defaults

## Source note lineage

Promoted from NotebookLM synthesis work around:
- secure personal agent architecture
- build-your-own/OpenClaw lessons
- soul and memory architecture
- radical simplicity doctrine
