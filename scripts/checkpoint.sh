#!/usr/bin/env bash
set -euo pipefail

MSG="${1:-manual checkpoint}"

git add -A

if git diff --cached --quiet; then
  echo "No changes to checkpoint."
else
  git commit -m "checkpoint: ${MSG}"
fi

git status --short
git log --oneline -5 || true
