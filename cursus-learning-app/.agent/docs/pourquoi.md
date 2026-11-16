# Les « pourquoi » à faire découvrir

Un bon mentor ne fait pas un cours : il fait **découvrir pourquoi** les pratiques existent. Pour chaque « pourquoi » :
**amorce** (une question) → l'apprenant **formule une hypothèse** → **épreuve** (expérience ou recherche) → il **reformule** →
le mentor relie au cursus. Tu ne livres l'idée qu'après le rituel « langue au chat » (`voix-du-mentor.md`), et seulement
pour la part *fait* ; les choix de l'apprenant restent les siens.

Avant de valider une phase : l'apprenant sait expliquer, **avec ses mots et un exemple de son jeu**, les « pourquoi » de la
phase (liste « Tu sauras expliquer » dans `courses/phase-XX/README.md`).

---

## P1 — Pourquoi des tickets plutôt qu'un prompt à la volée ? *(intro phase 3 · épreuve phase 4)*

- **Amorce** : « Tu tapes "fais-moi le système de combat". Qu'est-ce qui peut mal tourner ? Comment sauras-tu que c'est fini ?
  Où est écrit ce qui a été décidé quand la session sera fermée ? »
- **À faire formuler** : (1) l'IA n'a comme mémoire que sa fenêtre de contexte — éphémère ; le ticket est la mémoire **durable,
  versionnée, relisable** ; (2) sans critères, « fini » = « ça a l'air de marcher » ; (3) un gros prompt donne un gros diff
  illisible ; (4) les trous du prompt sont comblés par des suppositions silencieuses = dérives ; (5) on peut tracer
  exigence → ticket → code → test ; (6) un ticket raté se relance pour peu ; un prompt géant raté coûte cher.
- **Épreuve (phase 4)** : la même petite fonction (ex. « piocher une carte ») en **une phrase** puis par **ticket complet**.
  L'apprenant écrit **d'abord ses prédictions** ; il compare ensuite taille du diff, hypothèses silencieuses, tests, temps de
  relecture, coût en jetons.
- **Cursus** : 7.3 (contexte), 8.1 (brief), 8.2 (tâches relues en 10 min), 2.5 (dérives), 11.4 (critères).

## P2 — Pourquoi les choix technologiques *avant* les specs détaillées ? *(phase 2)*

- **Amorce** : « Peux-tu écrire le critère "le coup est validé" sans savoir si la validation vit chez le joueur ou sur le serveur ?
  Que fait une IA à qui tu ne dis pas la stack ? »
- **À faire formuler** : la techno conditionne le faisable, le coût, les critères (latence, format des messages), les
  estimations ; sans stack explicite l'IA choisit à ta place — souvent l'outil le plus répandu, pas le plus adapté — et chaque
  ticket repart sur d'autres hypothèses ; l'ADR devient le contexte partagé (ton `AGENT.md`). **Nuance** : le *besoin*
  précède la techno ; la techno précède le *détail* des tickets ; et un choix est une **hypothèse** à confirmer (spike,
  prototype), donc réversible tant qu'on le sait.
- **Épreuve** : demander à une IA des critères d'acceptation **sans** puis **avec** la stack ; comparer. Spike de 2 h sur le
  point le plus risqué.
- **Cursus** : 3.5, 9.6 (ADR), 1.3–1.5.

## P3 — Pourquoi voir la maquette et les fonctionnalités *avant* de découper ? *(phase 3)*

- **Amorce** : « Découper *quoi* si on ne voit pas ce que le joueur voit et fait ? Que verra-t-on au bout du premier lot ? »
- **À faire formuler** : on ne découpe bien que ce qu'on voit ; la maquette et le prototype révèlent les fonctions et les états
  oubliés ; ils permettent des **tranches verticales** (jouables de bout en bout) plutôt que des couches ; ils réduisent
  les retours du client.
- **Cursus** : 11.2, 11.3, 11.6, 11.7.

## P4 — Pourquoi epics → stories → tâches ? Pourquoi des user stories avec critères d'acceptation ? *(phase 3)*

- **Amorce** : « Quelle différence entre "le combat" et "en tant que joueur, je veux attaquer pour réduire les PV adverses" ?
  Qui peut dire que c'est fini, et sur quoi ? »
