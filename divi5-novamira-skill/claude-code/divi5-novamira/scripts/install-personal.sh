#!/usr/bin/env bash
set -euo pipefail
SRC="$(cd "$(dirname "${BASH_SOURCE[0]}")/.." && pwd)"
DST="$HOME/.claude/skills/divi5-novamira"

if [[ -e "$DST" ]]; then
  echo "Refusing to overwrite existing $DST" >&2
  echo "Move or remove it first if you want to replace it." >&2
  exit 2
fi

mkdir -p "$(dirname "$DST")"
cp -R "$SRC" "$DST"
rm -f "$DST/scripts/install-personal.sh"
echo "Installed to $DST"
echo "Invoke with /divi5-novamira or let Claude load it automatically when relevant."
