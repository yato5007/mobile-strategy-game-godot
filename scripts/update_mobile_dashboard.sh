#!/usr/bin/env bash
set -euo pipefail

python - <<'PY'
import html
import json
import re
import subprocess
from pathlib import Path

ROOT = Path('.')
DOCS = ROOT / 'docs'
DOCS.mkdir(exist_ok=True)

def read_text(path, default=''):
    p = ROOT / path
    return p.read_text(encoding='utf-8') if p.exists() else default

def read_json(path):
    try:
        return json.loads(read_text(path, '{}'))
    except json.JSONDecodeError:
        return {}

def md_table(path):
    rows = []
    for line in read_text(path).splitlines():
        if not line.startswith('|') or '---' in line:
            continue
        cols = [c.strip().strip('`') for c in line.strip('|').split('|')]
        if cols and cols[0] not in {'Item', 'Area'}:
            rows.append(cols)
    return rows

def last_heading(path):
    headings = [line.strip('# ').strip() for line in read_text(path).splitlines() if line.startswith('## ')]
    return headings[-1] if headings else ''

def git_last_checkpoint():
    try:
        return subprocess.check_output(['git', 'log', '--oneline', '-1'], text=True).strip()
    except Exception:
        return 'No git checkpoint available'

def badge_class(status):
    s = status.upper()
    if any(x in s for x in ['BLOCKED', 'FAIL', 'ERROR']):
        return 'bad'
    if any(x in s for x in ['TODO', 'IN_PROGRESS', 'PENDING']):
        return 'warn'
    if any(x in s for x in ['DONE', 'PASS', 'ROOT_LINKED', 'D1_LINKED', 'D2_LINKED', 'D3_LINKED', 'D4_LINKED']):
        return 'good'
    return 'neutral'

progress = read_json('PROJECT_PROGRESS.json')
project = progress.get('project', 'mobile-strategy-game-godot')
percent = int(progress.get('overallPercent', 0) or 0)
phase = progress.get('phase', 'unknown')
next_step = progress.get('nextStep', 'Not recorded')
blocked = progress.get('blocked', []) or []

tree_rows = md_table('SPEC_TREE_STATUS.md')
progress_rows = md_table('PROGRESS_DASHBOARD.md')
wave = read_text('WAVE_STATUS.md', '').strip()
wave_summary = last_heading('WAVE_STATUS.md') or ('No active wave file' if not wave else 'Wave status available')
gatekeeper = last_heading('GATEKEEPER_REVIEW.md') or 'No report-gatekeeper decision recorded yet'
last_decision = last_heading('DECISIONS.md') or 'No major decision recorded yet'
checkpoint = git_last_checkpoint()

blocked_lines = []
in_blockers = False
for line in read_text('SPEC_TREE_STATUS.md').splitlines():
    if line.strip().lower().startswith('## current blockers'):
        in_blockers = True
        continue
    if in_blockers and line.startswith('## '):
        break
    if in_blockers and line.strip().startswith('-'):
        blocked_lines.append(line.strip('- ').strip())
blocked_lines.extend(str(x) for x in blocked)
if not blocked_lines:
    blocked_lines = ['No BLOCKED items recorded.']

needs_user = any(re.search(r'credential|account|apple|legal|financial|external|user', b, re.I) for b in blocked_lines)

branch_cards = []
for cols in tree_rows[:40]:
    if len(cols) >= 4:
        item, depth, status, notes = cols[:4]
        branch_cards.append((item, depth, status, notes, badge_class(status)))

progress_cards = []
for cols in progress_rows[:12]:
    if len(cols) >= 4:
        progress_cards.append(cols[:4])

def esc(x): return html.escape(str(x))

