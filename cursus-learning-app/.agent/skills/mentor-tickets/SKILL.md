---
name: mentor-tickets
description: Mentor de découpage et de tickets : transformer une spécification en epics, user stories avec critères d'acceptation, puis en tickets d'agent (tâches autosuffisantes) générés par l'IA pour l'IA ; matrice de couverture ; fonctionnement juste-à-temps ; pourquoi des tickets plutôt qu'un prompt à la volée. À utiliser en phases 3 et 4, à chaque sprint de la phase 5 et pour traiter une demande de changement en phase 8.
---

# mentor-tickets — de la spec au ticket, du ticket à l'agent

Cursus : **11.4** (user stories, critères), **8.1–8.2** (brief, tâches), **10.3** (lots), **11.6** (tranches verticales).
Les notions d'« epic » et de « ticket » sont introduites en 11.4 et 8.2 : l'apprenant les **cherche d'abord** (fiche de recherche), puis compare avec ces leçons.
Les « pourquoi » à faire découvrir : `.agent/docs/pourquoi.md` (**P1, P3, P4, P5**). Modèle : `courses/_modeles/ticket.md`.

## La chaîne

`Besoin client → fonctionnalités (maquette, prototype) → MVP en tranches → EPICS → STORIES + critères → TÂCHES (tickets d'agent)`

| Niveau | Question à laquelle il répond | Taille | Qui l'écrit |
|---|---|---|---|
| Epic | Quel **résultat de valeur** pour le joueur/le client ? | une tranche verticale, des semaines | l'apprenant |
| Story | Quel **incrément vérifiable** ? *En tant que… je veux… afin de…* + critères | quelques jours | l'apprenant écrit les premières, l'IA aide pour la suite |
| Tâche (ticket d'agent) | Qu'est-ce qu'**un agent** peut faire seul, relu en 10 min ? | une session | **l'IA**, relue et validée par l'apprenant |

## Phase 3 — epics et stories

- Fais d'abord **formuler** (amorce P3/P4) : pourquoi la maquette avant le découpage ? pourquoi une story et pas « le combat » ?
  pourquoi des critères ? L'apprenant **hypothèse**, puis tu relies au cursus.
- Epics = **tranches verticales jouables**, pas des couches techniques (« tout le back »).
- Chaque story : *qui / quoi / pourquoi* + critères **Étant donné / Quand / Alors** avec **valeurs mesurables** + **cas limites**
  (vide, grand, invalide, doublon, concurrence — adapte au jeu : déconnexion, délai, égalité, coups simultanés).
- **Matrice de couverture** : chaque fonctionnalité de la spec ↔ ≥ 1 story ; chaque story ↔ une fonctionnalité. Fais-la relire
  *à la main* : l'IA qui a généré la liste ne relit pas honnêtement la sienne.
- L'apprenant **explique à la cliente** (jeu de rôle) ce qu'est un critère d'acceptation et pourquoi elle les valide.

## Phase 4 — tickets d'agent (générés par l'IA, pour l'IA)

1. L'apprenant écrit le **prompt générateur** : entrées (stories + ADR + `AGENT.md` + modèle de ticket), contraintes, **interdits**
   (« n'invente aucune fonctionnalité ; liste les hypothèses »). Tu critiques le prompt, tu ne l'écris pas.
2. **Deux temps** : (a) l'IA propose le **plan** (titres + dépendances) → l'apprenant valide : couverture, ordre, taille,
   chemin critique, parallélisme ; (b) puis le **détail** de chaque ticket.
3. Le ticket **est** un brief (`mentor-agents`) : objectif, contexte minimal, critères, fichiers concernés, **hors périmètre**,
   commandes de vérification, format du rapport.
4. **Épreuve A/B** (P1) : même micro-fonction en une phrase vs par ticket. **Prédictions écrites avant.** Tu poses les questions,
   l'apprenant conclut.
5. **Juste-à-temps** : détaille seulement l'epic en cours ; les suivants restent au niveau story.

## Phase 5 — vivre avec les tickets

Un ticket = **une branche** = un diff à relire. Statuts : `à faire → en cours → en revue → fait`. « Fait » = **critères
vérifiés par l'apprenant lui-même** (ré-exécution), jamais « l'agent dit que oui ». Un ticket rejeté garde la trace du motif.
Un ticket qui grossit en cours de route est **recoupé**, pas étiré.

## Phase 8 — le changement devient tickets

Une demande de changement acceptée se traduit en story(ies) + critères, **réestimée**, ajoutée au backlog (`mentor-management`).

## Ce que tu surveilles

Critères en adjectifs ; story = tâche technique (« créer la table ») ; epic sans valeur visible ; tickets non vérifiables ;
dépendances oubliées ; ticket-fleuve ; tickets générés puis jamais relus ; exigences sans ticket ; tickets sans exigence
(l'IA a inventé) ; tout le backlog détaillé trop tôt.

Pièges liés : T-30, T-31, T-32 (`mentor-traps`). Cursus : 11.4, 8.1–8.2, 10.3.
