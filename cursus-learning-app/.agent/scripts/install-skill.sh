#!/usr/bin/env bash
# Installe un ou plusieurs skills mentor dans le dossier lu par la CLI de l'apprenant.
#
# Source unique : .agent/skills/<nom>/SKILL.md
# Cibles (liens symboliques relatifs, donc le dépôt reste déplaçable) :
#   .claude/skills/<nom>  -> Claude Code
#   .agents/skills/<nom>  -> Codex, Mistral Vibe, Gemini CLI (standard Agent Skills)
#
# Usage :
#   install-skill.sh mentor-core [mentor-client ...]  [--cli auto|claude|codex|vibe|gemini|all] [--copy]
#   install-skill.sh --list        # skills disponibles + état d'installation
#
# --cli auto (défaut) : installe dans les deux dossiers, c'est inoffensif et marche partout.
# --copy              : copie au lieu de lier (si la CLI ne suit pas les liens symboliques).
set -euo pipefail

ROOT="$(cd "$(dirname "${BASH_SOURCE[0]}")/../.." && pwd)"
SRC="$ROOT/.agent/skills"
CLI="auto"
COPY=0
NAMES=()

while [ $# -gt 0 ]; do
  case "$1" in
    --cli)  CLI="${2:?--cli attend une valeur}"; shift 2 ;;
    --copy) COPY=1; shift ;;
    --list)
      for d in "$SRC"/*/; do
        n="$(basename "$d")"; s=""
        [ -e "$ROOT/.claude/skills/$n" ] && s="$s claude"
        [ -e "$ROOT/.agents/skills/$n" ] && s="$s agents"
        printf '%-22s %s\n' "$n" "${s:-(non installé)}"
      done
      exit 0 ;;
    -h|--help) sed -n '2,15p' "$0"; exit 0 ;;
    -*) echo "Option inconnue : $1" >&2; exit 2 ;;
    *)  NAMES+=("$1"); shift ;;
  esac
done

[ ${#NAMES[@]} -gt 0 ] || { echo "Aucun skill indiqué (voir --help)." >&2; exit 2; }

case "$CLI" in
  claude)               TARGETS=(".claude/skills") ;;
  codex|vibe|gemini)    TARGETS=(".agents/skills") ;;
  auto|all)             TARGETS=(".claude/skills" ".agents/skills") ;;
  *) echo "CLI inconnue : $CLI (claude|codex|vibe|gemini|auto|all)" >&2; exit 2 ;;
esac

for name in "${NAMES[@]}"; do
  dir="$SRC/$name"
  [ -f "$dir/SKILL.md" ] || { echo "✗ $name : introuvable dans .agent/skills/" >&2; exit 1; }
  # Le standard Agent Skills exige que `name:` du frontmatter == nom du dossier.
  fm="$(awk '/^name:/{print $2; exit}' "$dir/SKILL.md")"
  [ "$fm" = "$name" ] || { echo "✗ $name : frontmatter name='$fm' ≠ dossier" >&2; exit 1; }

  for t in "${TARGETS[@]}"; do
    mkdir -p "$ROOT/$t"
    dest="$ROOT/$t/$name"
    rm -rf "$dest"
    if [ "$COPY" -eq 1 ]; then
      cp -R "$dir" "$dest"
    else
      ln -s "../../.agent/skills/$name" "$dest"
    fi
    echo "✓ $name -> $t/"
  done
done

echo
echo "Si la CLI ne voit pas le skill : ouvre une nouvelle session (la progression est dans .agent/apprenant/progress.md)."
