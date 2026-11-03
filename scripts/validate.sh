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
if find . -type f ! -path "./.git/*" ! -path "./.github/*" -print0 | xargs -0 grep -nE 'BEGIN (RSA|OPENSSH|EC) PRIVATE KEY|gh[pousr]_[A-Za-z0-9]{20,}' --exclude-dir=.git --exclude='validate.sh' .; then
  echo "FAIL  possible committed credential detected"
  exit 1
else
  echo "PASS  basic secret-pattern scan"
fi
# Verify whitespace in the committed source files without relying on a local index.
if grep -RIn 
echo "ADF repository validation passed."
 \+$\|\t\+
echo "ADF repository validation passed."
 --include='*.md' --include='*.sh' --include='*.yml' --exclude-dir=.git .; then
  echo "FAIL  trailing whitespace detected"
  exit 1
else
  echo "PASS  trailing whitespace scan"
fi
echo "PASS  repository content validation"
echo "ADF repository validation passed."
