---
name: apply
description: Assembles and drafts a complete, tailored job application — a specific cover note plus the tailored resume and any portal answers — and stages it as a Gmail draft (never auto-sent) or a paste-ready bundle for an ATS portal. Use when the user says "apply to [role]", "draft my application for [company]", "write a cover letter for this job", or after research and resume tailoring are done.
---

# Draft a tailored application

Converge everything into one application package and stage it as a **draft** for the user to
review and send. Never send anything automatically.

## Inputs

- A target role. If `research` and `tailor-resume` already ran, read their outputs from the
  pipeline store (`brief.md`, `jd_spec`, the tailored resume). If missing, run them first.
- The user's voice profile (`profile/voice.md`) if present; otherwise infer tone from the
  resume and confirm once.

## How to run (the loop)

1. **Gather** the brief, `jd_spec`, tailored resume, and any referral hook (`refer` output)
   from the pipeline store.
2. **Pick the channel.** Email application → prepare a Gmail draft. ATS/portal → prepare a
   paste-ready bundle (cover note + answers) and keep the portal link.
3. **Draft the cover note** in the user's voice — see `references/cover-note.md`. Short,
   specific, mirrors the JD's top themes, names a real hook or referral if one exists.
4. **Assemble the package**: tailored resume (.docx), cover note, and answers to common portal
   questions (why this company, why you, comp expectations) when relevant.
5. **Stage it** — create a **Gmail draft** (recipient if known, subject, body, resume
   attached) using the email connector's *draft* function. Never call a send function. For
   portals, output the paste-ready bundle.
6. **Persist** to the pipeline store and mark the role status `drafted`.

## Principles

- **Draft, never send.** The user reviews and sends — that boundary is non-negotiable.
- **Specific over generic.** A note that could be sent to any company is a failure.
- **Truthful.** Every claim matches the resume and the user's real experience.
- **In the user's voice**, not a generic "cover letter" register.
