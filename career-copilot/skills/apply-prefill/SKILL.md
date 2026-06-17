---
name: apply-prefill
description: Pre-fills an online job application form (Greenhouse, Lever, Ashby, Workday, etc.) in the browser from the user's profile, tailored resume, and drafted answers — then leaves it at the review step for the user to submit. Never submits. Use when the user says "fill in this application", "prefill the form", "help me apply on [portal]", or pastes an application URL.
---

# Apply — pre-fill the portal form

Take the manual pain out of portal applications: fill everything known, leave the rest, stop at
review. The user always submits.

## Inputs

- The application URL.
- `profile.md` (name, contact, work authorization, links), the tailored resume, and the drafted
  answers ("why us", cover note) from `apply`.

## How to run (browser, via Claude-in-Chrome)

1. Open the application page and read the form fields.
2. Fill what's known: name, email, phone, location, LinkedIn / website, work-authorization
   answers, the long-form answers, and attach the tailored resume where supported.
3. For fields that need the user's own input (start date, preferences, EEO / voluntary self-ID),
   **leave them for the user** and list what's outstanding.
4. **Stop at the review step.** Show the user what's filled and what's left.

## Guardrails (non-negotiable)

- Entering personal data into a form needs the user's go-ahead — **ask first**.
- **Never submit.** Never enter passwords or payment. Never complete EEO / voluntary self-ID on
  the user's behalf.
- Surface every field you couldn't fill — nothing is silently skipped.
- Honor `stealth` — don't expose the search anywhere beyond the application itself.
