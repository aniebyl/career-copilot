#!/usr/bin/env bash
# Career Copilot — SessionStart hook.
# Injects the current learned strategy into the session so every skill this
# session reasons with the latest playbook. Safe no-op if nothing learned yet.
set -euo pipefail

STRATEGY="${HOME}/Career Copilot/strategy.md"

if [[ -f "$STRATEGY" ]]; then
  echo "## Career Copilot — active strategy (learned from your outcomes)"
  echo
  cat "$STRATEGY"
else
  echo "Career Copilot: no learned strategy yet. Run the coach skill after recording outcomes to build one."
fi
