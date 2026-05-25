#!/usr/bin/env bash
set -euo pipefail

python - <<'PY'
import html
import json
import re
import subprocess
from pathlib import Path
from datetime import datetime, timezone

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

# --- Live Progress Pulse: gather all data ---

# Timestamp for lastDashboardUpdate
dashboard_update_ts = datetime.now(timezone.utc)
now_ts = int(dashboard_update_ts.timestamp())

# Get last commit info
last_commit_ts = 0
last_commit_msg = "No commits"
try:
    result = subprocess.check_output(['git', 'log', '-1', '--format=%ct||%s'], text=True).strip()
    if result:
        parts = result.split('||', 1)
        last_commit_ts = int(parts[0])
        last_commit_msg = parts[1] if len(parts) > 1 else "No message"
except Exception:
    pass

# Count total checkpoints (commits with "checkpoint:" in message)
checkpoint_count = 0
total_commit_count = 0
try:
    total_commit_count = int(subprocess.check_output(['git', 'rev-list', '--count', 'HEAD'], text=True).strip())
    checkpoint_count = int(subprocess.check_output(['bash', '-c', "git log --oneline --grep='checkpoint:' | wc -l"], text=True).strip())
except Exception:
    pass

# Get last 5 commits for Recent Activity
recent_commits = []
try:
    log = subprocess.check_output(['git', 'log', '--oneline', '-5'], text=True).strip()
    for line in log.splitlines():
        recent_commits.append(line.strip())
except Exception:
    pass

# Determine if BLOCKED — use precise checks, avoid false positives
has_blocked = False
blocked_reasons = []  # human-readable reasons for display

# 1. Check PROJECT_PROGRESS.json blocked array (most reliable source)
pj = read_json('PROJECT_PROGRESS.json')
if pj.get('blocked') and len(pj['blocked']) > 0:
    has_blocked = True
    for b in pj['blocked']:
        blocked_reasons.append(f'[PROJECT_PROGRESS.json] {b}')

# 2. Check GATEKEEPER_REVIEW.md for last Result: BLOCKED (not substring)
gk = read_text('GATEKEEPER_REVIEW.md')
# Find all Result lines in gatekeeper review
gk_results = re.findall(r'-\s*Result:\s*(BLOCKED|CONTINUE|PASS|REWORK)', gk)
if gk_results and gk_results[-1].strip().upper() == 'BLOCKED':
    has_blocked = True
    blocked_reasons.append('[GATEKEEPER_REVIEW.md] Last gatekeeper result is BLOCKED')

# 3. Check SPEC_TREE_STATUS.md table for nodes with status=BLOCKED (not the structural rule)
# The structural rule is: "Game implementation is intentionally blocked until leaf Spec Kit tasks exist."
# This is a design constraint, NOT a real blocker. Only nodes marked BLOCKED in the tree matter.
st = read_text('SPEC_TREE_STATUS.md')
# Parse table rows looking for status=BLOCKED
for line in st.splitlines():
    # Match table rows like | item | depth | BLOCKED | notes |
    if line.startswith('|') and '|' in line[1:]:
        parts = [c.strip() for c in line.strip('|').split('|')]
        if len(parts) >= 3 and parts[2] == 'BLOCKED':
            has_blocked = True
            node_name = parts[0] if parts else 'unknown'
            blocked_reasons.append(f'[SPEC_TREE_STATUS.md] Node "{node_name}" is BLOCKED')

# 4. If last gatekeeper decision is CONTINUE, override any soft blockers
if gk_results and gk_results[-1].strip().upper() in ('CONTINUE', 'PASS'):
    # Only keep hard blockers from PROJECT_PROGRESS.json and SPEC_TREE_STATUS table
    hard_has_blocked = bool(pj.get('blocked') and len(pj['blocked']) > 0)
    table_has_blocked = any(
        line.startswith('|') and '|' in line[1:] and
        [c.strip() for c in line.strip('|').split('|')][2] == 'BLOCKED'
        if len([c.strip() for c in line.strip('|').split('|')]) >= 3 else False
        for line in st.splitlines()
    )
    has_blocked = hard_has_blocked or table_has_blocked
    # Filter blocked_reasons to only hard blockers
    blocked_reasons = [r for r in blocked_reasons
                       if 'PROJECT_PROGRESS.json' in r or 'SPEC_TREE_STATUS.md' in r]

