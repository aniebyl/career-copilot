---
name: wiki
description: Maintains the user's career knowledge base — reusable company briefs, contact records, and per-company interview-question banks — that other skills read and write so every search compounds. Use when the user says "what do we know about [company]", "save this to the wiki", "show my notes on [company]", "who do I know at [company]", or when research/interview-prep need shared knowledge.
---

# Wiki — the career knowledge base

The compounding memory of the search. `research` writes company briefs; `interview-prep` banks
questions; `refer`/`outreach` record contacts — and every later role reuses it.

## Where it lives

`~/Career Copilot/wiki/` — `companies/<slug>.md`, `contacts/<slug>.md`, and `index.md`. See
`references/wiki-schema.md`.

## Operations

- **read** — return what's known about a company or contact (so a skill doesn't re-research).
- **upsert company** — create/refresh a company brief (snapshot, people, interview-question bank).
- **bank questions** — append interview questions seen, with round + date.
- **record contact** — who they are, relationship, channels, history, and whether they're safe to
  reveal the search to (stealth).
- **search** — find across the wiki by company, person, or topic.

## Principles

- **Cite + date** every entry — knowledge is only useful if it's current and sourced.
- **Private + local** — it holds personal network and notes; keep it local, never expose it.
- **Dedupe** — one file per company/contact; merge, don't duplicate.
- **Compound** — write once, reuse everywhere; the wiki is the moat.
