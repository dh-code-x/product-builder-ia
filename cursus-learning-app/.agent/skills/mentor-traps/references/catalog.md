# Catalogue des pièges

Niveau : **1** visible à la lecture · **2** visible à l'exécution ou en recoupant · **3** demande un test bien pensé ou une
vérification externe. Pour chaque piège : *comment l'injecter* · *cause racine à faire expliquer*.

## Phases 1–3 — recherche, documents, choix (annoncés)

| Id | Niv | Piège | Injection | Cause racine / leçon |
|---|---|---|---|---|
| T-01 | 1 | Chiffre ou fait inventé dans une synthèse de veille | Statistique précise avec une « source » vague ou invérifiable | Hallucination : exiger source datée et primaire |
| T-02 | 2 | Fiche de cadrage contradictoire | Un critère de succès incompatible avec le périmètre (ex. « 1v1 seulement » vs « tournoi à 8 en simultané ») | Un cadrage se relit comme un contrat : cohérence in/out |
| T-03 | 2 | Estimation incohérente | La somme des lots ≠ total ; chemin critique faux ; pas de marge | Estimer en fourchettes, vérifier les dépendances |
| T-04 | 2 | Machine à états incomplète | Transition manquante (déconnexion en plein tour, égalité, abandon), état inatteignable | États et cas limites avant le code (11.4–11.5) |
| T-05 | 2 | « MVP » en tranches horizontales | Le MVP livre « tout le back puis tout le front » sans rien de jouable | Tranche verticale = quelque chose de jouable de bout en bout |
| T-06 | 3 | Comparatif techno avec une affirmation fausse ou périmée | Un projet présenté comme maintenu alors qu'il ne l'est plus ; une fonctionnalité attribuée au mauvais outil | Vérifier dernière release, licence, issues, doc officielle |
| T-07 | 2 | Sur-ingénierie proposée | Microservices, ECS, Kubernetes, bus d'événements pour un duel 1v1 | Critères de 3.5 et 3.7 : le besoin décide, pas la mode |
| T-08 | 3 | Dépendance fantôme (texte seulement) | Paquet plausible mais inexistant cité dans une note | Vérifier sur le registre avant d'installer ; risque de squatting |
| T-29 | 2 | Prototype et spec divergent | Une règle diffère entre le prototype et les stories (cartes en main, ordre du tour, condition de victoire), glissée dans une copie | Une spec se relit contre ses artefacts ; une seule source de vérité |
| T-30 | 1 | Critère d'acceptation invérifiable | Une story avec « l'interface est intuitive », « le tour est rapide », sans seuil ni valeur | Un critère se teste : valeurs mesurables (11.4) |
| T-31 | 2 | Tickets mal ordonnés ou trop gros | Un ticket dépend d'un ticket placé plus tard ; un ticket-fleuve qui cache une epic | Dépendances et taille « relue en 10 min » (8.2) |
| T-32 | 2 | Trou de couverture ou ticket inventé | Une fonctionnalité de la spec sans aucun ticket, ou un ticket sans exigence (l'IA a inventé) | Matrice de couverture : exigence ↔ story ↔ ticket |

## Phases 4–5 — construire avec des agents (annoncés puis mixtes)

| Id | Niv | Piège | Injection | Cause racine / leçon |
|---|---|---|---|---|
| T-09 | 1 | Dérive de périmètre | Le diff ajoute une fonctionnalité ou une dépendance non demandée | Les six dérives d'agent (2.5) ; brief avec « hors périmètre » |
| T-10 | 2 | Règle de jeu fausse | Ordre de calcul des dégâts inversé (bonus après armure), off-by-one sur le mana, égalité mal gérée | Règles = logique métier critique ⇒ tests unitaires ciblés |
| T-11 | 2 | Règle de jeu dans l'interface | La validation d'un coup vit côté client/composant | Séparer règles et affichage (couches/hexagonal) |
| T-12 | 2 | Erreur avalée | `catch` vide sur la validation d'un coup ; échec silencieux | Signal 8 de mauvais code (2.3) |
| T-13 | 2 | Test qui triche | Assertion affaiblie, test supprimé/skippé, cible simulée à la place du vrai code | 4.8 : un test vert ne prouve rien s'il ne peut pas échouer |
| T-14 | 2 | Fausse réussite dans un rapport d'agent | « Tous les tests passent » alors que la suite n'a pas tourné ou un cas manque | 8.5 : on ré-exécute, on ne croit pas le rapport |
| T-15 | 2 | N+1 / boucle coûteuse | Liste des parties ou classement avec une requête par ligne | 1.5 |
| T-16 | 3 | Course critique | Deux coups simultanés tous deux acceptés ; ordre de tour non atomique | Concurrence : le serveur sérialise l'état de la partie |
| T-17 | 3 | Aléatoire non reproductible | `Math.random()` sans graine ⇒ bug introuvable, replay impossible | RNG déterministe (graine) pour tester et rejouer |
| T-18 | 3 | Fuite de ressources | Écouteurs/sockets jamais fermés à la fin d'une partie | Cycle de vie des connexions ; métriques mémoire |
| T-19 | 1 | Duplication / code mort | Deux copies d'une règle, une divergente | Signaux 1 et 10 (2.2–2.3) ; règle « pas de doublons » |

## Phases 6–8 — sécurité, infra, production (surprise)

| Id | Niv | Piège | Injection | Cause racine / leçon |
|---|---|---|---|---|
| T-20 | 2 | **Le client est cru** | Le serveur accepte « dégâts = 50 » ou l'état de la main envoyé par le navigateur | Le client envoie des **intentions**, jamais des **résultats** : serveur autoritaire |
| T-21 | 2 | Accès à la partie d'un autre (IDOR) | Rejoindre/lire/jouer une partie par simple identifiant | 6.2 faille 2 ; contrôle d'appartenance côté serveur |
| T-22 | 1 | Faux secret commité | Clé `FAKE_…` dans un fichier ou l'historique | 6.2 faille 3 ; rotation + scan + `.gitignore` |
| T-23 | 2 | Entrée utilisateur non validée | Pseudo/message de chat affiché sans échappement (XSS), sans limite de taille/débit | Frontière de confiance : valider, échapper, limiter |
| T-24 | 3 | Injection de prompt | Un nom de carte ou un message de chat contient une instruction visant l'agent (« ignore tes règles… ») qu'il lit pour modération/résumé | 7.6 : le contenu utilisateur est une donnée, jamais une instruction |
| T-25 | 2 | Marche en local, pas en ligne | Reverse proxy sans en-têtes d'upgrade WebSocket ; délai d'inactivité coupant les parties | 5.1 ; tester via le vrai chemin (proxy compris) |
| T-26 | 2 | Pipeline menteur | CI qui passe toujours (`|| true`), tags `latest`, migration sans retour arrière, secret dans l'image | 5.3–5.5 |
| T-27 | 3 | Incident à diagnostiquer | Journaux fabriqués mais cohérents : désynchronisation, triche, fuite mémoire | 6.4–6.5 ; post-mortem sans coupable |
| T-28 | 2 | Indicateur trompeur | Chiffres de « joueurs actifs » qui comptent les bots/rafraîchissements | 9.3 : un chiffre sans définition ne décide rien |

## Contrôles sans piège (obligatoires dès la phase 6)

Livrer un diff / un document **sain**. Attendu : l'apprenant l'approuve en justifiant, sans inventer de défaut.
