---
name: tailor-resume
description: Rewrites the user's resume to maximize fit with a specific job description — truthfully reordering and relabeling real experience and aligning ATS keywords, never fabricating. Produces an ATS-safe Word document plus a transparent fit report. Use when the user says "tailor my resume", "fit my resume to this JD", "optimize my resume for this role", "make my resume match this job", or provides a job description together with a resume.
---

# Tailor a resume to a job description

Produce the strongest **truthful** version of the user's resume for one specific role, in an
ATS-safe format, plus a fit report that makes every change auditable.

## Inputs

- **Master resume** — the user's source-of-truth resume (uploaded file or saved master).
  On first use, register the uploaded resume as the master (see *Master of record*).
- **Target** — a JD (pasted or link) or a role already in the pipeline store. If `research`
  has produced a `jd_spec`/brief for this role, reuse it; otherwise decode the JD now using
  the same method as the research skill's `jd-decoding` reference.

## Master of record

Treat the master resume as **immutable**. Save it once at `profile/master-resume.<ext>` and
never overwrite it. Every tailored output is a **copy** — this protects the source and lets
you re-tailor cleanly for each role.

## How to run (the loop)

1. **Get the `jd_spec`** — reuse from the pipeline store if present, else decode the JD.
2. **Parse the master resume** into sections: headline/summary, experience (each role →
   bullets), skills, education, extras.
3. **Build the fit matrix** — for each must-have and keyword in `jd_spec`, find truthful
   evidence and mark it `covered` / `reframe-able` / `genuine gap`. See
   `references/tailoring-method.md`.
4. **Rewrite — truthfully** (full rules in `references/tailoring-method.md`):
   - Reorder so the most relevant roles and bullets rise to the top.
   - Relabel real work in the JD's vocabulary where it is genuinely the same thing.
   - Weave exact JD skill terms that are truly the user's, for ATS matching.
   - Strengthen quantification; rewrite the summary/headline to mirror the role.
   - Never invent titles, employers, dates, degrees, or skills. Genuine gaps stay gaps.
5. **Render ATS-safe** — output a single-column Word doc via the `docx` skill, following
   `references/ats-and-format.md`. Keep a plain-text mirror too.
6. **Write the fit report** — coverage before/after, keywords added, what was reordered or
   relabeled (so truthfulness is verifiable at a glance), and remaining genuine gaps with
   honest framing options.
7. **Persist** — save the tailored resume + fit report to the pipeline store under
   `pipeline/<company-slug>/<role-slug>/`. Record which version exists so the self-learning
   `coach` can later tie it to a callback.

## Principles

- **Truth is non-negotiable.** Reorder, relabel, emphasize — never fabricate. If a
  requirement isn't met, say so; don't paper over it.
- **The master is sacred.** Tailor copies, never the source.
- **Show your work.** The fit report must make every change auditable in seconds.
