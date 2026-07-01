#!/usr/bin/env bash
# Builds dist/avoid-ai-tells.skill, the package you upload to Claude.ai or Cowork.
# A .skill file is a zip with the skill folder at its root. Only SKILL.md and
# references/ go in: evals and repo docs are for the GitHub repo, not the runtime.
# Run from anywhere: bash scripts/package.sh
set -euo pipefail

root="$(cd "$(dirname "$0")/.." && pwd)"
staging="$(mktemp -d)/avoid-ai-tells"
mkdir -p "$staging" "$root/dist"

cp "$root/SKILL.md" "$root/LICENSE" "$staging/"
cp -r "$root/references" "$staging/references"

rm -f "$root/dist/avoid-ai-tells.zip" "$root/dist/avoid-ai-tells.skill"
(cd "$(dirname "$staging")" && zip -qr "$root/dist/avoid-ai-tells.zip" "avoid-ai-tells")
cp "$root/dist/avoid-ai-tells.zip" "$root/dist/avoid-ai-tells.skill"

rm -rf "$(dirname "$staging")"
echo "Built dist/avoid-ai-tells.zip and dist/avoid-ai-tells.skill"
