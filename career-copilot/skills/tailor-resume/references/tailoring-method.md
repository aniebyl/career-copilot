# Tailoring method

## Fit matrix

For each item in `jd_spec.must_haves` and `jd_spec.keywords`, classify the resume's truthful
evidence:

| State | Meaning | Action |
| --- | --- | --- |
| `covered` | Resume already shows it clearly | Surface it higher; use the JD's exact term |
| `reframe-able` | Real experience, different words | Relabel truthfully to match the JD's term |
| `genuine gap` | Not in the user's background | Leave out; note in fit report; never fake |

Compute coverage = (covered + reframe-able) / total must-haves, before and after.

## Truthful reframing — the line

**Allowed:** reordering bullets/roles by relevance; relabeling the same work in the JD's
vocabulary (e.g., "built a model-eval harness" ↔ "LLM evaluation"); promoting a buried
achievement; tightening and quantifying; rewriting the summary to target the role; dropping
irrelevant content.

**Not allowed:** inventing or inflating titles, employers, dates, degrees, certifications,
or clearances; claiming tools or years the user doesn't have; implying scope that didn't
happen. When unsure, ask the user — never guess upward.

## Bullets

- Lead with impact + metric: "Cut inference cost 38% by …".
- Map each top bullet to a JD priority; cut bullets that map to nothing.
- Use the JD's exact skill nouns where truthful — ATS matches literal strings.
- Keep verbs strong and varied; one line each where possible.

## Summary / headline

Rewrite the top 2–3 lines to mirror the role's title and the top two `jd_spec.themes`, using
only true claims. This is the highest-leverage edit on the page.

## Genuine gaps

List them honestly in the fit report with options: (a) address in the cover note,
(b) note transferable adjacency, (c) accept the role is a stretch. Never resolve a gap by
inventing content.
