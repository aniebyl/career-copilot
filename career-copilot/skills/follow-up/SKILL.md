---
name: follow-up
description: Scans the pipeline for open threads — sent applications, outreach awaiting a reply, post-interview thank-yous, scheduled check-ins — and drafts time-appropriate, polite follow-ups as Gmail drafts, spacing them with Calendar so the user never over-nudges. Use when the user says "what needs a follow-up", "draft my follow-ups", "nudge my open threads", or on a recurring cadence.
---

# Draft follow-ups

Keep open threads warm without being a pest. Everything is a **draft**; the user sends.

## Inputs

- The pipeline store (open items + their last-touch dates and statuses).
- Calendar, to time and space nudges.

## How to run (the loop)

1. **Scan** the pipeline for items needing attention:
   - Outreach with no reply after ~5–7 days → one gentle nudge.
   - Application sent, no response after ~7–10 days → a brief check-in (only if a contact
     exists).
   - Post-interview → a thank-you within ~24 hours.
   - Any item with a scheduled follow-up date that's due.
2. **Respect caps.** At most one nudge per thread per cycle; stop after a second unanswered
   nudge. Never follow up before the window.
3. **Draft** each follow-up — short, warm, and giving the recipient a *reason* to reply (a new
   detail, not just "checking in") — as a **Gmail draft**, never sent.
4. **Space with Calendar** — set the next check date so threads don't collide or overload.
5. **Persist** updated statuses and next-touch dates.

## Principles

- **Draft, never send.** **Never over-nudge** — restraint protects the relationship.
- Every follow-up gives a *reason* to reply, not just guilt.
