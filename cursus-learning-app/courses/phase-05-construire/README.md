# Phase 5 — Construire

**Durée** : 6–10 semaines (3 sprints) · **Skill installé** : `mentor-quality` (+ `mentor-agents`, `mentor-development`)

## Situation

C'est le cœur du projet. Tu construis en **orchestrant** des agents : tu écris le brief, tu délègues, tu **ne crois pas le
rapport**, tu relis, tu testes, tu rejettes ou tu acceptes. À chaque fin de sprint, démo à Maëlle.

## Boucle d'un sprint

1. **Prends le prochain ticket** de l'epic en cours (`à faire → en cours`). Si c'est la dernière tâche détaillée, génère les
   tickets de l'epic suivante (juste-à-temps, plan puis détail).
2. **Écris le test e2e / le test rouge** qui définit « fini » (repris des critères d'acceptation).
3. **Le ticket est ton brief** (autosuffisant, avec *hors périmètre*) ; relis-le avec le mentor.
4. **Délègue** (mode ouvrier du mentor, ou session fraîche, ou plusieurs agents en parallèle sur branches séparées).
5. **Reçois** : ré-exécute, lis le diff (dérives ?), compare au brief. Accepte ou **rejette précisément**.
6. **Piège** possible : un diff, un rapport ou un test à examiner.
7. **Démo** + rétro courte dans le journal.

## Les trois sprints (proposés — ajuste selon ton MVP)

- **A — Le cœur** : règles de jeu en pur (sans réseau ni écran), duel local rejouable, quelques cartes.
  *Fin de sprint : « test du changement »* — ajoute un type de carte ou change une formule : combien de fichiers touches-tu ?
  les règles tournent-elles sans réseau ni écran ? quels mots du code ont deux sens ? Qu'en conclus-tu sur ton architecture ?
- **B — Le réseau** : deux joueurs en ligne, serveur autoritaire, déconnexion/reconnexion.
- **C — La profondeur** : cartes et tactique, **assets** (cherchés par toi, licences tracées), équilibrage, finition.

Un événement client viendra perturber le plan (changement de demande, délai). Traite-le **comme un chef de projet**.

## Livrables

Dépôt `workspace/` jouable ; par sprint : brief, rapport de revue de PR, preuve exécutée (e2e), mise à jour planning/risques ;
`assets-et-licences.md` ; rapports de pièges ; demande de changement traitée.

## Critères de passage

- Une partie complète à deux joueurs réels se joue de bout en bout (e2e vert, **que tu as relu**).
- Tu as rejeté au moins une livraison d'agent avec un motif précis.
- Tu sais montrer où vivent les règles du jeu et expliquer 3 fichiers à voix haute.
- Chaque asset a une licence prouvée.
- Estimé vs réel suivi par sprint.

## Tu sauras expliquer

- Pourquoi un **test rouge avant** le code, et pourquoi tu **ré-exécutes** au lieu de croire le rapport.
- Pourquoi **un ticket = une branche = un diff** relisable en 10 minutes.
- Pourquoi **rejeter précisément** plutôt que « bricoler » à la main.
- Pourquoi l'architecture (couches, DDD, clean code) *se voit* au moment du changement — ton « test du changement ».

## Parallèle avec le cursus

| Ce que tu fais ici | Leçon du cursus | Dans Facturo c'était… |
|---|---|---|
| Écrire le brief | 8.1 | le brief de l'export CSV |
| Agents en parallèle | 8.4 | trois agents, trois branches |
| Recevoir le travail | 8.5 | une fausse réussite |
| Relire un diff, décider | 2.5–2.6 | une dérive en chaîne ; diff à approuver / refuser / ambigu |
| Revue de PR | 2.7 | la revue d'une PR de paiement |
| Test rouge, agent qui triche | 4.4, 4.8 | confier une règle à un agent avec un test rouge |
| Tester le parcours complet | 4.6 | tests d'intégration et de bout en bout |

Fais l'atelier de **8** (*livrer l'export CSV avec trois agents*) et de **2** ou 2 exercices chacun, plus le quiz de **4** et **8**, avant de valider.

## Ressources

8.1–8.6 [Orchestrer](../../../cursus-orchestrateur/modules/module-08.html) · 2.1–2.7 [Lire et relire](../../../cursus-orchestrateur/modules/module-02.html) · 4.1–4.8 [Tests](../../../cursus-orchestrateur/modules/module-04.html) · [mini-jeu « Chasse aux dérives »](../../../cursus-orchestrateur/demarrer.html)
