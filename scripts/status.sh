#!/usr/bin/env bash
set -euo pipefail

echo "== Project Status =="
echo "Phase: bootstrap / pre-root-Spec-Kit"
echo "Required depth: 4"
echo "Max depth: 4"
echo "Game implementation started: false"
echo
echo "== Git Status =="
git status --short
echo
echo "== Recent Commits =="
git log --oneline -5 || true
echo
echo "== Key Pending Items =="
printf '%s\n' \
  "TODO: Run root Spec Kit after bootstrap checkpoint" \
  "TODO: Derive meaningful depth-1 branches via Spec Kit" \
  "TODO: Complete full Spec Kit for every node through depth 4" \
  "BLOCKED: Game implementation until Spec Kit tasks exist"
