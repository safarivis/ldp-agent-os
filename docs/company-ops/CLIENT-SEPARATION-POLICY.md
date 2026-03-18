# Client Separation Policy

## Recommendation

**Create the policy structure first, then fill in the real access rules with Dom.**

This is important before many client workspaces are created.

---

## Why this matters

With multiple clients, a team, and partners, you need a simple rule for:
- what stays in the main company AgentOS
- what gets its own client workspace
- what gets a separate repo or separate `_agent`
- what partners can and cannot see

---

## Starter policy

### Company root `_agent`
Use for:
- RevvTech internal standards
- generic delivery playbooks
- reusable templates
- company memory
- non-client-specific knowledge

### Client workspace inside company `_agent`
Use for:
- normal client context
- project notes
- decisions
- next steps
- links to GitHub repos/issues

Good when:
- the work is moderate sensitivity
- the team access is controlled enough
- the client does not require stricter isolation

### Separate client repo or separate `_agent`
Use when:
- the client is highly sensitive
- access must be tightly restricted
- partners should not see other client context
- the client may later need their own dedicated operating system

---

## Questions for Dom

1. Which clients require strict isolation?
2. Which clients can live inside the main RevvTech `_agent` as separate workspaces?
3. Should partners ever see client workspace content directly?
4. Which information is allowed in GitHub vs local `_agent`?
5. Which information must never be stored locally?

---

## Simple default rule

Until Dom confirms otherwise:
- root `_agent` = RevvTech internal only
- one workspace per client/project
- sensitive clients = separate repo / separate restricted setup
- secrets = never in `_agent`

---

## Decision checklist

Before creating a client workspace, decide:
- sensitivity level
- team access needed
- partner access needed
- whether GitHub repo is shared or private
- whether a separate `_agent` is safer
