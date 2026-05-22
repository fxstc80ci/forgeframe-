#!/usr/bin/env bash
# filename: scripts/validateFramework.sh
# Use: Validate the minimum ForgeFrame template file set exists.
# Author: Craig MacPherson / Arti Muse
# Creation Date: 2026-05-22
# Change Record:
# - 2026-05-22 - Initial validation script.

set -euo pipefail

ROOT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")/.." && pwd)"
cd "$ROOT_DIR"

required_files=(
  "README.md"
  "AGENTS.md"
  "docs/architecture.md"
  "docs/gptCollaborationModel.md"
  "docs/gitWorkflow.md"
  "docs/codexCliWorkflow.md"
  "docs/localDevServerWorkflow.md"
  "templates/requirements.md"
  "templates/design.md"
  "templates/workPackages.md"
  "templates/taskCards.md"
  "templates/autonomousBuildRules.md"
  "templates/continuousAutonomousMode.md"
  "templates/extendedAutonomousTaskQueue.md"
  "templates/acceptanceCriteria.md"
  "templates/holisticCompletionReview.md"
  "templates/runbook.md"
)

missing=0
for file in "${required_files[@]}"; do
  if [[ ! -f "$file" ]]; then
    echo "MISSING: $file"
    missing=1
  else
    echo "OK: $file"
  fi
done

if [[ "$missing" -ne 0 ]]; then
  echo "ForgeFrame validation failed."
  exit 1
fi

echo "ForgeFrame validation passed."
