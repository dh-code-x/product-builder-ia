# Phase 3 — Spécification : maquette, fonctionnalités, epics et stories

**Durée** : 3–4 semaines · **Skill installé** : `mentor-tickets` (avec `mentor-product`, déjà installé)

## Situation

Les choix techniques sont posés (ADR). Il faut maintenant transformer l'envie de Maëlle en **ce que le jeu fait exactement** —
assez précisément pour que des agents puissent le construire, et pour qu'elle puisse dire « oui, c'est ça ». On ne découpe
bien que ce qu'on **voit** : d'abord la maquette et les fonctionnalités, ensuite le découpage.

## Missions

1. **Parcours joueur** de bout en bout, avant tout écran.
2. **Maquettes** simples des écrans clés (papier, tableau, outil de ton choix) et **liste des fonctionnalités**.
3. **Prototype jetable** pour faire *comprendre le principe du jeu* (voir encadré).
4. **États d'une partie** (et d'une carte) : diagramme, transitions, sorties.
5. **MVP en tranches verticales** : la première tranche doit être **jouable**.
6. **Epics** : une epic = un résultat de valeur pour le joueur, en général une tranche du MVP.
7. **Stories** de chaque epic, avec critères d'acceptation **vérifiables** (Étant donné / Quand / Alors) **et cas limites**.
8. **Matrice de couverture** : chaque fonctionnalité a ≥ 1 story ; chaque story renvoie à une fonctionnalité.
9. **Planning** : lots, dépendances, chemin critique, **estimation en fourchettes**, marge.
10. **Devis** : ce qui est inclus, hypothèses, ce qui déclenche un avenant.
11. **Validation du client** : présente la spec **et ton prototype** à Maëlle (rôle joué) ; elle demandera une modification.

L'IA peut produire un premier jet ; **ta contribution doit être visible** (bloc traçabilité). Le mentor te posera des questions
pour la vérifier. Les **tickets d'agent** (tâches) viennent à la phase 4, quand ton `AGENT.md` existe.

### Le prototype jetable

Un texte de spécification ne fait pas *sentir* un jeu. Le prototype sert à **expliquer le principe** : un tour, une carte,
une action, ce qui rend la partie intéressante.

- **Format libre**, le plus rapide qui répond à ta question : dessins sur papier photographiés, cartes imprimées ou
  découpées pour jouer un duel à la main, maquette cliquable, mini page HTML faite avec un agent.
- **Une question précise** à trancher (« un nouveau comprend-il un tour en 2 minutes ? », « le choix de carte est-il
  intéressant ? »). Pas de question, pas de prototype.
- **Durée plafonnée : une demi-journée à une journée.** Moche mais clair vaut mieux que joli et tardif.
- **Jetable.** Ce n'est pas le début du jeu. Si tu veux en réutiliser le code, c'est une décision à justifier (ADR) — le plus
  souvent, on le jette.
- **Testé sur un tiers** non technique, sans que tu expliques : note ce qui n'est pas compris. Maëlle le verra aussi.
- Fait avec l'IA ? Écris d'abord un **brief court**, et ajoute la traçabilité.
- Compare-le à tes stories : le prototype et la spec disent-ils *la même chose* ?

## Livrables

`03-parcours.md` · `03-maquettes/` · `03-fonctionnalites.md` · `03-prototype/` + `03-prototype-enseignements.md` (la question,
ce qui a été compris ou non, ce que ça change dans la spec) · `03-etats-partie.md` · `03-mvp.md` · `tickets/EPxx-…` (epics) et
`tickets/EPxx-USyy-…` (stories) — [modèle](../_modeles/ticket.md) · `03-couverture.md` · `03-planning.md` · `03-devis.md` ·
`03-validation-client.md` · rapports de pièges.

## Critères de passage

- Le prototype répond à une question écrite, a été essayé par au moins une personne extérieure, et **a modifié ta spec**
  sur au moins un point ; prototype et spec ne se contredisent pas.
- Chaque epic est une tranche **jouable** ; aucune n'est une « couche technique ».
- Chaque story a des critères **mesurables** et au moins un cas limite.
- Aucun état sans sortie ; aucune transition « magique ».
- La matrice de couverture n'a ni exigence orpheline, ni story inventée.
- Le planning montre sa marge et son chemin critique ; l'estimation est une fourchette.
- Le client a validé par écrit, avec la modification demandée traitée.

## Tu sauras expliquer

- Pourquoi voir la **maquette et les fonctionnalités avant** de découper.
- La différence **epic / story / tâche**, et pourquoi une story porte un *pourquoi*.
- Pourquoi des **critères d'acceptation** (et pourquoi pas « intuitif » ni « rapide »).
- Pourquoi on prépare des **tickets** plutôt que de demander à l'IA « fais-moi le jeu » *(tu le vérifieras en phase 4)*.

## Parallèle avec le cursus

| Ce que tu fais ici | Leçon du cursus | Dans Facturo c'était… |
|---|---|---|
| Parcours puis écrans | 11.2, 11.3 | parcours actuel puis parcours cible de l'export de Marie ; maquette sans « dessiner joli » |
| Stories + critères + cas limites | 11.4 | la story du comptable : export CSV du mois, 3 critères, tableau des cas limites |
| Epic / story / tâche ; pourquoi des critères | 11.4 | « Epic, story, tâche : trois niveaux » et « Pourquoi des critères d'acceptation ? » |
| États d'une partie | 11.5 | les états d'une facture |
| MVP en tranches verticales | 11.6 | un export complet mais minimal, puis amélioré (tranches verticales) |
| Découper en lots, planifier, estimer | 10.2–10.4 | planifier l'export des devis, estimer l'export comptable |
| Écrire ce qui engage | 12.5 | un devis à corriger |
| Spécification pour un agent | 11.7 | de l'entretien à la spécification |

*« Epic » et « ticket » sont introduits dans le cursus (11.4 et 8.2) : **cherche-les d'abord par toi-même**, puis compare avec ces leçons et relie-les aux **lots** (10.3).* Fais l'atelier de **11** ou au moins 2 exercices et le quiz **avant** de valider la phase.

## Ressources

11.2–11.7 [Produit et conception](../../../cursus-orchestrateur/modules/module-11.html) · 10.2–10.4 [Méthode, planning, estimation](../../../cursus-orchestrateur/modules/module-10.html) · 8.2 [Découper en tâches](../../../cursus-orchestrateur/modules/module-08.html) · 12.5 [Écrire ce qui engage](../../../cursus-orchestrateur/modules/module-12.html)
