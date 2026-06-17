# Career Copilot

A **self-learning, profile-driven job-search agent** for any role, field, or level. It runs the
whole pipeline with you — finds and scores roles, researches companies, tailors your resume to
each job, maps warm referral paths, drafts applications and outreach, preps interviews, helps you
negotiate offers, and gets smarter from your outcomes. Everything is truthful, and nothing is
sent without you: it drafts, you send.

Built as a Claude Cowork / Claude Code plugin. **v0.2.0.**

## The mental model: an agentic loop

Every capability is one agentic loop — the LLM reasons toward a goal, calls tools (connectors,
web, browser, files), pulls in skills (expert instruction modules), observes, and loops until
done. A meta-loop writes every outcome to memory, and that memory reshapes the next loop — the
self-learning flywheel. As of v0.2, every skill reads one **profile** (`~/Career Copilot/
profile.md`), so the whole plugin adapts to *your* background — not a hardcoded domain.

## Skills

| Skill | Job |
| --- | --- |
| `setup` | One-time onboarding → writes your `profile.md` (the source of truth) |
| `scout` | Find new roles matching your profile across target companies + the market |
| `fit-score` | Score & rank roles vs your profile so you focus |
| `research` | Company + role intel brief (team, signals, decoded role, fit angle) |
| `tailor-resume` | Rewrite your resume to fit a JD — truthful reframing + ATS keywords |
| `verify` | Truthfulness pass on any resume / claim before it goes out |
| `refer` | Map warm referral paths and the best person to ask (stealth-aware) |
| `outreach` | Draft referral asks / cold notes in your voice (stealth-aware) |
| `apply` | Draft a tailored application package |
| `apply-prefill` | Pre-fill the portal form in the browser (never submits) |
| `follow-up` | Time-aware nudges on open threads |
| `inbox-sync` | Read email → auto-advance the pipeline (interviews, replies, offers) |
| `interview-prep` | Questions, STAR stories, company prep, mock interviews |
| `negotiate` | Benchmark comp, evaluate the offer, draft the counter |
| `status` | Pipeline snapshot |
| `pipeline` | Owns the shared pipeline store (source of truth) |
| `wiki` | Career knowledge base — company briefs, contacts, question banks (the moat) |
| `coach` | Reads outcomes and updates your strategy (self-learning) |

## Agents

- `job-scout` — fans out across companies + job boards to find openings (profile-driven)
- `referral-mapper` — fans out to find warm connection paths into targets

## Connectors

Documented in `CONNECTORS.md` (category placeholders): people data, network, job boards/ATS,
email, calendar, comp data, browser, web research. You authorize what you want.

## Cowork features it rides on

- **Memory** — the pipeline store + the `wiki` knowledge base + learned strategy
- **Artifacts** — a live pipeline dashboard (live Calendar/Gmail widgets per `dashboard/live-widgets.md`)
- **Scheduled tasks** — a daily autonomous scout
- **Hook** — a `SessionStart` hook that injects your learned strategy each session

## Status

- **v0.1** — research, tailor-resume, refer, apply, outreach, follow-up, pipeline, scout, status,
  coach; 2 agents; hook; dashboard; packaged.
- **v0.2** — profile-driven core (`setup`); `interview-prep`, `fit-score`, `verify`, `wiki`,
  `inbox-sync`, `apply-prefill`, `negotiate`; stealth mode; outcomes schema; expanded connectors.

See `ROADMAP.md` for what's next.
