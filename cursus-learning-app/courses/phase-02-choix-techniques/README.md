# Phase 2 — Choix techniques

**Durée** : 2–3 semaines · **Skill installé** : `mentor-architecture`

## Situation

Le cadrage est validé : tu sais *ce que* Maëlle veut et avec *quelles contraintes*. Avant d'écrire la moindre spec détaillée,
il faut décider **avec quoi et comment** on construit. Sans cela, chaque critère d'acceptation, chaque estimation et chaque
ticket reposera sur du vide — et l'IA choisira la stack à ta place.

## Missions

1. **Cherche les meilleures technologies pour CE besoin, et pourquoi** — rendu 2D, temps réel, logique de jeu, persistance,
   comptes, hébergement. Le mentor ne te dira pas lesquelles.
2. **Compare** (≥ 3 options par décision, critères pondérés par *ce besoin*, sources datées) : [fiche de recherche](../_modeles/fiche-recherche.md).
3. **Vérifie** ce que l'IA te recommande : existe-t-il ? maintenu ? bonne version, bonne licence ?
4. **Cherche le *pourquoi* de l'architecture.** Pour chacune de ces démarches — *clean code*, *couches / hexagonale / Clean
   Architecture*, *DDD* (langage commun, frontières), *monolithe modulaire vs services* : quel problème résout-elle ? que
   coûte-t-elle ? quand est-ce trop ? Puis **décide** ce que tu retiens pour *ce* jeu, ce que tu écartes, et défends-le.
5. **Dessine** : composants, trajet d'un coup joué, données stockées. Réponds notamment à : *où vivent les règles du jeu ?*
6. **Écris tes ADR** : une décision structurante = un ADR. Un choix peut être marqué **provisoire**.
7. **Spike (2 h max)** : teste la décision la plus risquée avec un mini-essai jetable (ex. deux navigateurs qui s'échangent un
   message via ton serveur). Tes choix sont des **hypothèses**, tu les confirmes ou les révises.
8. **Piège** : le mentor a peut-être glissé des erreurs dans ce que l'IA ou lui te présente.

## Livrables

`02-etude-technos.md` · `02-pourquoi-architecture.md` · `02-architecture.md` (schémas) · `adr/ADR-001…` ·
`02-spike.md` (hypothèse, essai, résultat) · rapports de pièges.

## Critères de passage

- Chaque choix est justifié par un critère **lié au besoin de Maëlle**, avec sources.
- Pour chaque démarche d'architecture, tu dis le problème qu'elle résout *chez toi* — ou pourquoi tu l'écartes.
- Tu sais répondre : « et si on retire cette couche/ce service ? » (pas de sur-ingénierie).
- Tu as vérifié l'existence, la maintenance et la licence de chaque dépendance retenue.
- Le spike a confirmé ou fait changer au moins un ADR.
- Tu peux expliquer à voix haute ce qui se passe quand un joueur joue une carte.

## Tu sauras expliquer

- Pourquoi faire les choix techniques **avant** d'écrire les tickets, et pourquoi un choix reste une **hypothèse**.
- Ce que résolvent (et coûtent) *clean code*, *architecture en couches/hexagonale/Clean Architecture*, *DDD* — et quand c'est trop.
- À quoi sert un ADR, et pourquoi on y note le contexte et les conséquences.

## Parallèle avec le cursus

| Ce que tu fais ici | Leçon du cursus | Dans Facturo c'était… |
|---|---|---|
| Comparer et choisir une architecture | 3.1–3.3, 3.5 | MVC, couches, hexagonal « côte à côte » ; cas « l'agent propose un microservice d'export » |
| Langage commun et frontières | 3.4 (DDD) | le mot *client*, deux sens |
| Refuser le superflu | 3.7 | un exemple de sur-ingénierie à simplifier |
| Écrire un ADR | 9.6 | l'ADR du paiement en ligne |
| API, données, N+1 | 1.3–1.5 | l'API de Facturo, SQL/document/cache |
| Clean code | 2.2–2.4 | dix signaux de mauvais code, SOLID/DRY/KISS/YAGNI, « Et Clean Code ? » |
| Clean Architecture, architecture en oignon | 3.3 | même famille que l'hexagonale : les dépendances pointent vers le métier |

*« Clean Code » (2.4) et « Clean Architecture » (3.3) sont abordés dans le cursus : **cherche d'abord par toi-même** ce qu'ils recouvrent, puis compare avec ces leçons.* Fais l'atelier de **3** ou au moins 2 exercices et le quiz **avant** de valider la phase.

## Ressources

3.1–3.7 [Architectures](../../../cursus-orchestrateur/modules/module-03.html) · 1.1–1.5 [Web, API, SQL](../../../cursus-orchestrateur/modules/module-01.html) · 2.2–2.4 [Mauvais code, SOLID](../../../cursus-orchestrateur/modules/module-02.html) · 9.6 [ADR](../../../cursus-orchestrateur/modules/module-09.html)
