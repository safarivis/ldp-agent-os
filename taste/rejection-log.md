# Rejection Log

Use this file to capture rejections quickly before they evaporate.

## Entry template

### [YYYY-MM-DD] [topic]
- **Task:**
- **Output rejected:**
- **Failure type:** reasoning / structure / scope / style / priority / verification / other
- **Why it failed:**
- **What good would have looked like:**
- **Rule to encode:**
- **Promote to:** principles / pattern / anti-pattern / rubric / memory / room-context
- **Status:** draft / promoted / archived

---

## Entries

### [2026-03-11] premature-agent-proliferation
- **Task:** design a global agent system
- **Output rejected:** adding too many agents and automation loops before the manual workflow exists
- **Failure type:** scope
- **Why it failed:** it violated KISS, skipped first-principles decomposition, and lacked testable rollout criteria
- **What good would have looked like:** scaffold the canonical workspace first, then add stewardship and critic agents later
- **Rule to encode:** do not introduce new agents or automation until the manual workflow is stable and reviewed
- **Promote to:** anti-pattern, agent map
- **Status:** draft
