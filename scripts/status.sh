#!/usr/bin/env bash
set -euo pipefail

echo "== Project Status =="
echo "Phase: $(python - <<'PY'
import json
print(json.load(open('PROJECT_PROGRESS.json')).get('phase', 'unknown'))
PY
)"
echo "Required depth: 4"
echo "Max depth: 4"
echo "Game implementation started: $(python - <<'PY'
import json
print(str(json.load(open('PROJECT_PROGRESS.json')).get('gameImplementationStarted', False)).lower())
PY
)"
echo
echo "== Git Status =="
git status --short
echo
echo "== Recent Commits =="
git log --oneline -5 || true
echo
echo "== Key Pending Items =="
printf '%s\n' \
  "TODO: Run full Spec Kit for game-concept-and-win-condition" \
  "TODO: Continue win-condition-clarity through claim-progress-display depth-3 and depth-4" \
  "TODO: Complete full Spec Kit for every node through depth 4" \
  "BLOCKED: Game implementation until leaf Spec Kit tasks exist"
