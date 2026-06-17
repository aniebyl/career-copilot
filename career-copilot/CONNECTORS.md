# Connectors

Career Copilot rides on connectors you authorize in Cowork — it doesn't bundle its own. To stay
portable (so it can be shared or published), skills refer to connector *categories* rather than
specific products. A `~~category` placeholder means "whatever tool you've connected in that
category."

## How tool references work

A skill that says "enrich the contact with `~~people-data`" uses whatever people-data tool you
have — Apollo, ZoomInfo, Clay — without changing the skill.

## Connectors for this plugin

| Category | Placeholder | Options | Used by |
| --- | --- | --- | --- |
| People data / enrichment | `~~people-data` | Apollo, ZoomInfo, Clay | `refer`, referral-mapper |
| Professional network | `~~network` | LinkedIn (via Claude-in-Chrome) | `refer`, `research` |
| Job boards / ATS | `~~job-sources` | Greenhouse / Lever / Ashby APIs, careers pages, web | `scout`, job-scout |
| Email | `~~email` | Gmail, Outlook | `outreach`, `apply`, `follow-up`, `inbox-sync` |
| Calendar | `~~calendar` | Google Calendar | scheduling, `follow-up`, `inbox-sync` |
| Comp data | `~~comp-data` | Levels.fyi, Glassdoor, BLS | `negotiate`, `fit-score` |
| Browser | `~~browser` | Claude-in-Chrome | `apply-prefill`, `refer`, `research` |
| Web research | built-in | web search + fetch | `research`, `scout` |

## Your current setup

Apollo + ZoomInfo (people), LinkedIn via browser, Gmail (email), Google Calendar. Skills can name
these concretely or use the placeholders above for a clean, shareable release.
