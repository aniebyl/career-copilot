# Job sources

Prefer clean, fetchable APIs over fragile scraping.

## ATS public job APIs (structured, reliable — use first)

Most companies post through an ATS with a public JSON board. Find the company's ATS slug (usually
on their careers page URL) and fetch:

- **Greenhouse** — `https://boards-api.greenhouse.io/v1/boards/<slug>/jobs` (and `/jobs/<id>`)
- **Lever** — `https://api.lever.co/v0/postings/<slug>?mode=json`
- **Ashby** — `https://api.ashbyhq.com/posting-api/job-board/<slug>`
- **SmartRecruiters / Workable** — similar public posting endpoints.

Fetch the JSON, then filter by the profile's roles / locations / seniority. These are the
highest-yield, lowest-fragility sources.

## Careers pages + web search (fallback)

For companies not on a known ATS, search the careers page and the open web
("<company> careers <role>") via web search/fetch, and verify freshness + link.

## Avoid

**LinkedIn / Indeed scraping** — anti-bot, ToS-risky, fragile. Instead, have the user set up
their own saved searches / alerts there and paste results, or rely on the ATS APIs above.

## How `scout` / `job-scout` use this

For each target company: try its ATS API first (structured), fall back to careers page + web
search. Always confirm the posting is current and capture the real link.