# Determine status based on BLOCKED and activity freshness
seconds_since_last = now_ts - last_commit_ts if last_commit_ts > 0 else 999999
minutes_since_last = seconds_since_last / 60

if has_blocked:
    status_emoji = '🔴'
    status_label = 'BLOCKED'
    status_class = 'bad'
    status_detail = 'Real blocked item detected — see Blocked Reason below'
elif minutes_since_last <= 15:
    status_emoji = '🟢'
    status_label = 'WORKING'
    status_class = 'good'
    status_detail = f'Last activity {int(minutes_since_last)}m ago — recent'
else:
    status_emoji = '🟡'
    status_label = 'IDLE'
    status_class = 'warn'
    status_detail = f'Last activity {int(minutes_since_last)}m ago — idle'

# Last completed node (find last DONE node with highest depth)
last_completed_node = "None yet"
for cols in reversed(tree_rows):
    if len(cols) >= 3 and cols[2].strip() == 'DONE':
        last_completed_node = cols[0].strip()
        break

# Current task from nextStep
current_task = next_step

# Format timestamp
last_dashboard_update_str = dashboard_update_ts.strftime('%Y-%m-%d %H:%M:%S UTC')
last_dashboard_update_iso = dashboard_update_ts.strftime('%Y-%m-%dT%H:%M:%SZ')

# --- Build blocked lines for display (only REAL blockers, not structural rules) ---
STRUCTURAL_BLOCKER = 'Game implementation is intentionally blocked until leaf Spec Kit tasks exist.'
blocked_lines = []
in_blockers = False
for line in read_text('SPEC_TREE_STATUS.md').splitlines():
    if line.strip().lower().startswith('## current blockers'):
        in_blockers = True
        continue
    if in_blockers and line.startswith('## '):
        break
    if in_blockers and line.strip().startswith('-'):
        item = line.strip('- ').strip()
        # Skip the structural design-constraint blocker — it is NOT a real blocker
        if STRUCTURAL_BLOCKER in item:
            continue
        blocked_lines.append(item)
# Add items from PROJECT_PROGRESS.json blocked array
blocked_lines.extend(str(x) for x in blocked)
if not blocked_lines:
    blocked_lines = ['All systems clear — no real BLOCKED items.']

needs_user = any(re.search(r'credential|account|apple|legal|financial|external|user', b, re.I) for b in blocked_lines)

# Build blocked_reason HTML — only shown when has_blocked is True
blocked_reason_html = ''
if has_blocked and blocked_reasons:
    blocked_reason_html = '  <h2>Blocked Reason</h2>\n  <div class="card"><ul>\n'
    for r in blocked_reasons:
        blocked_reason_html += f'    <li><span class="badge bad-bg">BLOCKED</span> {esc(r)}</li>\n'
    blocked_reason_html += '  </ul></div>\n'

# --- Branch cards ---
branch_cards = []
for cols in tree_rows[:40]:
    if len(cols) >= 4:
        item, depth, status, notes = cols[:4]
        branch_cards.append((item, depth, status, notes, badge_class(status)))

# --- Progress cards ---
progress_cards = []
for cols in progress_rows[:12]:
    if len(cols) >= 4:
        progress_cards.append(cols[:4])

def esc(x): return html.escape(str(x))

# Build Recent Activity items
recent_activity_html = ''
for line in recent_commits:
    if line:
        parts = line.split(' ', 1)
        hash_part = parts[0] if parts else ''
        msg_part = parts[1] if len(parts) > 1 else ''
        recent_activity_html += f'    <div class="activity-item"><span class="commit-hash">{esc(hash_part)}</span> {esc(msg_part)}</div>\n'

