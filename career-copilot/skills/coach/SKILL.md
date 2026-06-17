---
name: coach
description: The self-learning brain of Career Copilot. Reads outcome history across the pipeline, computes what's actually working (reply rate by message pattern, conversion by fit tier and framing, referral vs cold), and rewrites the active strategy playbook so future research/tailor/outreach runs reason better. Use when the user says "what's working", "update my strategy", "coach me", "learn from my results", after recording outcomes, or on a weekly schedule.
---

# Coach — turn outcomes into strategy

This is the meta-loop. Every other skill acts and records; `coach` reads the record and
rewrites the playbook the others read.

## Inputs

- All `outcomes.md` event logs across the pipeline (+ each record's stage/status).
- The current strategy at `~/Career Copilot/strategy.md` (create it if absent).

## How to run (the loop)

1. **Gather outcomes.** Collect every recorded event: outreach sent → reply / no reply;
   application → response / interview / reject — noting which message pattern, fit tier, and
   referral path was used each time.
2. **Compute what works** (be honest about small samples — see `references/metrics.md`):
   - Reply rate by outreach pattern (warm vs intro vs cold) and opener type.
   - Conversion by fit tier (strong/possible/stretch) and referral vs cold-apply.
   - Which companies / role-types actually advance.
   - Where time is wasted (stages where roles stall or die).
3. **Update the strategy** at `~/Career Copilot/strategy.md` — a short, current playbook: what
   to do more of, what to stop, target adjustments, and the default outreach pattern. This is
   exactly what the SessionStart hook injects into every future session.
4. **Optionally update Cowork personal memory** with durable, cross-search lessons (e.g.,
   "warm intros convert ~3x cold for me").
5. **Report** a tight "what changed and why" so the user sees the learning.

## Principles

- **Evidence over vibes** — tie every recommendation to recorded outcomes; flag thin samples
  rather than over-fitting to two data points.
- **Small, current playbook** — `strategy.md` is a living one-pager, not an archive.
- **Close the loop** — the point is that the next `research` / `tailor-resume` / `outreach`
  run is measurably better because of what was learned.
