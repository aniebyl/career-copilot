---
name: inbox-sync
description: Scans the user's email for responses to their job search — interview invites, recruiter replies, rejections, offers — matches them to roles in the pipeline, and advances each role's stage (with the user's confirmation). Use when the user says "check my inbox", "any responses?", "update my pipeline from email", or on a daily schedule.
---

# Inbox sync — keep the pipeline self-updating

Turn the inbox into automatic pipeline updates so the user never manually tracks responses.

## Inputs

- The email connector (Gmail) and the pipeline store.

## How to run (the loop)

1. **Scan** for job-search mail since the last sync — replies from contacts, recruiter/ATS
   emails, interview invites, rejections, offers — and match sender / subject / company against
   pipeline records.
2. **Classify** each: reply · interview-invite · rejection · offer · new recruiter outreach.
3. **Propose pipeline updates** — advance the stage (applied → interviewing on an invite; →
   closed/rejected on a rejection; → offer on an offer), append an `outcomes.md` event, and set
   the next action (schedule the interview, send a thank-you, evaluate the offer).
4. **Confirm before changing** the pipeline. Hand interview invites to `interview-prep` + Calendar,
   and offers to `negotiate`.

## Principles

- **Read-only on email** — never send, delete, or archive without explicit consent.
- **Confirm pipeline changes** — propose, don't silently mutate.
- **Log everything** to `outcomes.md` so `coach` learns conversion.
- **Privacy** — touch only job-search mail.
