# profile.md schema

Location: `~/Career Copilot/profile.md`. Every Career Copilot skill reads this file.

```yaml
---
name:
contact:
  email:
  phone:
  location:
  linkedin:
  website:
work_authorization:      # citizen | authorized | needs-sponsorship (+ country)
targets:
  roles:                 # desired titles / role-types — e.g. "product manager", "RN", "staff engineer"
  industries:            # e.g. healthcare, fintech, public sector
  seniority:             # IC | senior | lead | manager | director | exec | founder
  locations:             # cities + remote / hybrid / onsite preference
  comp_target:           # range + currency
  must_haves:            # dealbreakers — remote-only, visa sponsorship, $X base, …
  avoid:                 # industries / role-types to skip
voice: profile/voice.md  # tone for drafts (or inline notes)
stealth: false           # true = never expose the search to the user's external network
master_resume:           # path to the immutable master resume
updated:                 # date
---

# Background summary
A concise narrative of the user's real experience, drawn from the resume — the raw material
research / tailor-resume / interview-prep reuse. No fabrication.
```

## How skills consume it

- **`scout` / `job-scout`** — target = `targets.roles` + `industries` + `locations`, filtered by
  `must_haves` and `avoid`.
- **`tailor-resume` / `apply` / `interview-prep`** — draw on the background summary + master resume.
- **`refer` / `outreach`** — honor `stealth`: when true, route only through internal/trusted
  contacts and never reveal the search to the user's external network.
- **`fit-score`** — rank roles against `targets` + `must_haves`.
- **`coach`** — learns within the bounds of the profile's targets.
