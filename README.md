# ololand-cowork

A Claude Code / Claude Cowork plugin marketplace by [ololand.ai](https://ololand.ai).

## career-copilot (v0.2.0)

A self-learning, profile-driven job-search agent — scouts and scores roles, researches companies,
tailors your resume to each JD (truthfully), maps warm referral paths, drafts applications and
outreach in your voice, preps interviews, helps you negotiate, and improves from your outcomes.
Nothing is sent without you: it drafts, you send.

## Install — local (development)

```
/plugin marketplace add /absolute/path/to/career-copilot-release
/plugin install career-copilot@ololand-cowork
```

Or pin it in a project's `.claude/settings.json`:

```json
{
  "extraKnownMarketplaces": {
    "ololand-cowork": { "source": { "type": "directory", "path": "/absolute/path/to/career-copilot-release" } }
  },
  "enabledPlugins": { "career-copilot@ololand-cowork": true }
}
```

## Install — from GitHub (after you push this repo public)

```
/plugin marketplace add aniebyl/career-copilot
/plugin install career-copilot@ololand-cowork
```

(The install target stays `career-copilot@ololand-cowork` regardless of the repo name — it comes
from the marketplace `name`, not the repo.)

## Structure

```
.claude-plugin/marketplace.json   # marketplace manifest (this repo)
career-copilot/                   # the plugin
  .claude-plugin/plugin.json      # plugin manifest
  skills/  agents/  hooks/        # capabilities
```

## Publish to platform.claude.com

1. Push this folder to a **public** GitHub repo.
2. (Optional) Validate locally: `claude plugin validate .`
3. Submit the repo URL at **platform.claude.com/plugins/submit**. Updates auto-mirror from the repo.

— Aleks, ololand.ai
