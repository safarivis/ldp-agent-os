# Canonical Eva Orchestrator Implementation

## Purpose

This note is the durable local version of the implementation-oriented Eva orchestrator architecture distilled from NotebookLM research.

## Core implementation architecture

Eva is implemented as a **hybrid orchestration system** that separates:
- logic and workflow orchestration
- scheduled/proactive behavior
- execution/runtime concerns
- communication channels

The intent is to create a secure, observable, and practical orchestrator rather than a fragile chatbot bolted onto existing tools.

## Role of the agent runtime

A programmable agent runtime should manage the core loop:
- task interpretation
- tool selection
- controlled execution
- context updates
- iterative refinement

The runtime should support strong session handling, extensibility, and deterministic control where possible.

## Role of orchestration layer

A scheduled/event-driven orchestration layer should handle:
- heartbeat jobs
- morning briefs
- asynchronous triggers
- execution scaffolding
- context commits / workflow progression

This orchestration layer should provide auditable, repeatable structure around agent execution.

## Tool orchestration

Tool use should favor:
- composability
- explicit filtering
- low context pollution
- programmatic chaining where needed

The practical lesson is to use tools in a way that minimizes repeated model round-trips and keeps large irrelevant outputs out of the context window.

## Memory, heartbeat, and channels

### Memory
Use markdown files as the long-term context layer:
- `soul.md`
- `user.md`
- `telos.md`
- `context.md`

### Heartbeat
Use scheduled workflows to create proactive behavior.
The orchestrator should not be purely reactive.

### Channels
Use thin communication channels so the orchestrator can be reached simply and consistently without bloated UI complexity.

## Recommended implementation sequence

1. Create the private control repository and structure
2. Establish the memory core and secure secret handling
3. Implement the core orchestrator/runtime loop
4. Add scheduled workflows / heartbeat behavior
5. Add communication channel adapters
6. Add tests/contracts before expanding capability
7. Grow piece by piece rather than by large framework adoption

## Practical build priorities

Prioritize:
- test-driven contracts
- simple, observable workflows
- secure credential handling
- gradual capability growth
- clarity of architecture over feature sprawl

## Final canonical implementation plan

The Eva orchestrator should be built as:
- a secure control plane
- a proactive orchestrator rather than a passive chatbot
- a markdown-memory-driven assistant
- a system that scales through disciplined workflow additions, not complexity accumulation

## Source note lineage

Promoted from NotebookLM synthesis work around:
- Eva orchestrator implementation
- Claude Agent SDK / runtime design
- orchestration layer patterns
- tool-calling and heartbeat architecture