- **À faire formuler** : **epic** = résultat de valeur pour le joueur/le client, plus gros qu'une story (le « lot » de 10.3) ;
  **story** = incrément vérifiable de valeur : *qui, quoi, pourquoi* — le **pourquoi** sert à arbitrer quand l'agent hésite ;
  **tâche** = unité de travail relue en 10 min pour **un** agent ; **critères d'acceptation** = contrat testable : définition de
  « fini », base du test rouge (4.4), base de la recette client ; une story sans critères n'est qu'une intention ; un
  critère en adjectif (« intuitif ») ne se teste pas.
- **Cursus** : 11.4 (stories, Étant donné/Quand/Alors), 8.2 (tâches), 10.3 (lots). *Epic et ticket y sont introduits (11.4, 8.2) : l'apprenant les cherche d'abord, puis compare.*

## P5 — Pourquoi faire générer les tickets *par l'IA, pour l'IA* plutôt que « tout d'un coup » ? *(phase 4)*

- **Amorce** : « Si l'IA sait écrire le jeu entier, pourquoi lui demander d'abord une liste de tickets ? »
- **À faire formuler** : (1) le plan devient **visible et relisable avant de dépenser** ; un plan interne d'agent est invisible ;
  (2) le découpage est le point de contrôle humain **le moins cher** ; (3) chaque ticket est un **brief autosuffisant** pour un
  contexte frais — la fenêtre de contexte se dilue sur un gros travail ; (4) vérification **incrémentale** : petit diff, test
  rouge par ticket ; (5) reprise : session perdue ≠ projet perdu ; (6) parallélisation avec dépendances ; (7) l'IA décompose et
  rédige vite et exhaustivement, mais **ne sait pas ce qui est prioritaire, hors périmètre ou voulu par la cliente** → l'humain
  relit la **couverture** (chaque exigence a ≥ 1 ticket ; chaque ticket renvoie à une exigence).
- **Pratique** : l'apprenant écrit le **prompt générateur** (entrées : stories + ADR + `AGENT.md` + modèle ; interdits :
  inventer des fonctionnalités). **Deux temps** : d'abord le plan (titres + dépendances) → validation humaine → puis le détail.
  **Juste-à-temps** : on ne détaille que l'epic en cours, les suivants restent au niveau story (sinon les tickets périment).
- **Cursus** : 8.1, 8.2, 8.5, 7.3.

## P6 — Pourquoi l'architecture compte : clean code, couches/hexagonal/Clean Architecture, DDD ? *(phase 2, éprouvé phase 5)*

- **Amorce** : « On change la formule des dégâts, on ajoute un type de carte, on remplace le canal réseau. Combien de fichiers
  touches-tu ? Qui sait ce que "carte" veut dire ? L'agent suivant sait-il où mettre une règle ? »
- **À faire formuler** — chaque démarche répond à un **problème** précis, et a un **coût** :
  - **Clean code** (noms, fonctions courtes, pas de duplication) : le code est lu bien plus qu'écrit ; **les agents lisent
    ton code comme contexte** — un code confus produit un agent confus. (2.2–2.4 : signaux, SOLID/DRY/KISS/YAGNI.)
  - **Couches, hexagonal, Clean Architecture** (famille « les dépendances pointent vers le cœur métier ») : les règles du jeu
    ne dépendent ni de l'écran ni du réseau ⇒ testables, rejouables, remplaçables. (3.2–3.3 ; la Clean Architecture est présentée en 3.3 comme de la même famille que l'hexagonal : à rechercher d'abord, puis à comparer.)
  - **DDD** : un **langage commun** (partie, tour, main, deck, carte…) et des **frontières** (règles d'une partie ≠ collection
    de cartes ≠ comptes) pour qu'un mot n'ait pas deux sens (3.4, « le mot *client* »). Pour ce jeu : DDD *léger* (vocabulaire et
    frontières), pas la boîte à outils complète.
  - **Monolithe modulaire vs services** (3.5) ; **quand c'est trop** (3.7 : sur-ingénierie).
  - **Avec des agents** : les règles d'architecture vont dans `AGENT.md`, sinon chaque agent invente sa structure (dérive).
- **Épreuve (fin du sprint A)** : « test du changement » — ajouter un type de carte ou modifier une formule : combien de
  fichiers ? ; « test du réseau » — les règles tournent-elles sans réseau ni écran ? ; « test du mot » — relever les mots
  ambigus du code.
- **Qui décide** : l'apprenant. Le mentor challenge (« quel problème **actuel** cela résout-il ? »), il ne choisit pas.
