# Knowledge Workflow

This directory is the durable local knowledge layer for `_agent`.

## Purpose

Use this area to store processed, reusable knowledge that has been distilled from:
- NotebookLM research
- conversations
- docs, URLs, PDFs, and external sources
- architecture and implementation work

NotebookLM should be used primarily as an **intake and synthesis layer**, not as the long-term source of truth.

## Workflow

1. Ingest new ideas and sources into NotebookLM
2. Use NotebookLM to summarize, compare, and synthesize
3. Distill the useful output with the agent
4. Promote durable knowledge into local markdown here
5. Update operational files (`BLUEPRINT.md`, `PREFERRED-TOOLS.md`, memory files, work cells) only when needed
6. Delete NotebookLM source material if it is no longer needed and the value has been captured locally

## Pattern spotting loop
Keep this lightweight:
1. At the end of major tasks, ask: "Anything here we should standardize or reuse?" or "Any patterns?"
2. Add likely reusable items to `knowledge/inbox/pattern-candidates.md`
3. Promote only the clear winners into `workflows/`, `tools/`, or `templates/`

## Placement rules

- `canonical/` — strongest distilled notes worth reusing often
- `tools/` — deeper tool and stack notes, comparisons, and tradeoffs
- `workflows/` — repeatable processes and operating methods
- `inbox/` — unsorted processed ideas waiting to be placed

## Source-of-truth rule

Local markdown in `_agent` is the durable source of truth.
Obsidian is the viewer/editor.
Git is the history and backup layer.
NotebookLM is the temporary processing layer.
