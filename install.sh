#!/usr/bin/env bash
# Install Discord design skills for Cursor (IDE + local Agent API).
set -euo pipefail
ROOT="$(cd "$(dirname "$0")" && pwd)"
MODE="${1:-user}"

copy_skills() {
  local dest="$1"
  mkdir -p "$dest"
  rm -rf "$dest/discord-pack-design" "$dest/discord-server-design"
  cp -R "$ROOT/skills/discord-pack-design" "$dest/discord-pack-design"
  cp -R "$ROOT/skills/discord-server-design" "$dest/discord-server-design"
  echo "Installed skills → $dest"
}

copy_rule() {
  local dest="$1"
  mkdir -p "$dest"
  cp "$ROOT/.cursor/rules/discord-design.mdc" "$dest/discord-design.mdc"
  echo "Installed rule  → $dest/discord-design.mdc"
}

case "$MODE" in
  user)
    copy_skills "$HOME/.cursor/skills"
    copy_skills "$HOME/.agents/skills"
    copy_rule "$HOME/.cursor/rules"
    ;;
  project)
    copy_skills "$PWD/.cursor/skills"
    copy_skills "$PWD/.agents/skills"
    copy_rule "$PWD/.cursor/rules"
    cp "$ROOT/AGENTS.md" "$PWD/AGENTS.md"
    echo "Copied AGENTS.md → $PWD/AGENTS.md"
    ;;
  *)
    echo "Usage: ./install.sh [user|project]"
    echo "  user    (default) ~/.cursor/skills and ~/.agents/skills — every project on this machine"
    echo "  project current directory .cursor/skills — this repo only, including Agent API cwd"
    exit 1
    ;;
esac

echo "Done. Restart Cursor or start an SDK agent with local.cwd pointing at a folder that has .cursor/skills."
