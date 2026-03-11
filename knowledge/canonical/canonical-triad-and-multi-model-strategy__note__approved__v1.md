# Canonical Triad and Multi-Model Strategy

## Purpose

This note is the durable local version of the triad and multi-model strategy distilled from NotebookLM research.

## Core recommendation

Use multi-agent or multi-model patterns only when roles are clear and task boundaries justify them.

Start with a strong single-agent workflow first.
Then add a triad or multi-model structure where it clearly improves reliability, review quality, or strategic coverage.

## Why use a triad pattern

A triad is useful when different roles need separation, such as:
- builder / executor
- reviewer / critic
- human strategist / approver

This reduces blind spots and helps prevent compounded errors.

## Roles in a triad system

### Builder
Implements, drafts, or executes the main task.

### Reviewer / Critic
Checks correctness, assumptions, gaps, and quality.

### Human-in-the-loop
Provides judgment, priorities, and final acceptance.

## When to use multiple models

Use multiple models when there is a clear reason, such as:
- different strengths in execution vs review
- speed vs depth tradeoffs
- real-time context needs
- cost/performance balancing

Do not assume multiple models are automatically better.
Added complexity must be justified.

## Reviewer / critic function

The reviewer role is valuable for:
- surfacing hidden errors
- validating contracts/tests
- checking logic before merge or execution
- reducing overconfidence from the primary builder

## Model, tool, and runtime selection principles

Choose models, tools, and runtimes based on:
- task fit
- observability
- reliability
- controllability
- cost
- integration friction
- token efficiency

Avoid flattening everything into one vendor or one framework unless there is a strong reason.

## Programming language considerations

Language/runtime choices should follow role and system needs rather than ideology.

General pattern:
- use productive, well-supported languages for orchestration and rapid iteration
- use stronger performance/runtime-focused tools only where they materially help
- prioritize maintainability, ecosystem fit, and agent-friendliness

## Risks and failure modes

Common failure modes:
- adding too many agents too early
- unclear role boundaries
- weak tests/contracts
- duplicated effort across models
- high orchestration overhead
- decision confusion from too many options

## Final canonical strategy

The best triad and multi-model strategy is:
- incremental
- role-based
- test-aware
- justified by actual task boundaries
- governed by simplicity rather than novelty

Use more models or agents only when they improve quality enough to justify the added complexity.

## Source note lineage

Promoted from NotebookLM synthesis work around:
- triad reviewer patterns
- multi-LLM architectures
- model/tool strategy
- programming language and runtime tradeoffs
