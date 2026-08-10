#!/usr/bin/env bash
set -euo pipefail
HERE="$(cd "$(dirname "${BASH_SOURCE[0]}")/.." && pwd)"
SKILL="$HERE/SKILL.md"

fail() { echo "ERROR: $*" >&2; exit 1; }

[[ -f "$SKILL" ]] || fail "SKILL.md is missing"
head -n 1 "$SKILL" | grep -qx -- '---' || fail "SKILL.md must start with YAML frontmatter"
grep -q '^description:' "$SKILL" || fail "SKILL.md is missing description frontmatter"
for f in divi5-architecture.md theme-builder.md novamira-operations.md verification.md; do
  [[ -f "$HERE/references/$f" ]] || fail "Missing references/$f"
done

echo "OK: Divi 5 + Novamira Claude Code skill package looks valid."
