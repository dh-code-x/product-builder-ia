# Orchestrer l'IA en construisant un jeu

Cours interactif **dans ta CLI d'agent de code** (Claude Code, Codex, Mistral Vibe, Gemini CLI…). Tu joues un prestataire :
une cliente veut un **jeu web 2D multijoueur, mélange de RPG et de tactique de cartes**. Tu cherches, tu spécifies, tu
choisis la technique, tu fais construire par des agents IA, tu **vérifies**, tu mets en ligne et tu pilotes. Un mentor
(l'agent) te pose des questions plutôt que de te donner les réponses — et glisse parfois des erreurs que tu dois trouver.

Basé sur le cursus [`cursus-orchestrateur`](../cursus-orchestrateur/index.html) (théorie, exercices corrigés).

## Démarrer

```bash
cd cursus-learning-app
claude        # ou : codex · vibe · gemini
```

Dis simplement : **« Commençons. »** Le mentor lit `AGENT.md`, constate que la phase 0 n'est pas faite et te guide.

Prérequis : une CLI d'agent de code, Git, un éditeur, un navigateur. (Pas de compétence de développeur exigée.)

## Où est quoi

| Dossier | Pour qui | Contenu |
|---|---|---|
| [`courses/`](courses/README.md) | toi | Les 10 phases : situation, missions, livrables, critères de passage |
| [`workspace/`](workspace/README.md) | toi | Ton projet (dépôt Git à toi) |
| `.agent/` | le mentor | Règles, skills, scénario, pièges. **Ne le lis pas** : tu te priverais de l'exercice |
| `AGENT.md` | le mentor | Règles non négociables + index |
| [`docs/conception.md`](docs/conception.md) | l'auteur du cours | Choix de conception, risques, évolutions |

Compatibilité CLI et détails : `.agent/docs/cli-compat.md`.
