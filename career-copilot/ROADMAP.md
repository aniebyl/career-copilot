# Career Copilot — v2 Roadmap (prioritized)

Goal: evolve from a personal, AI/ML-specific tool into a **general-purpose career agent** with
deeper data, a compounding knowledge base, and real self-learning.

**Prioritization lens:** impact × effort, with a feasibility filter (prefer clean APIs over
fragile scraping). Bias: (1) the profile unlock, (2) close the funnel from *prep* to *offer*,
(3) build the compounding moat.

## v2 Core — makes it "anyone's tool" and closes the funnel (build in order)

1. **`setup` + profile core** — one-time cold-start writes `profile.md` (target roles,
   industries, seniority, locations, work auth, comp target, must-haves, voice, stealth flag).
   Bootstrap by importing the user's existing resume / LinkedIn (~2 min). Prerequisite for all.
2. **Genericize every skill to read the profile** — removes hardcoded "AI/ML leadership"; makes
   #1 real across the plugin.
3. **`interview-prep`** — likely questions, STAR stories from the profile, company-specific prep,
   mock runs. Biggest funnel gap; where candidates win or lose.
4. **`fit-score`** — rank scouted roles against the profile so the user focuses, not sprays.
   Cheap once the profile exists; the predictive pillar.
5. **Outcome-capture plumbing + leaner `coach`** — log what happens now so the learning has data
   later. Plumbing first; calibration after there's data.
6. **`verify` + stealth mode** — truthfulness pass on every claim; confidentiality flag. Both
   cheap, both high-trust.
7. **Lean `wiki` v1** — reusable company briefs, contact records, per-company interview-question
   bank. Begins the moat without boiling the ocean.

## v2 Stretch — high value, more plumbing

- **ATS job sources** — Greenhouse / Lever / Ashby public job APIs for real scouting.
- **Gmail inbox-parsing** — auto-detect replies/rejections/invites; advance the pipeline stage.
- **`apply` form-prefill** — repeatable Greenhouse/Lever/Ashby prefill (draft, never submit).
- **`negotiate` + comp data** — Levels.fyi / Glassdoor / BLS; benchmark and script offers.
- **Live dashboard widgets** — Calendar interviews + Gmail replies (needs the connector probe).

## Later / v3 — deferred

- Community / shared knowledge layer (network effects need a user base first).
- Cross-user aggregated learning + advanced calibration.
- i18n / non-US markets.

## Cut — don't build

- **LinkedIn / Indeed scraping** for scout — fragile, ToS-risky. Use ATS APIs + user searches.
- **A separate relationship CRM** — the pipeline store already is one; fold contacts in.

## Cross-cutting design principles

- **Profile-in, outcomes-out, everywhere** — every skill reads `profile.md` and writes results
  to the store. Generalization *and* learning become automatic, not bolted on.
- **Local-first + consent** — it touches the user's network and personal data; default to local
  storage and explicit consent. A trust requirement and a marketplace differentiator.

## The sharpened thesis

v2 wins by being **profile-driven** (anyone), **closing the funnel** (prep → offer, not just
resume tweaks), and **compounding** (private career knowledge + learned strategy). The moat is
the accumulated wiki and the learned strategy — not the resume edit. Same shape as OloLand: the
value is the institutional memory, not the single analysis.
