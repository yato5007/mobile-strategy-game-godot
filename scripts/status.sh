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
python - <<'PY'
import json
from pathlib import Path

def read_text(path):
    p = Path(path)
    return p.read_text(encoding='utf-8') if p.exists() else ''

def read_json(path):
    try:
        return json.loads(read_text(path) or '{}')
    except json.JSONDecodeError:
        return {}

progress = read_json('PROJECT_PROGRESS.json')
tree = read_text('SPEC_TREE_STATUS.md')

rows = []
for line in tree.splitlines():
    if not line.startswith('|') or '---' in line:
        continue
    cols = [c.strip().strip('`') for c in line.strip('|').split('|')]
    if len(cols) >= 4 and cols[0] not in {'Item', 'Area'}:
        rows.append(cols[:4])

pending = []
for item, depth, status, notes in rows:
    status_u = status.upper()
    if status_u in {'IN_PROGRESS', 'TODO', 'BLOCKED'}:
        pending.append((status_u, item, notes))

blocked = []
if str(progress.get('status', '')).upper() == 'BLOCKED':
    blocked.append('PROJECT_PROGRESS.json top-level status is BLOCKED')
for b in progress.get('blocked', []) or []:
    blocked.append(str(b))
for status, item, notes in pending:
    if status == 'BLOCKED':
        blocked.append(f'{item}: {notes}')

if blocked:
    for item in blocked[:10]:
        print(f'BLOCKED: {item}')
elif pending:
    for status, item, notes in pending[:10]:
        print(f'{status}: {item} — {notes}')
else:
    next_step = progress.get('nextStep') or 'No pending item recorded.'
    print(f'WORKING: {next_step}')
PY
