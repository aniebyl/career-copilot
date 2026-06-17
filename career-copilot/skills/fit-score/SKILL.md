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
2. **Score each role** on the weighted axes in `references/scoring-rubric.md`: must-haves met
   (gate), role/title match, seniority match, industry/domain match, location/remote, comp fit,
   and experience fit (if a brief/resume exists).
3. **Gate honestly.** If a hard must-have isn't met, cap the score low and say why — never rank a
   non-starter highly.
4. **Output** a ranked table: role · score (0–100) · tier (A/B/C) · one-line why · biggest gap.
   Write scores back to the pipeline records.
5. **Recommend** the top few to pursue (and what to skip), so the user focuses.

## Principles

- **Must-haves are gates** — fail one, fail the role.
- **Explainable** — always show the axis breakdown; no black-box scores.
- **Honest** — don't inflate a stretch into an A; a clear "skip this" is valuable.
- **Round** every score to a whole number.
