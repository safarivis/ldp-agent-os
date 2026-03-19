# Operating Model Summary for RevvTech

## KISS summary

What we are building for ourselves and clients is a practical delivery system, not just a chat workflow.

### Where things live
- each client/project gets its own repo
- that repo holds the project-specific truth:
  - code
  - setup
  - tasks
  - status
  - decisions
  - daily notes
- `_agent` is the shared operating layer across projects
- `_agent` holds reusable standards, templates, workflows, and cross-project learnings
- GitHub provides versioning, history, and collaboration across both

### How it works
- pi/agents work inside the repos against structured files, not only chat threads
- human approvals and alignment still happen through email, WhatsApp, and meetings
- once a decision is made, it gets written back into the repo or `_agent`
- when we notice something repeatable, we capture it and later promote it into a reusable template, workflow, or standard

### Why this matters
On top of a tool like Claude Teams, this adds:
- durable project memory in files
- clearer project state for both humans and agents
- repeatable structure across projects
- better handover and continuity
- compounding cross-project learnings instead of re-solving the same setup each time

### Simple framing
- project repo = project-specific truth
- `_agent` = reusable operating truth
- Claude Teams helps people think together
- this system helps us operate, reuse, and compound across many projects
