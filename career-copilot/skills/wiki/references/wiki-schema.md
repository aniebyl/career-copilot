# Wiki schema

Location: `~/Career Copilot/wiki/`

```
wiki/
├── index.md                     # one row per entry (company/contact, updated)
├── companies/<company-slug>.md
└── contacts/<person-slug>.md
```

## Company entry

```yaml
---
company:
domain:
updated:
sources: [n]
---
```
- **Snapshot** — what they do, stage, size, recent news (cited).
- **People** — likely hiring managers, leaders, and the user's known contacts there.
- **Interview question bank** — `Q — (round, date)`, accumulated across interviews.
- **Notes / lessons** — comp data points, process quirks, what worked.

## Contact entry

```yaml
---
name:
company:
title:
relationship:     # 1st-degree (strong/weak) | 2nd-degree via <mutual> | cold
channels:         # {email, linkedin}
stealth_safe:     # true = safe to reveal the job search to this person
---
```
- **History** — dated log of interactions (intro asked, replied, intro made, met).

`stealth_safe` lets `refer`/`outreach` honor the profile's stealth flag automatically — only
route through contacts marked safe.
