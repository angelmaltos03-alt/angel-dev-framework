#!/usr/bin/env bash
set -euo pipefail
ROOT="$(cd "$(dirname "$0")/.." && pwd)"
cd "$ROOT"

echo "ANGEL DEV FRAMEWORK — environment doctor"
check() {
  local name="$1"
  local executable="$2"
  if command -v "$executable" >/dev/null 2>&1; then
    printf 'PASS  %-18s %s\n' "$name" "$(command -v "$executable")"
  else
    printf 'MISS  %-18s executable not found\n' "$name"
  fi
}
check git git
check python3 python3
check uv uv
check specify specify
check codex codex
if command -v specify >/dev/null 2>&1; then
  specify version || true
  specify integration status || true
fi
echo "Doctor finished. MISS entries are prerequisites, not framework test failures."
