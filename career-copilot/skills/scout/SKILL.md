---
name: scout
description: Finds new roles matching the user's profile (targets in profile.md) across their target companies and the broader market, dedupes against the pipeline, and adds fresh matches as `scouted`. Wraps the job-scout agent for breadth. Use when the user says "scout new roles", "find me roles", "what's new", "refresh my pipeline", or on a recurring schedule.
---

# Scout new roles

Bring fresh, relevant openings into the pipeline — without duplicating what's already there.

## How to run (the loop)

1. **Load** the user's targets + target-company list from `~/Career Copilot/profile.md`, and the
   current pipeline index (to dedupe). Use the ATS / job-board sources in
   `references/job-sources.md` where available.
2. **Fan out.** Spawn the **`job-scout` agent** (one or several, in parallel) to sweep the
   targets and the open market for live roles matching the profile. Each returns a ranked
   shortlist, not raw pages.
3. **Dedupe** the results against existing records (same company + role → skip or refresh).
4. **Upsert** each genuinely new match via the `pipeline` skill at stage `scouted`, with its fit
   signal, link, and found-date. Optionally pass them to `fit-score` for ranking.
5. **Output** a short ranked shortlist of what's new and recommend the top 2–3 to `research`.

## Principles

- **No duplicates** — always dedupe against the pipeline first.
- **Quality bar** — only roles fitting the profile's targets + must-haves; drop the rest.
- **Breadth here, depth later** — `scout` finds; `research` goes deep.
