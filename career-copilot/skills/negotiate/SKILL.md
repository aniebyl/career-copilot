---
name: negotiate
description: Helps the user evaluate and negotiate a job offer — benchmarks compensation against market data, assesses the full package, and drafts a calm, specific negotiation script. Use when the user says "I got an offer", "help me negotiate", "is this comp fair", "evaluate this offer", or "draft a counter".
---

# Negotiate — evaluate and counter an offer

Help the user make a confident, well-supported decision — without making it for them.

## Inputs

- The offer (base, bonus, equity, sign-on, benefits, level, location).
- `profile.md` — comp target and must-haves.

## How to run (the loop)

1. **Benchmark.** Estimate the market range for the role / level / location using the sources in
   `references/comp-data.md`. Give a range + median with sources; flag uncertainty.
2. **Assess the full package** — base + bonus + equity (state your valuation/vesting assumptions)
   + benefits — against the user's `comp_target` and must-haves.
3. **Find the leverage + gaps** — where the offer trails market, what's negotiable (base, sign-on,
   equity, start date, level), and the strongest *truthful* justification.
4. **Draft the counter** — a warm, specific script anchored on market data and the value the user
   brings, with a clear ask and a graceful fallback. Never adversarial.
5. **Lay out the tradeoffs** for the user's decision.

## Principles

- **Data-backed** — sourced ranges, not vibes; flag low-confidence numbers.
- **Full package**, not just base.
- **Truthful leverage** — real competing offers / market only; never bluff a fake offer.
- **The decision is the user's** — present options; don't tell them to accept or reject. This is
  not financial advice.
