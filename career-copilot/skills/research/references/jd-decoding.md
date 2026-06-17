# Decoding a job description

Turn a JD into a structured spec. This spec is reused by `tailor-resume` to align the
resume, so be precise and use the JD's own wording for skills.

## Extract into this structure

```
jd_spec:
  title:            # exact title
  must_haves:       # hard requirements — years, credentials, named skills, "required"
  nice_to_haves:    # "preferred", "bonus", "nice to have"
  responsibilities: # what the person will actually do day to day
  keywords:         # exact skill/tool terms for ATS (use the JD's phrasing verbatim)
  seniority:        # IC vs lead vs exec; team size; scope; reports-to
  themes:           # what's emphasized or repeated → the team's real priorities
  red_flags:        # vague scope, title inflation, "wear many hats" overload, churn hints
```

## How to read it well

- **Weight repetition.** A skill or theme mentioned 2–3 times is a top priority, not a
  footnote — lead with it.
- **Separate must from nice.** "Required" / "must" / explicit year counts are gates.
  "Preferred" / "bonus" are tiebreakers.
- **Capture exact terms for ATS.** If they write "RAG pipelines," use "RAG pipelines," not
  "retrieval systems" — automated screens match literal phrasing. Only claim terms that are
  truthfully yours.
- **Map synonyms.** Note where the candidate's real experience uses different words than the
  JD, so `tailor-resume` can re-label truthfully (e.g., "LLM eval harness" ↔ "model
  evaluation").
- **Find the hidden ask.** The stated problem ("scaling inference cost," "0→1 product")
  usually matters more than the checklist. Surface it.

## Output

Return the filled `jd_spec` plus a 2–3 line read of "what they actually want" that a human
would nod at.
