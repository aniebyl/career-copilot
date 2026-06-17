---
name: outreach
description: Drafts a short, personal outreach message for a referral path or contact — a warm referral ask, a cold-but-relevant note, or an intro request — in the user's voice, staged as a Gmail draft (never sent) or as LinkedIn-ready text. Use when the user says "draft outreach to [person]", "write a referral ask", "message [name] at [company]", or after the refer skill maps a path.
---

# Draft outreach

Turn a referral path into a message the user will actually be glad to send — specific, short,
respectful, and **staged as a draft**, never sent.

## Inputs

- A referral path or contact. If `refer` ran, read its `referral-paths.md` from the pipeline
  store (the person, the true relationship hook, the ask, the channel).
- The user's voice profile (`profile/voice.md`) if present.

## How to run (the loop)

1. **Pull the path** — who, the true hook, the precise ask (intro / direct referral / 15-min
   info chat), and the channel.
2. **Pick the channel** — email → Gmail draft; LinkedIn → message text to paste via the
   browser.
3. **Draft the message** in the user's voice — see `references/message-patterns.md`. Pattern:
   hook → why them → one small, precise ask → easy out. Under ~120 words.
4. **Stage it** — create a **Gmail draft** (never send) or output the LinkedIn text. Note the
   suggested send time.
5. **Persist** and mark the path status `outreach drafted`.

## Principles

- **Stealth-aware.** If `profile.md` sets `stealth: true`, only draft to internal/trusted contacts — nothing that signals the search to the user's external network.
- **Draft, never send.** Personalized, never a blast.
- **One small ask.** Make it trivially easy to say yes.
- **Truthful framing** — never overstate the relationship.
- **Respect etiquette** — no guilt-tripping, no double-asking before a reply.
