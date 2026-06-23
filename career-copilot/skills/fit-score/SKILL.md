---
name: fit-score
description: Scores and ranks roles against the user's profile — must-haves, targets, seniority, comp, location, and experience — so the user focuses on the best-fit openings instead of applying everywhere. Use when the user says "score these roles", "which should I apply to", "rank my pipeline", "is this worth applying to", or right after scout adds new roles.
---

# Fit score

Turn a pile of openings into a ranked shortlist so the user spends effort where it pays off.

## Inputs

- Roles to score — from `scout` / the pipeline, or pasted.
- `profile.md` — targets, must-haves, avoid, seniority, comp, location; plus the background for
  experience fit.

## How to run (the loop)

1. **Load the profile.** Note the **hard must-haves** (e.g., needs visa sponsorship, remote-only,
   minimum base) — these are gates, not weights.
2. **Score each role — fast pass by default** (see *Speed* below): apply the must-have gates, then
   score **every** axis in `references/scoring-rubric.md` from what you already know (the profile
   and the posting), without per-role look-ups. Save the expensive verification for the short list.
3. **Gate honestly.** If a hard must-have isn't met, cap the score low and say why — never rank a
   non-starter highly.
4. **Output** a ranked table: role · score (0–100) · tier (A/B/C) · one-line why · biggest gap.
   Write scores back to the pipeline records.
5. **Recommend** the top few to pursue (and what to skip), so the user focuses.

## Speed — fast pass by default, deep pass on demand

Scoring a pile should be fast. The slow part isn't weighing the axes — it's per-role *research*
(benchmarking comp against the market, digging into experience fit, re-reading the rubric for every
role). So default to a fast pass and spend research only where it changes a decision.

- **Fast pass (default):** gate on must-haves, then score **every** rubric axis from what you
  already have — the profile and the role posting — in one pass, with no per-role look-ups, reading
  the rubric once rather than per role. This still yields a real 0–100 score and A/B/C tier with a
  full axis breakdown for every role, so the ranking and the top-few pick stand on their own.
- **Deep pass (on demand):** for the short list you're about to recommend (the top tier) — plus any
  role the user asks about — do the verification the fast pass skipped: normalize comp against the
  market, read experience/skills fit closely, confirm the hiring signal. Refine the score and the
  gap. Don't deep-research roles already gated out.
- **Don't** research every role up front or re-read the rubric per role: gate, score all axes from
  what you know, then deepen only the short list.

## Principles

- **Must-haves are gates** — fail one, fail the role.
- **Explainable** — always show the axis breakdown; no black-box scores.
- **Honest** — don't inflate a stretch into an A; a clear "skip this" is valuable.
- **Round** every score to a whole number.
