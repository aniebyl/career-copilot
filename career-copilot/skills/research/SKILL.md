---
name: research
description: Researches a target company and a specific role, then produces a tailored intel brief — company snapshot, why-they're-hiring signals, a decoded role spec, key people (likely hiring manager, relevant leaders, possible referrers), a candidate fit angle, and smart questions. Use when the user says "research [company]", "brief me on [company] for [role]", "look into this role", "should I apply here", or pastes a job description to analyze.
---

# Research a company + role

Produce a decision-useful intel brief that later skills (`tailor-resume`, `apply`, `refer`)
reuse without re-researching. Read `~/Career Copilot/profile.md` first for the user's targets
and background.

## Inputs

- **Company** — name, domain, or URL.
- **Role** — title, posting link, or a pasted job description (JD).
- **Profile** — `profile.md` (targets + background) and the master resume, for the fit angle.

If company or role is genuinely ambiguous, ask once. Otherwise proceed.

## How to run (the loop)

1. **Gather facts** with web search/fetch, stopping once you can fill the brief: company (what
   they build, stage, funding, size, traction, news), hiring signals, the likely hiring manager
   and the leaders this role reports near (note possible referral paths for `refer`), and — if a
   JD is provided — decode it per `references/jd-decoding.md`.
2. **Go deep when needed.** For murky/large targets, delegate breadth to the `deep-research`
   skill or an `Explore` agent; keep only conclusions.
3. **Assess fit.** Map the decoded role requirements to the user's background and `profile.md`
   targets (from the resume / profile / memory). Strengths to lead with, gaps to address. If no
   resume/profile yet, mark fit "pending profile" and proceed.
4. **Write the brief** in the structure of `references/brief-template.md`. Lead with a 3-line
   TL;DR. Cite claims `[n]` with a Sources list; separate verified facts from inference.
5. **Persist.** Save to `pipeline/<company-slug>/<role-slug>/brief.md` and append a row to
   `pipeline/index.md`. Also write/refresh the reusable company brief in the `wiki`.

## Principles

- **Truth and sourcing first** — cite claims, flag uncertainty, never invent facts or quotes.
- **Decision-useful** — every section must change what the candidate does next.
- **Hand off, don't duplicate** — people-mapping is `refer`; resume rewriting is `tailor-resume`.
