#!/usr/bin/env bash
set -euo pipefail

echo "== PROJECT_PROGRESS.json =="
python -m json.tool PROJECT_PROGRESS.json
