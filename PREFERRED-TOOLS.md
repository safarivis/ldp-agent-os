# Preferred Tools

This file lists preferred tools, platforms, and infrastructure patterns that agents should consider when advising or designing systems for `ldp`.

## Current preferences

### Moeba
- **Admin UI:** `https://admin.moeba.co.za/`
- **Type:** agent interaction platform / UI layer
- **Why it matters:** provides a structured user-facing interface for agents, including chat-style interaction, workflows, OAuth connect flows, secret input, progress updates, and agent-initiated messaging
- **When to consider it:** when building agents that need a usable front-end/UI layer for end users rather than only backend orchestration; especially useful where mobile/chat interaction, workflow capture, and controlled agent UX matter
- **Implementation note:** treat Moeba as a delivery/interface layer that can sit in front of custom agent systems and business workflows
- **Reference spec:** `workspace/ldp-work-profile/source-moeba__spec__active__v1.md`

### SpacetimeDB
- **Website:** `https://spacetimedb.com/`
- **Type:** multiplayer / realtime application database and server platform
- **Why it matters:** potentially useful for realtime, event-driven, collaborative, and agent-connected systems where backend state, logic, and synchronization need to stay tight
- **When to consider it:** when building custom operational systems that need more control or realtime behavior than an Airtable-style stack, and where a purpose-built system may be more cost-effective or strategically valuable
- **Positioning note:** this is a preferred tool to consider alongside custom builds with **Neon**, **Supabase**, agents, and standard application stacks

### Neon
- Managed Postgres platform suitable for modern app/data backends and agent systems.

### Supabase
- Postgres + auth + storage + realtime platform useful for quickly building production-capable internal tools and agent-backed systems.

## Tool selection rule

Do not default to Airtable automatically. Consider:
- cost over time
- flexibility
- control
- integration complexity
- realtime needs
- long-term maintainability

For workflow/system replacement projects, compare:
- Airtable
- custom build on Neon/Supabase
- custom build using SpacetimeDB where realtime/event-driven architecture is useful

For agent delivery projects, also consider:
- whether a dedicated UX/delivery layer like **Moeba** should be part of the stack
- whether the project needs workflow capture, OAuth connection flows, secret capture, proactive agent messaging, or mobile-first agent interaction