if not recent_activity_html:
    recent_activity_html = '    <div class="muted">No recent activity found.</div>\n'

# --- Assemble HTML ---
html_doc = f'''<!doctype html>
<html lang="en">
<head>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <title>Mobile Progress Dashboard</title>
  <!-- lastDashboardUpdate: {esc(last_dashboard_update_iso)} -->
  <style>
    :root {{ --bg:#0f172a; --card:#111827; --text:#f8fafc; --muted:#cbd5e1; --good:#22c55e; --warn:#facc15; --bad:#ef4444; --neutral:#60a5fa; }}
    * {{ box-sizing:border-box; margin:0; padding:0; }}
    body {{ font-family:system-ui,-apple-system,Segoe UI,sans-serif; background:linear-gradient(180deg,#0f172a,#1e293b); color:var(--text); min-height:100vh; }}
    main {{ width:min(760px,100%); margin:0 auto; padding:16px; }}

    /* Pulse section — highest priority, before hero */
    .pulse-section {{
      background:linear-gradient(135deg,#020617,#0f172a);
      border:1px solid #334155;
      border-radius:24px;
      padding:20px;
      margin-bottom:18px;
      box-shadow:0 8px 32px #0006;
    }}
    .pulse-header {{
      display:flex;
      align-items:center;
      gap:16px;
      margin-bottom:12px;
    }}
    .pulse-dot {{
      width:24px;
      height:24px;
      border-radius:50%;
      flex-shrink:0;
      animation:pulse 2s ease-in-out infinite;
    }}
    .pulse-dot.good {{ background:#22c55e; box-shadow:0 0 20px #22c55e66; }}
    .pulse-dot.warn {{ background:#facc15; box-shadow:0 0 20px #facc1566; }}
    .pulse-dot.bad {{ background:#ef4444; box-shadow:0 0 20px #ef444466; }}
    @keyframes pulse {{
      0% {{ transform:scale(1); opacity:1; }}
      50% {{ transform:scale(1.3); opacity:0.7; }}
      100% {{ transform:scale(1); opacity:1; }}
    }}
    .pulse-status {{
      font-size:1.8rem;
      font-weight:900;
      letter-spacing:-0.02em;
    }}
    .pulse-status.good {{ color:var(--good); }}
    .pulse-status.warn {{ color:var(--warn); }}
    .pulse-status.bad {{ color:var(--bad); }}
    .pulse-grid {{
      display:grid;
      grid-template-columns:1fr 1fr;
      gap:8px 16px;
      margin-top:8px;
    }}
    @media (max-width:480px) {{
      .pulse-grid {{ grid-template-columns:1fr; }}
    }}
    .pulse-item {{
      padding:8px 0;
      border-bottom:1px solid #1e293b;
    }}
    .pulse-label {{
      font-size:.7rem;
      text-transform:uppercase;
      letter-spacing:0.08em;
      color:var(--muted);
      margin-bottom:2px;
    }}
    .pulse-value {{
      font-size:.92rem;
      font-weight:600;
      word-break:break-word;
    }}

    /* Hero */
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
    .good-bg {{ background:var(--good); }} .warn-bg {{ background:var(--warn); }} .bad-bg {{ background:var(--bad); color:white; }} .neutral-bg {{ background:var(--neutral); }}
    .row {{ display:flex; justify-content:space-between; gap:10px; align-items:flex-start; }}
    ul {{ padding-left:20px; }}

    /* Recent Activity */
    .activity-list {{
      display:flex;
      flex-direction:column;
      gap:6px;
    }}
    .activity-item {{
      padding:8px 12px;
      background:rgba(30,41,59,.6);
      border-radius:10px;
      font-size:.88rem;
      font-family:ui-monospace,SFMono-Regular,monospace;
    }}
    .commit-hash {{
      color:var(--neutral);
      font-weight:700;
      margin-right:8px;
    }}

    footer {{ color:var(--muted); text-align:center; padding:28px 0 10px; font-size:.82rem; }}
  </style>
</head>
<body>
<main>

  <!-- ===== LIVE PROGRESS PULSE (highest priority) ===== -->
  <section class="pulse-section">
    <div class="pulse-header">
      <div class="pulse-dot {status_class}"></div>
      <div class="pulse-status {status_class}">{status_emoji} {status_label}</div>
    </div>
    <div style="font-size:.85rem;color:var(--muted);margin-bottom:8px;">
      {esc(status_detail)}
    </div>
    <div class="pulse-grid">
      <div class="pulse-item">
        <div class="pulse-label">Last Dashboard Update</div>
        <div class="pulse-value">{esc(last_dashboard_update_str)}</div>
      </div>
      <div class="pulse-item">
        <div class="pulse-label">Last Checkpoint</div>
        <div class="pulse-value">{esc(last_commit_msg.split('checkpoint:',1)[-1].strip() if 'checkpoint:' in last_commit_msg else last_commit_msg)}</div>
      </div>
      <div class="pulse-item">
        <div class="pulse-label">Last Completed Node</div>
        <div class="pulse-value">{esc(last_completed_node)}</div>
      </div>
      <div class="pulse-item">
        <div class="pulse-label">Current Node / Task</div>
        <div class="pulse-value">{esc(current_task[:100] + '...' if len(current_task) > 100 else current_task)}</div>
      </div>
      <div class="pulse-item">
        <div class="pulse-label">Checkpoints / Commits</div>
        <div class="pulse-value">{checkpoint_count} checkpoints · {total_commit_count} total commits</div>
      </div>
      <div class="pulse-item">
        <div class="pulse-label">Decision Mode</div>
        <div class="pulse-value">AUTONOMOUS (Full Autonomy Rule active)</div>
      </div>
    </div>
  </section>

  <!-- ===== HERO ===== -->
  <section class="hero">
    <h1>{esc(project)}</h1>
    <div class="muted">Mobile Progress Dashboard</div>
    <div class="percent">{percent}%</div>
    <div class="bar"><div></div></div>
    <p><strong>Current phase:</strong> {esc(phase)}</p>
    <p><strong>Current wave:</strong> {esc(wave_summary)}</p>
    <p><strong>User intervention needed:</strong> <span class="badge {'bad-bg' if needs_user else 'good-bg'}">{'YES' if needs_user else 'NO'}</span></p>
  </section>

  <h2>Next Step</h2>
  <div class="card">{esc(next_step)}</div>

  <h2>Latest Control Signals</h2>
  <div class="grid">
    <div class="card"><strong>Last report-gatekeeper decision</strong><br><span class="muted">{esc(gatekeeper)}</span></div>
    <div class="card"><strong>Last major decision</strong><br><span class="muted">{esc(last_decision)}</span></div>
    <div class="card"><strong>Last checkpoint</strong><br><span class="muted">{esc(last_commit_msg)}</span></div>
  </div>

  <h2>Recent Activity</h2>
  <div class="card activity-list">
{recent_activity_html}  </div>

{blocked_reason_html}
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
    is_all_clear = 'all systems clear' in b.lower()
    cls = 'good-bg' if is_all_clear else ('bad-bg' if 'blocked' in b.lower() else 'warn-bg')
    label = 'OK' if is_all_clear else ('BLOCKED' if 'blocked' in b.lower() else 'INFO')
    html_doc += f'    <li><span class="badge {cls}">{esc(label)}</span> {esc(b)}</li>\n'
html_doc += f'''  </ul></div>

  <footer>Generated by <code>scripts/update_mobile_dashboard.sh</code> · {esc(last_dashboard_update_str)} · Static HTML only.</footer>
</main>
</body>
</html>
'''

(DOCS / 'index.html').write_text(html_doc, encoding='utf-8')
print('Updated docs/index.html with Live Progress Pulse')
PY
