---
name: setup
description: One-time onboarding that builds the user's career profile — target roles, industries, seniority, locations, work authorization, comp target, must-haves, voice, and confidentiality (stealth) preference — by importing an existing resume/LinkedIn and asking only what's missing. Writes profile.md, which every other Career Copilot skill reads. Use on first run, or when the user says "set up Career Copilot", "onboard me", "create/update my profile", or when profile.md doesn't exist.
---

# Set up the career profile

Build (or update) `~/Career Copilot/profile.md` — the single source of truth every other skill
reads, so the plugin adapts to *this* user's background and goals (any field, any level).

## How to run (the loop)

1. **Bootstrap from what exists.** If the user has a resume (or shares one, or a LinkedIn URL),
   read it first and pre-fill as much of the profile as possible. Register the resume as the
   immutable master (`profile/master-resume.*`). This makes onboarding ~2 minutes.
2. **Ask only the gaps.** Never re-ask what the resume already answered. Collect the missing
   fields from `references/profile-schema.md` — especially target roles/industries, seniority,
   locations + remote preference, work authorization, comp target, must-haves/dealbreakers, and
   the **stealth** preference (keep the search hidden from the user's network?).
3. **Capture voice.** Note the user's tone for drafts (or point to `profile/voice.md`); infer
   from the resume and confirm once.
4. **Write `profile.md`** per the schema, then confirm the summary back to the user.
5. **Done.** Tell the user which skills are ready (`scout`, `research`, `tailor-resume`, `refer`,
   `apply`, `interview-prep`, …) and suggest the first move.

## Principles

- **No assumptions about domain.** This plugin is for any field, role, and seniority — the
  profile defines the target; never hardcode an industry.
- **Truthful + private.** Pull facts only from the user's real materials; store locally; honor
  the stealth flag everywhere.
- **Light touch.** Import first, ask least — a profile the user finishes beats a perfect form
  they abandon.
