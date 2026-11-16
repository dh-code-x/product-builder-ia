# Phases ↔ modules du cursus ↔ skills ↔ « pourquoi »

Le cursus (`../cursus-orchestrateur/`) est **la référence théorique** : leçons, exercices **corrigés**, quiz,
checklists. Son fil rouge est *Facturo* (facturation). Ici le fil rouge est **le jeu de la cliente** : traduis les exemples
(facture → partie/carte ; numérotation transactionnelle → ordre des tours ; export CSV → replay ; accès à une facture →
accès à une partie). **Ne duplique pas le cursus** : renvoie vers la leçon, fais appliquer.

Le cursus range les modules 1→12 par thème ; le cours les range par **cycle de vie du projet** (les modules
transversaux 10–12 sont travaillés dès le début, comme le cursus le recommande).

**Chaîne du projet** : cadrage → **choix techniques** → maquette et fonctionnalités → **epics → stories (+ critères) →
tickets d'agent** → construction ticket par ticket. La techno précède le détail des tickets (voir `pourquoi.md`, P2).

| Phase | Mission | Modules du cursus | Skills installés | « Pourquoi » (`pourquoi.md`) |
|---|---|---|---|---|
| 0 Démarrage | Contrat, outils, CLI, **B.A.-BA : chercher / vérifier / se tenir à jour**, carnets | Démarrer (B.A.-BA en tête), 7.1 | core | — |
| 1 Cadrage | Veille, entretien, cadrage, risques | 10.1, 10.5, 11.1, 12.1–12.2 | management, client, product, traps | — |
| 2 Choix techniques | Recherche techno, pourquoi l'architecture, ADR, spike | 1.1–1.5, 2.2–2.4, 3.1–3.7, 9.6 | architecture | **P2, P6** |
| 3 Spécification | Parcours, maquette, fonctionnalités, prototype, états, MVP, **epics et stories**, planning, devis | 8.2, 10.2–10.4, 11.2–11.7, 12.5 | tickets | **P3, P4** (intro P1) |
| 4 Équiper ses agents | `AGENT.md`, dépôt, coûts, **tickets d'agent générés par l'IA**, expérience A/B | 1.6–1.7, 7.1–7.7, 8.1–8.2 | agents, development | **P1, P5** |
| 5 Construire | Sprints orchestrés, ticket par ticket, revue, tests | 2.1–2.7, 4.1–4.8, 8.1–8.6 | quality | P1, P5, **P6 (test du changement)** |
| 6 Fiabiliser | Sécurité, e2e, observabilité, RGPD | 6.1–6.6, 4.6–4.7 | security | — |
| 7 Mise en ligne | Conteneurs, CI/CD, déploiement, sauvegardes | 5.1–5.7 | devops | — |
| 8 Pilotage | Joueurs réels, incident, changements, roadmap | 9.1–9.7, 10.6, 12.3–12.6 | (aucun) | — |
| 9 Bilan | Estimé vs réel, soutenance, revue à l'aveugle | 10.7 | (aucun) | — |

## Où le cursus aborde epic, ticket, Clean Code, Clean Architecture

Ces notions ont été ajoutées au cursus HTML : **epic / story / tâche** et **critères d'acceptation** (11.4), **lots = epics** (10.3, 11.6), **tickets**, pourquoi plutôt qu'une demande à la volée, tickets générés par l'IA en deux temps (8.2), **Clean Code** (2.4), **Clean Architecture / oignon** (3.3), plus cinq entrées de glossaire (Clean Architecture, Clean Code, Critère d'acceptation, Epic, Ticket). Consigne au mentor : ne les enseigne pas en cours magistral — **fais d'abord chercher** (fiche de recherche), puis **comparer** avec la leçon.

Fichiers du cursus : `../cursus-orchestrateur/modules/module-NN.html` (NN sur deux chiffres), `glossaire.html`,
`demarrer.html`. Chaque module a un **Atelier guidé**, des **Exercices** avec corrigés, un **Quiz**, une **Checklist**.
Le mentor peut utiliser les corrigés pour évaluer ; l'apprenant les lit **après** avoir essayé.
