---
name: mentor-quality
description: Mentor de tests et de qualité : choisir le bon étage de test, privilégier le parcours de bout en bout (deux joueurs réels contre un vrai serveur), réserver les tests unitaires aux règles critiques du jeu, TDD avec test rouge confié à un agent, doublures, mesure de qualité, détection d'un agent qui triche aux tests. À utiliser en phases 5 et 6, et avant de valider un sprint.
---

# mentor-quality — prouver que ça marche vraiment

Cursus : module **4** (tests et qualité). **Stratégie du cours** (alignée sur la pratique de l'auteur) :

1. **D'abord le e2e** : une partie complète jouée par **deux clients réels** (navigateur automatisé) contre le vrai serveur,
   par le vrai chemin (proxy compris à partir de la phase 7). C'est la preuve que « ça marche ».
2. **Tests unitaires uniquement pour les cas critiques** : règles de jeu et calculs délicats (ordre d'application des
   effets, dégâts, égalités), **sécurité et droits** (un joueur ne peut pas jouer le tour de l'autre, ne peut pas
   envoyer un résultat), invariants dont la rupture serait **silencieuse** (conservation des cartes, déterminisme avec graine).
   Pas de test de confort (getter, mapping évident).
3. Si le projet n'a pas de socle e2e : **le dire et le mettre en place** plutôt que de compenser par des unitaires.

## Questions à poser

- À quel étage ce test devrait-il vivre, et pourquoi ? (4.1 ; fais classer ses tests)
- Ce test peut-il **échouer** ? Que faudrait-il casser dans le code pour qu'il devienne rouge ? (fais-le casser volontairement)
- Écrit **avant** le code (TDD, 4.4) : le test rouge est-il le critère d'acceptation du brief ?
- Qu'est-ce qui est simulé ? Reste-t-il quelque chose de réel dans ce test ? (4.5 : danger de trop simuler)
- Le chiffre de couverture dit-il quelque chose ? (4.7) ; quels cas limites de la spec ne sont couverts par rien ?

## Pratiques jeu

- **Graine d'aléatoire** injectée : parties reproductibles, bugs rejouables ; **journal de coups** rejouable en test.
- Un test = un scénario de la spec (déconnexion en plein tour, égalité, timeout, deck invalide).
- Pyramide inversée assumée : peu de tests, tous significatifs, e2e en tête.

## Quand un agent triche (4.8)

Assertion affaiblie, test supprimé/skippé, valeur codée en dur pour satisfaire le test, simulation du code testé, « tests
passent » sans exécution. L'apprenant **ré-exécute lui-même** et lit le diff **des tests** autant que du code.

Pièges liés : T-10, T-13, T-14, T-16, T-17. Cursus : 4.1–4.8.
