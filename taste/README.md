# Taste Capture System

## Purpose

This subsystem captures expert taste and turns it into a compounding asset.

The core loop is:
1. **Recognition** — notice where output failed
2. **Articulation** — explain why it failed
3. **Encoding** — store the lesson in a durable place
4. **Reuse** — apply the lesson on future tasks

## Why this exists

Without a permanent home, high-value corrections evaporate when the chat ends.
This subsystem keeps those lessons queryable by humans and future agents.

## Operating rule

Treat rejected output as disposable. Treat the explanation of why it failed as the durable asset.

## Files

- `rejection-log.md` — fast capture inbox for rejected outputs and corrections
- `principles.md` — durable taste rules and quality standards
- `patterns/` — positive patterns to emulate
- `anti-patterns/` — failure modes to avoid
- `rubrics/` — evaluation criteria for recurring output types
- `reviews/` — periodic summaries of what is emerging

## Promotion flow

- Log raw rejection in `rejection-log.md`
- Promote recurring lessons into `patterns/`, `anti-patterns/`, or `rubrics/`
- Promote the most durable doctrine into `memory/` or room contexts

## Timing rule

Start manual and markdown-first.
Do not build a critic agent or retrieval database until enough real examples have been captured.
