# Phase 4 — Équiper ses agents

**Durée** : 2 semaines · **Skills installés** : `mentor-agents`, `mentor-development`

## Situation

Tu as une spec et une architecture. Avant de déléguer du code, il faut comprendre ce que tu délègues **et** préparer le terrain,
sinon l'agent devinera — et devinera mal.

## Missions

1. **Comprendre l'outil** : modèle, harness, boucle d'agent, fenêtre de contexte. Explique-les avec un exemple *de ton jeu*.
2. **Squelette du dépôt** dans `workspace/` : structure, branches, commandes de test, premier test e2e (même trivial)
   qui échoue puis passe.
3. **Écris l'`AGENT.md` du jeu** : stack, commandes, conventions, règles non négociables, interdits.
4. **Choisis** skills / hooks / MCP utiles *et refuse ceux qui ne le sont pas* — avec une raison.
5. **Sécurité des agents** : où l'agent lit-il du texte qu'un joueur peut contrôler ? Que risque-t-il ?
6. **Évalue** : définis 5 cas de référence pour juger un agent, et estime le **coût** d'une tâche type.
7. **Fais générer tes tickets par l'IA, pour l'IA** (première epic seulement) :
   - écris toi-même le **prompt générateur** : entrées (tes stories, tes ADR, ton `AGENT.md`, le [modèle de ticket](../_modeles/ticket.md)),
     contraintes, **interdits** (« n'invente aucune fonctionnalité ») ;
   - **deux temps** : d'abord le **plan** (titres + dépendances) — tu le relis (couverture, ordre, taille, chemin critique) —
     puis le **détail** de chaque ticket ;
   - ne détaille **que l'epic en cours** : les suivantes restent au niveau story.
8. **Expérience A/B** : la même petite fonction (ex. « piocher une carte ») demandée à un agent (a) **en une phrase**, (b) via
   **ton ticket complet**. **Écris tes prédictions avant.** Compare : taille du diff, hypothèses silencieuses de l'agent, tests,
   temps de relecture, coût. Conclus par écrit : *pourquoi des tickets ?*
9. **Piège** : une dépendance, une configuration, un conseil ou un ticket à vérifier.

## Livrables

`workspace/AGENT.md` · squelette + premier test e2e · `04-agents-choix.md` (skills/hooks/MCP, risques) ·
`04-evaluation-et-couts.md` · `tickets/` (tâches de la première epic : plan validé + détail) · `04-experience-ab.md`
(prédictions, mesures, conclusion) · journal à jour.

## Critères de passage

- Tu expliques pourquoi l'agent « oublie » une règle et comment ton `AGENT.md` y répond.
- Ton `AGENT.md` est **à toi** : adapté au jeu, pas copié. Il contient **au moins 2 règles tirées de ton carnet de dérives** (une erreur répétée → une règle).
- Tu sais dire ce que tu *ne* délègues *pas* encore, et pourquoi.
- Le coût d'une tâche est chiffré avec ses hypothèses.
- Tes tickets couvrent les stories de l'epic **sans en inventer** ; chacun se relit en ~10 min et se vérifie seul.
- Ton expérience A/B contient des **prédictions écrites avant**, des mesures, et une conclusion honnête (même si elle te
  surprend).

## Tu sauras expliquer

- Pourquoi un **ticket** plutôt qu'un prompt à la volée — *avec ta propre expérience A/B comme preuve*.
- Pourquoi faire **générer les tickets par l'IA, pour l'IA**, en deux temps (plan puis détail), plutôt que « tout d'un coup ».
- Pourquoi l'agent « oublie » une règle (contexte) et en quoi ton `AGENT.md` l'évite.
- Pourquoi on ne détaille que l'epic **en cours** (juste-à-temps).

## Parallèle avec le cursus

| Ce que tu fais ici | Leçon du cursus | Dans Facturo c'était… |
|---|---|---|
| Modèle, harness, boucle, contexte | 7.1–7.3 | une tâche suivie pas à pas |
| `AGENT.md`, skills, hooks, sous-agent | 7.4 | le fichier d'instructions, un skill, un hook, un relecteur |
| Brancher des outils (MCP) ou refuser | 7.5 | ce qu'on autorise, ce qu'on refuse |
| Sécurité des agents | 7.6 | le ticket piégé |
| Évaluer, chiffrer | 7.7 | cinq cas de référence, coût d'une tâche |
| Découper en tâches, brief, tickets | 8.1–8.2 | l'export CSV en six tâches ; « Pourquoi des tickets plutôt qu'une demande à la volée » ; « Faire écrire les tickets par l'IA » |
| Git, terminal, secrets | 1.6–1.7 | un conflit pas à pas |

Fais l'atelier de **7** (*préparer Facturo pour un agent*) ou 2 exercices, et le quiz de **7** et **8.1–8.2**, avant de valider.

## Ressources

7.1–7.7 [Agents IA](../../../cursus-orchestrateur/modules/module-07.html) · 1.6–1.7 [Git, terminal, secrets](../../../cursus-orchestrateur/modules/module-01.html)
