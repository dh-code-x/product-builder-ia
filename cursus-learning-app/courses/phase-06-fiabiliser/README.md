# Phase 6 — Fiabiliser

**Durée** : 2–3 semaines · **Skill installé** : `mentor-security`

## Situation

Le jeu marche entre amis. Mais Maëlle a peur des tricheurs, et des joueurs de 16–17 ans arrivent. Avant d'ouvrir au public :
qui peut tricher, qui peut lire ce qu'il ne doit pas, qui peut tout casser ?

## Missions

1. **Frontières de confiance** : dessine qui parle à qui et où la confiance s'arrête.
2. **Cherche les menaces propres à un jeu multijoueur** (sources officielles : OWASP, CNIL, documentation des outils).
3. **Attaque ton propre jeu** : tente de tricher, de lire la partie d'un autre, d'envoyer des données abusives.
4. **Protège et prouve** : chaque protection a son test (e2e + tests unitaires de droits).
5. **Observabilité** : journaux, métriques, alertes utiles.
6. **Données personnelles** : registre des données, durées, droits, cas des mineurs.
7. **Pièges en surprise** : ici, le mentor ne prévient plus. Au moins une revue sera saine : sache l'approuver.

## Livrables

`06-modele-de-menaces.md` · tests de sécurité · `06-observabilite.md` · `06-donnees-personnelles.md` · correctifs commités ·
rapports de pièges.

## Critères de passage

- Le serveur est **autoritaire** : prouve-le par un test qui échoue si on lui envoie un résultat forgé.
- Aucun secret dans le dépôt (historique inclus) ; dépendances auditées.
- Tu retrouves une partie dans les journaux à partir de son identifiant.
- Ton registre RGPD cite ses sources et reconnaît ce qu'il ne sait pas.

## Tu sauras expliquer

- Pourquoi le serveur est **autoritaire** : tout ce qui vient du client est une intention, jamais un résultat.
- Pourquoi une protection n'existe que si un **test** l'attaque.
- Pourquoi un post-mortem cherche une **cause racine**, pas un coupable.

## Parallèle avec le cursus

| Ce que tu fais ici | Leçon du cursus | Dans Facturo c'était… |
|---|---|---|
| Frontières de confiance | 6.1 | penser en frontières |
| Trois failles | 6.2 | injection SQL, accès à une facture d'autrui, secret oublié |
| Authentification, dépendances | 6.3 | mises à jour et audit |
| Observabilité | 6.4 | voir ce qui se passe |
| Incident, post-mortem | 6.5 | conduire un incident |
| Données personnelles | 6.6 | RGPD |
| Injection de prompt | 7.6 | le ticket piégé |

Fais l'atelier de **6** (*la revue de sécurité d'une modification*) ou 2 exercices, et le quiz de **6**, avant de valider.

## Ressources

6.1–6.6 [Sécurité, observabilité, RGPD](../../../cursus-orchestrateur/modules/module-06.html) · 4.6–4.7 [E2E et mesure](../../../cursus-orchestrateur/modules/module-04.html) · 7.6 [Injection de prompt](../../../cursus-orchestrateur/modules/module-07.html)
