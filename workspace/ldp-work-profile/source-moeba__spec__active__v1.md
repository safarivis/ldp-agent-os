# Moeba Integration Spec (sanitized)

## Source
- Original file came from `/home/ldp/Downloads/moeba-spec.md`
- Moved into the LDP work-profile cell because it is relevant as a reusable agent-delivery/tooling reference
- Sanitized before storage in `_agent` to avoid keeping secrets in workspace files

## Short note

Moeba appears to be an **agent interaction / delivery platform** with a user-facing UI layer for agents.
It is useful when an agent build needs:
- chat-style end-user interaction
- dynamic workflows/forms
- OAuth connection flows
- secure secret capture flows
- progress updates for long-running tasks
- agent-initiated outbound messaging

This makes it relevant as a possible frontend/interface layer on top of custom agent systems.

Admin UI:
- https://admin.moeba.co.za/

## Key concepts

### Protocol
- JSON-RPC 2.0 over HTTPS
- Agent receives webhook POST requests from Moeba

### Core methods
- `agent.ping` — health check
- `agent.message` — user chat message handling
- `agent.action` — workflow completion, button actions, OAuth completion, secret submission
- `agent.deleteData` — user data deletion request; agent must delete stored user/session data

### Context model
- `phoneNumber` in E.164 format
- `sessionId` as conversation/thread identifier
- `timestamp`
- protocol version metadata

### Security model
- Request signing via `X-Moeba-Signature`
- HMAC-SHA256 verification required
- Do not store signing secrets in `_agent` workspace docs

### Response modes
- standard JSON-RPC response
- SSE / streaming responses for long outputs

## UI / interaction components

Moeba supports structured agent UI components, including:
- `workflow` — dynamic multi-step forms/data capture
- `oauthConnect` — third-party account connection flow
- `secretInput` — secure secret/API key collection

## Workflow support

Moeba can render dynamic workflows defined inline by the agent.
Useful step types include:
- text
- email
- phone
- number
- date
- textarea
- select
- checkbox
- photo
- location

Completed workflow data is returned to the agent via `agent.action`.

## OAuth support

Moeba can handle user OAuth connect flows and return tokens to the agent via `agent.action` with `actionId: "oauth_complete"`.
This is relevant for Gmail, Microsoft 365, GitHub, and similar integrations.

## Agent-initiated messaging

Moeba supports proactive outbound messages from the agent to the user.
This is useful for:
- reminders
- async task completion notifications
- workflow continuation
- progress updates

## Progress updates

Moeba supports a progress/spinner style UX for long-running tasks.
This is useful for builds where the agent performs background work and should keep the user informed.

## Secret handling

Moeba supports secure secret input patterns.
The raw secret is submitted to the agent, and the platform can work with secret references thereafter.

## Data deletion requirement

Moeba includes an `agent.deleteData` flow.
When triggered, the agent is expected to delete:
- chat history
- uploaded files/media
- derived data such as summaries/embeddings

This is important for privacy and app-store compliance.

## Fit note for future builds

Consider Moeba when the project needs:
- a mobile/chat-first agent UX
- structured workflow capture inside the agent experience
- integrated OAuth connect flows
- secure secret entry
- proactive messaging back to users
- a more complete user-facing shell for agents

Moeba is less about the core intelligence/backend itself and more about the **delivery/interface layer** around an agent system.
