---
name: refer
description: Finds the warm path into a target company and the best person to ask for a referral — using a people-data connector (Apollo/ZoomInfo) to find and enrich the right contacts, and LinkedIn (via the browser) to find connection paths from the user's network. Produces a ranked list of referral paths with warmth, rationale, and recommended channel. Use when the user says "who can refer me to [company]", "find a referral path", "who do I know at [company]", "map my way into [company]", or right after researching a role.
---

# Find the warm path into a company

Turn a target company into a ranked set of **referral paths** — the right person to ask and
the truest way to reach them. Drafting the message belongs to `outreach`; this skill finds
and ranks the paths.

## Connectors used

- **People data** — Apollo or ZoomInfo (see `CONNECTORS.md`). Don't reimplement enrichment;
  delegate to the installed connector skills (`apollo:prospect`, `apollo:enrich-lead`,
  `zoominfo:buying-committee`, `zoominfo:enrich-contact`).
- **Professional network** — LinkedIn, viewed through the **Claude-in-Chrome** browser tools
  (LinkedIn has no API/MCP).

## How to run (the loop)

1. **Load context.** If `research` saved a brief for this company/role, read it — it already
   names a likely hiring manager, AI/ML leaders, and possible referrers. Start there.
2. **Find who to be referred by.** Using the people-data connector, list the people who
   matter: the hiring manager, the team this role sits in, and 1–2 peers around them. Enrich
   each (title, seniority, email, LinkedIn).
3. **Find the warm path from the user's network.** With the browser on LinkedIn (user logged
   in), identify 1st-degree connections at the company and strong 2nd-degree paths (mutual
   connections), plus alumni / former-colleague overlaps. Use any connections export or CRM
   if provided.
4. **Rank the paths** by warmth × usefulness — see `references/path-ranking.md`.
5. **Assemble an ask packet** for each top path: who, the true relationship hook, what to ask
   for (intro to the HM / direct referral / 15-min info chat), best channel, and timing.
6. **Output** a ranked table + the top 1–3 recommended moves, then hand drafting to
   `outreach`.
7. **Persist** to `pipeline/<company-slug>/<role-slug>/referral-paths.md`.

## Principles

- **Stealth-aware** — if `profile.md` sets `stealth: true`, route only through internal/trusted contacts; never reveal the search to the user's external network or ask brokers who'd expose it.
- **Warm beats cold, always** — prefer a real relationship over a cold enrich.
- **Truthful relationship claims** — never overstate how well the user knows someone.
- **Responsible use** — stay within each connector's terms; the browser only views what the
  user can already see while logged in; no aggressive scraping. Quality of path over volume.
