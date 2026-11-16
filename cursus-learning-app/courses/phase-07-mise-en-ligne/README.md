# Phase 7 — Mise en ligne

**Durée** : 2 semaines · **Skill installé** : `mentor-devops`

## Situation

Le tournoi approche. Le jeu doit tourner sur un vrai serveur, pour un budget d'hébergement que Maëlle ne veut pas dépasser,
et on doit pouvoir **revenir en arrière** si une mise à jour casse les parties.

## Missions

1. **Choisis l'hébergement** : options, coûts réels, limites (temps réel !), conformité ; sources datées.
2. **Conteneurise** : image propre, pas de secret dedans, orchestration locale de l'ensemble.
3. **Mets en place le pipeline** : chaque étape a une raison ; il doit pouvoir **échouer**.
4. **Déploie** et teste **par le chemin réel** (proxy compris), pas seulement en local.
5. **Joue un déploiement raté puis le retour arrière** (procédure écrite d'abord, chronométrée ensuite).
6. **Sauvegarde et restaure** réellement ; migration de base sans coupure.
7. **Piège** : « ça marche chez moi » ou un pipeline un peu trop optimiste.

## Livrables

`07-hebergement.md` · Dockerfile/compose · pipeline CI/CD · `07-procedure-retour-arriere.md` (avec temps mesuré) ·
`07-sauvegardes.md` (restauration testée) · rapports de pièges.

## Critères de passage

- Le jeu est en ligne ; deux joueurs distants finissent une partie.
- Le retour arrière a été **joué** et chronométré.
- Une restauration depuis sauvegarde a été réussie.
- Coût mensuel chiffré, dans l'enveloppe du client.

## Tu sauras expliquer

- Pourquoi « ça marche chez moi » ne prouve rien pour du **temps réel** (proxy, délais, WebSocket).
- Pourquoi le **retour arrière** se teste avant d'en avoir besoin, et pourquoi une sauvegarde ne vaut que si on l'a **restaurée**.
- Pourquoi une CI qui ne peut jamais échouer est un décor.

## Parallèle avec le cursus

| Ce que tu fais ici | Leçon du cursus | Dans Facturo c'était… |
|---|---|---|
| Hébergement, secrets | 5.1, 5.7 | derrière l'adresse web, choisir un hébergement |
| Conteneurs | 5.2 | le Dockerfile de l'API, docker-compose |
| Pipeline | 5.3 | le `.gitlab-ci.yml` de Facturo |
| Stratégie de déploiement | 5.4 | choisir comment déployer |
| Migrations, sauvegardes | 5.5–5.6 | changer la base sans coupure, restaurer |
| Déploiement raté puis retour arrière | atelier 5 | *Un déploiement raté, puis le retour arrière* |

Fais l'atelier de **5** (*déploiement raté puis retour arrière*) ou 2 exercices, et le quiz de **5**, avant de valider.

## Ressources

5.1–5.7 [Serveur, DevOps, CI/CD](../../../cursus-orchestrateur/modules/module-05.html)
