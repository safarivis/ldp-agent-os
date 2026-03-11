# NotebookLM Batch Processing Workflow

## Purpose

This workflow defines the standard way to use NotebookLM as an intake and synthesis layer while keeping `_agent` as the durable source of truth.

## Core principle

NotebookLM is for **processing**, not permanent storage.
Local markdown in `_agent` is the long-term source of truth.

## Stage 1 — Create a focused notebook

Create one NotebookLM notebook per topic batch.

Examples:
- secure personal agents
- client discovery
- tool/runtime comparisons
- business positioning research

Avoid mixing unrelated topics in one notebook.

## Stage 2 — Ingest sources

Add relevant:
- URLs
- PDFs
- docs
- transcripts
- notes

Keep the notebook scoped to a single topic.

## Stage 3 — Synthesize in NotebookLM

Use NotebookLM to:
- summarize key ideas
- compare approaches
- extract architecture implications
- identify risks/tradeoffs
- generate canonical candidate notes

Useful prompt patterns:
- summarize the strongest ideas
- compare these approaches
- what is actually new here?
- what should be ignored?
- turn this into a canonical note

## Stage 4 — Distill with the agent

Bring the NotebookLM outputs into the agent workflow and decide:
- what matters
- what is redundant
- what should be kept
- where it belongs in `_agent`

## Stage 5 — Promote to local markdown

Place durable ideas in:
- `knowledge/canonical/` — strongest reusable notes
- `knowledge/tools/` — stack/tool/tradeoff notes
- `knowledge/workflows/` — repeatable process notes
- `knowledge/inbox/` — processed but not yet placed ideas
- `workspace/<cell>/` — client/project-specific notes

Update operational files only when needed:
- `BLUEPRINT.md`
- `PREFERRED-TOOLS.md`
- `memory/*.md`
- `taste/*.md`

## Stage 6 — Backup

Commit and push the promoted knowledge:

```bash
cd /home/ldp/_agent
git add .
git commit -m "Promote NotebookLM batch insights for <topic>"
git push
```

## Stage 7 — Retire the NotebookLM batch

Once the useful ideas are captured locally:
- delete duplicate NotebookLM notes
- delete old NotebookLM sources if no longer needed
- or delete the whole notebook if the batch is complete

## Decision checklist before retirement

- [ ] Did we extract the durable ideas?
- [ ] Did we promote them locally?
- [ ] Did we back them up with git?
- [ ] Do we still need NotebookLM to query the raw sources?
- [ ] Is there any unique source set we may need again soon?

If not, retire the batch.

## KISS rules

1. One NotebookLM notebook = one topic batch
2. NotebookLM is temporary processing space
3. `_agent` is the durable source of truth
4. Client-specific material belongs in cells, not general canon
5. Delete/retire processed NotebookLM batches instead of letting them accumulate
