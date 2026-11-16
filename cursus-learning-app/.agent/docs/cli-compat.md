# Compatibilité CLI

Source de vérité unique : `AGENT.md` et `.agent/skills/`. Chaque CLI y accède via un adaptateur minimal.

| CLI | Instructions lues | Dossier des skills | Adaptateur ici |
|---|---|---|---|
| Claude Code | `CLAUDE.md` | `.claude/skills/` | `CLAUDE.md` → `@AGENT.md` |
| Codex CLI | `AGENTS.md` | `.agents/skills/` | `AGENTS.md` → lien vers `AGENT.md` |
| Mistral Vibe | `AGENTS.md` (à la racine) | `.vibe/skills/` ou `.agents/skills/` (dossier « de confiance ») | idem Codex |
| Gemini CLI | `GEMINI.md` | `.gemini/skills/` ou `.agents/skills/` | `GEMINI.md` → `@AGENT.md` |

`install-skill.sh` (défaut `--cli auto`) lie chaque skill dans `.claude/skills/` **et** `.agents/skills/` : aucune
configuration à faire quel que soit l'outil.

## Points de vigilance (à vérifier chez toi, les CLI évoluent vite)

- **Nouveau skill invisible ?** Certaines CLI ne scannent le dossier qu'au démarrage → ouvre une nouvelle session. L'état
  est dans `.agent/apprenant/` : rien n'est perdu.
- **Liens symboliques non suivis ?** Relance avec `--copy`.
- **Mistral Vibe** : le dossier doit être déclaré « de confiance » pour charger `.agents/skills/` et `AGENTS.md`.
- **Gemini CLI** : si `@AGENT.md` n'est pas résolu par ta version, colle le contenu d'`AGENT.md` dans `GEMINI.md`.
- **CLI sans notion de skill** : demande-lui de lire `.agent/skills/<nom>/SKILL.md` en début de phase ; le contenu fonctionne
  comme un simple prompt.
- **Sous-agents / sessions fraîches** (mode ouvrier) : toutes les CLI n'en ont pas, et ce n'est **pas requis** — une seule
  session suffit, le mentor bascule en [Ouvrier] puis revient en [Mentor]. Option : ouvrir une **seconde session** dans
  `workspace/` avec uniquement le brief, pour tester qu'il se suffit à lui-même.

Sources consultées pour ces chemins : documentation Codex (developers.openai.com/codex/skills), Mistral Vibe
(docs.mistral.ai/vibe/code/cli/skills), Gemini CLI (geminicli.com/docs/cli/skills).
