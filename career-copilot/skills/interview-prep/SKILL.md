---
name: interview-prep
description: Prepares the user for an interview — likely questions for the role and company, STAR stories built from their real experience, company-specific talking points, smart questions to ask, and a mock-interview drill. Reads the profile, the research brief, and the wiki. Use when the user says "prep me for my interview", "interview questions for [company/role]", "help me practice", "mock interview", or has an interview scheduled.
---

# Interview prep

Get the user genuinely ready — answers they can say out loud, grounded in their real experience.

## Inputs

- The role + company (the `research` brief / `jd_spec` if available).
- `profile.md` + master resume (their real background).
- Any saved interview-question bank for this company in the `wiki`.

## How to run (the loop)

1. **Pull context** — the role's decoded requirements, the user's background, and the company's
   saved question bank (reuse it; don't start cold).
2. **Build the question set** — behavioral (the role's core competencies), role/technical (from
   `jd_spec`), company-specific (mission, values, recent news), and the classics (why this
   company/role, a real weakness, questions to ask them). See `references/star-and-questions.md`.
3. **Draft STAR answers from real experience** — Situation · Task · Action · Result — each mapped
   to a role must-have. Truthful only; where the user lacks a strong story, say so and offer the
   closest true one rather than inventing.
4. **Company-specific prep** — what they care about, the likely panel, and 3–5 sharp questions for
   the user to ask.
5. **Offer a mock** — ask questions one at a time, give feedback on content *and* delivery, iterate.
6. **Persist** — save the prep pack to the role's pipeline folder and add any new questions to the
   company's `wiki` question bank, so the next interview is easier.

## Principles

- **Truthful STAR** — real experience only; never fabricate a story.
- **Tie every answer to a requirement** — relevance over polish.
- **Say-out-loud** — concise, natural answers, not essays.
- **Compound** — log questions to the `wiki` so prep gets faster over time.
