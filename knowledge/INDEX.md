# Knowledge Index

This file indexes the durable processed knowledge stored under `knowledge/`.

## Current sections

### `canonical/`
Use for the strongest, most reusable notes that should act as reference material for future architecture and strategy work.

### `tools/`
Use for tool evaluations, preferred stack comparisons, and technical tradeoff notes.

### `workflows/`
Use for repeatable methods and operating workflows.

### `inbox/`
Use for processed-but-not-yet-placed ideas.

## Routing rule

When a new idea has been processed in NotebookLM and seems durable, decide:
- Is it canonical?
- Is it a tool note?
- Is it a workflow?
- Is it not ready yet and should go to inbox?

If the idea is client- or project-specific, it likely belongs in a `workspace/` cell instead of here.
