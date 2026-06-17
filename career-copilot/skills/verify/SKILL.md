---
name: verify
description: A truthfulness pass on a tailored resume, cover note, application answer, or any claim — checks every statement against the user's master resume and profile, flags anything unsupported or inflated, and proposes a truthful fix. Use when the user says "verify this", "check my resume for accuracy", "is this truthful", "fact-check my application", or before submitting anything.
---

# Verify — truthfulness pass

Catch anything that drifted from the truth before it goes out. Ground truth = the user's master
resume + `profile.md`.

## Inputs

- The document or claims to check (resume, cover note, "why us" answer, outreach).
- The master resume + `profile.md` as ground truth.

## How to run (the loop)

1. **Extract every factual claim** — titles, employers, dates, metrics, skills, credentials,
   scope, seniority.
2. **Classify each** against ground truth: `supported` · `truthfully reframed` · `unsupported` ·
   `inflated`.
3. **Flag** every `unsupported` / `inflated` claim with the specific problem and a **truthful
   rewrite** (or a recommendation to cut it).
4. **Verdict** — `PASS`, or a numbered list of fixes. **Never approve** invented credentials
   (CPA, degrees, clearances), fabricated metrics, or employers/dates that don't match the master.

## Principles

- **Reframing real experience is fine; inventing isn't.** Reordering, relabeling in the role's
  vocabulary, emphasizing — all OK. New facts — not OK.
- **Be specific** — quote the claim and the fix, not a vague "looks off."
- **Extra scrutiny on high-stakes claims** — credentials and numbers get checked hardest.
