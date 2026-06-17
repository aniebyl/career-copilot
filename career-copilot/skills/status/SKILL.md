---
name: status
description: Produces a snapshot of the job-search pipeline — counts by stage, what needs action now, upcoming dates, and the top recommended next moves. Reads the pipeline store. Use when the user says "status", "pipeline status", "where am I", "what should I do next", or "show my pipeline".
---

# Pipeline status

Turn the pipeline store into a tight, decision-ready snapshot.

## How to run (the loop)

1. **Read** `pipeline/index.md` and the records via the `pipeline` skill.
2. **Summarize by stage** — counts across the funnel (scouted → … → offer), active vs
   snoozed/closed.
3. **Surface what needs action now** — overdue `next_action_date`s, threads due for
   `follow-up`, interviews coming up (cross-check Calendar).
4. **Recommend the top 3 next moves** — the highest-leverage actions today.

## Output

A compact dashboard:

- **Funnel:** counts by stage.
- **Needs action:** overdue / due items, each with its one next step.
- **This week:** upcoming dates.
- **Top 3 moves:** ranked, each a single concrete action.

Keep it skimmable — this is a morning glance, not a report.
