#!/usr/bin/env bash

set -euo pipefail

ROOT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")/.." && pwd)"
SKILL_DIR="$ROOT_DIR/skills/andromeda-gate"
SKILL_FILE="$SKILL_DIR/SKILL.md"
OPENAI_METADATA_FILE="$SKILL_DIR/agents/openai.yaml"
REFERENCE_FILE="$SKILL_DIR/references/andromeda-gate-reference.md"
CLAUDE_MARKETPLACE_FILE="$ROOT_DIR/.claude-plugin/marketplace.json"

fail() {
  echo "Validation failed: $1" >&2
  exit 1
}

[ -f "$SKILL_FILE" ] || fail "missing $SKILL_FILE"
[ -f "$OPENAI_METADATA_FILE" ] || fail "missing $OPENAI_METADATA_FILE"
[ -f "$REFERENCE_FILE" ] || fail "missing $REFERENCE_FILE"
[ -f "$CLAUDE_MARKETPLACE_FILE" ] || fail "missing $CLAUDE_MARKETPLACE_FILE"

skill_name="$(sed -n 's/^name: //p' "$SKILL_FILE" | head -n 1)"
[ "$skill_name" = "andromeda-gate" ] || fail "frontmatter name must be andromeda-gate"

grep -q 'references/andromeda-gate-reference.md' "$SKILL_FILE" \
  || fail "SKILL.md must reference the packaged reference doc"

grep -q 'display_name: "Andromeda-Gate"' "$OPENAI_METADATA_FILE" \
  || fail "openai metadata must include the Andromeda-Gate display name"

for required in \
  README.md \
  CONTRIBUTING.md \
  AGENTS.md \
  LICENSE \
  VERSIONS.md \
  docs/CONTINUITY.md \
  .codex/napkin.md
do
  [ -f "$ROOT_DIR/$required" ] || fail "missing $required"
done

[ ! -f "$ROOT_DIR/SKILL.md" ] || fail "legacy root SKILL.md should not exist"

node -e 'JSON.parse(require("fs").readFileSync(process.argv[1], "utf8"))' \
  "$CLAUDE_MARKETPLACE_FILE" >/dev/null || fail "marketplace.json must be valid JSON"

echo "Validation passed"
