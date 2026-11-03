#!/usr/bin/env bash
set -euo pipefail
ROOT="$(cd "$(dirname "$0")/.." && pwd)"
cd "$ROOT"

echo "ANGEL DEV FRAMEWORK — repository validation"
required=(
  "README.md"
  "AGENTS.md"
  ".specify/memory/constitution.md"
  "docs/architecture/overview.md"
  "docs/workflows/engineering-lifecycle.md"
  "docs/standards/definition-of-done.md"
)
for file in "${required[@]}"; do
  if [[ -s "$file" ]]; then
    printf 'PASS  %s\n' "$file"
  else
    printf 'FAIL  missing or empty: %s\n' "$file"
    exit 1
  fi
done
if grep -RInE 'BEGIN (RSA|OPENSSH|EC) PRIVATE KEY|gh[pousr]_[A-Za-z0-9]{20,}' --exclude-dir=.git --exclude='validate.sh' .; then
  echo "FAIL  possible committed credential detected"
  exit 1
else
  echo "PASS  basic secret-pattern scan"
fi
git diff --check
echo "PASS  git diff --check"
echo "ADF repository validation passed."