html_doc = f'''<!doctype html>
<html lang="en">
<head>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <title>Mobile Progress Dashboard</title>
  <style>
    :root {{ --bg:#0f172a; --card:#111827; --text:#f8fafc; --muted:#cbd5e1; --good:#22c55e; --warn:#facc15; --bad:#ef4444; --neutral:#60a5fa; }}
    * {{ box-sizing:border-box; }}
    body {{ margin:0; font-family:system-ui,-apple-system,Segoe UI,sans-serif; background:linear-gradient(180deg,#0f172a,#1e293b); color:var(--text); }}
    main {{ width:min(760px,100%); margin:0 auto; padding:18px; }}
    .hero {{ padding:22px; border-radius:24px; background:#020617; box-shadow:0 12px 40px #0008; }}
    h1 {{ margin:0 0 8px; font-size:1.35rem; }}
    h2 {{ margin:22px 0 10px; font-size:1.05rem; }}
    .percent {{ font-size:4rem; line-height:1; font-weight:900; margin:12px 0; color:var(--good); }}
    .bar {{ height:14px; background:#334155; border-radius:999px; overflow:hidden; }}
    .bar > div {{ height:100%; width:{max(0,min(100,percent))}%; background:var(--good); }}
    .grid {{ display:grid; gap:12px; }}
    .card {{ background:rgba(17,24,39,.92); border:1px solid #334155; padding:14px; border-radius:18px; }}
    .muted {{ color:var(--muted); }}
    .badge {{ display:inline-block; padding:4px 9px; border-radius:999px; font-size:.78rem; font-weight:800; color:#020617; }}
    .good {{ background:var(--good); }} .warn {{ background:var(--warn); }} .bad {{ background:var(--bad); color:white; }} .neutral {{ background:var(--neutral); }}
    .row {{ display:flex; justify-content:space-between; gap:10px; align-items:flex-start; }}
    ul {{ padding-left:20px; }}
    footer {{ color:var(--muted); text-align:center; padding:28px 0 10px; font-size:.82rem; }}
  </style>
</head>
<body>
<main>
  <section class="hero">
    <h1>{esc(project)}</h1>
    <div class="muted">Mobile Progress Dashboard</div>
    <div class="percent">{percent}%</div>
    <div class="bar"><div></div></div>
    <p><strong>Current phase:</strong> {esc(phase)}</p>
    <p><strong>Current wave:</strong> {esc(wave_summary)}</p>
    <p><strong>User intervention needed:</strong> <span class="badge {'bad' if needs_user else 'good'}">{'YES' if needs_user else 'NO'}</span></p>
  </section>

  <h2>Next Step</h2>
  <div class="card">{esc(next_step)}</div>

  <h2>Latest Control Signals</h2>
  <div class="grid">
    <div class="card"><strong>Last report-gatekeeper decision</strong><br><span class="muted">{esc(gatekeeper)}</span></div>
    <div class="card"><strong>Last major decision</strong><br><span class="muted">{esc(last_decision)}</span></div>
    <div class="card"><strong>Last checkpoint</strong><br><span class="muted">{esc(checkpoint)}</span></div>
  </div>

  <h2>Branches and Status</h2>
  <div class="grid">
'''
for item, depth, status, notes, cls in branch_cards:
    html_doc += f'    <div class="card"><div class="row"><strong>{esc(item)}</strong><span class="badge {cls}">{esc(status)}</span></div><div class="muted">Depth {esc(depth)} · {esc(notes)}</div></div>\n'
html_doc += '  </div>\n\n  <h2>Progress Areas</h2>\n  <div class="grid">\n'
for area, weight, status, notes in progress_cards:
    html_doc += f'    <div class="card"><div class="row"><strong>{esc(area)}</strong><span class="badge {badge_class(status)}">{esc(status)}</span></div><div class="muted">Weight {esc(weight)} · {esc(notes)}</div></div>\n'
html_doc += '  </div>\n\n  <h2>Blocked / Problems</h2>\n  <div class="card"><ul>\n'
for b in blocked_lines:
    cls = 'bad' if 'blocked' in b.lower() else 'warn'
    html_doc += f'    <li><span class="badge {cls}">{esc("BLOCKED" if "blocked" in b.lower() else "INFO")}</span> {esc(b)}</li>\n'
html_doc += f'''  </ul></div>

  <footer>Generated by <code>scripts/update_mobile_dashboard.sh</code>. Static HTML only.</footer>
</main>
</body>
</html>
'''

(DOCS / 'index.html').write_text(html_doc, encoding='utf-8')
print('Updated docs/index.html')
PY
