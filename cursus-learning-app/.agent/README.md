# .agent/ — tout ce qui pilote le mentor

| Dossier | Contenu |
|---|---|
| `docs/` | Méthode, voix du mentor, **les « pourquoi »**, progression, politique des pièges, correspondances cursus, compatibilité CLI |
| `skills/` | 12 skills `mentor-*` (source unique) — installés par phase via `scripts/install-skill.sh` |
| `scripts/` | `install-skill.sh` (liens vers `.claude/skills/` et `.agents/skills/`) |
| `apprenant/` | **Privé, ignoré par Git** : `progress.md`, `traps-ledger.md`, `scenario/` (dossier secret de la cliente + événements). Seul `README.md` y est versionné ; les modèles vides sont dans `docs/modeles/` |

**Convention** : `AGENT.md` (racine) = règles non négociables + index. Le détail vit ici. Pour modifier le comportement
du mentor, on édite `.agent/` — pas en cours de session d'apprentissage.
