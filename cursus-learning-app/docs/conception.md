# Conception du cours — décisions et risques

Document pour l'auteur du cours (pas pour l'apprenant).

## Principes

1. **Projet-driven, pas module-driven.** Les 12 modules du cursus sont redistribués sur le cycle de vie d'un vrai projet
   (cadrage → spec → choix → équipement → construction → fiabilisation → mise en ligne → pilotage → bilan). Les modules
   transversaux (10–12) démarrent dès la phase 1, comme le cursus le recommande.
2. **Un client, un scénario.** Un dossier secret (`client-bible.md`) et des événements (`S01`…`S06`) rendent le projet
   vivant : brief flou, contraintes cachées, changement d'avis, retard, incident, conformité.
3. **Mentor ≠ ouvrier.** Le mentor questionne ; il ne code que sur un **brief écrit par l'apprenant** (mode ouvrier),
   idéalement en session fraîche. C'est le module 8 du cursus joué en vrai, et ça évite le conflit d'intérêt
   « l'agent qui retient ses réponses est le même qui code à ta place ».
4. **Recherche imposée.** Le mentor ne cite pas de technos ni de jeux de référence avant l'apprenant : sinon l'apprenant
   recopie le choix du mentor.
5. **Pièges sûrs, dosés, débriefés.** Annoncés au début, surprise à la fin, avec des contrôles sans piège (savoir
   approuver aussi). Politique : `.agent/docs/traps-policy.md`.
6. **Skills installés par phase.** Chaque installation est un micro-cours sur ce qu'est un skill (7.4). Source unique
   `.agent/skills/`, liens vers `.claude/skills/` et `.agents/skills/`.
7. **Pas de doublon avec le cursus.** Le cours renvoie vers les leçons, il ne les réécrit pas. Chaque phase porte un tableau
   « Parallèle avec le cursus » (action ↔ leçon ↔ équivalent *Facturo*) et exige atelier/exercices + quiz avant validation.
8. **Techno → maquette → epics → stories → tickets.** La stack précède le détail des tickets ; on prépare des tickets
   plutôt qu'un « fais-moi le jeu ». L'apprenant le *prouve* lui-même (expérience A/B, phase 4). Les « pourquoi » (tickets,
   techno avant specs, epics/stories/critères, tickets par l'IA pour l'IA, architecture) sont dans `.agent/docs/pourquoi.md` :
   amorce → hypothèse → épreuve → reformulation, jamais un cours magistral.
9. **Cursus enrichi** : « epic », « ticket » et « critères d'acceptation » (11.4, 8.2, 10.3), « Clean Code » (2.4), « Clean Architecture / oignon » (3.3) y ont été ajoutés, avec glossaire. Le cours fait d'abord *chercher* l'apprenant, puis comparer avec ces leçons.
10. **Le B.A.-BA d'abord.** Chercher, vérifier (dater, recouper, tester), se tenir à jour (veille légère) et transformer ses erreurs en règles : c'est la première compétence, en tête de la page *Démarrer* du cursus. Le cours l'impose dès la phase 0 (carnet de veille + carnet de dérives), en fait un critère de passage (boucle d'amélioration) et la clôt en phase 9 (bilan de veille).

## Risques identifiés

| Risque | Parade |
|---|---|
| **Périmètre du jeu** (RPG + tactique + réseau + assets) trop gros pour un apprenant | MVP vertical imposé en phase 3 ; cartes au **tour par tour** (pas de netcode temps réel) ; client dont le tournoi se joue en 1v1 |
| L'apprenant lit `.agent/` (triche) | Honor system explicite ; l'objectif n'est pas la note. Dans le dépôt public, tout ce qui est privé vit dans `.agent/apprenant/` (**ignoré par Git** : état, registre des pièges, scénario de la cliente) ; le mentor génère le scénario s'il est absent ; le catalogue des pièges, lui, reste lisible |
| L'IA du mentor **fuit** la réponse ou dérive en « tout faire » | Règles 1–2 d'`AGENT.md`, échelle d'aide, mode ouvrier |
| Le mentor se trompe réellement | Prévu : une erreur involontaire prouvée = succès de l'apprenant, consignée |
| Contexte de session saturé / changement de CLI | Tout l'état dans `.agent/apprenant/` + `workspace/` ; rituel de fin de session |
| Chemins de skills qui changent selon les CLI | `install-skill.sh` + `.agent/docs/cli-compat.md` (à revérifier) ; `--copy` en repli |
| Faux fait introduit par un piège et retenu | Débrief obligatoire avec vérité sourcée avant la fin de la session |
| Paquet inventé (slopsquatting) | Jamais dans une commande exécutable |

## Compatibilité

`AGENT.md` est la source ; `AGENTS.md` (lien symbolique) pour Codex/Mistral Vibe ; `CLAUDE.md` et `GEMINI.md` importent
`@AGENT.md`. Détails et sources dans `.agent/docs/cli-compat.md`.

## Évolutions possibles

- Un **banc de pièges** sous forme de dépôts d'exemples pré-faits (chasse aux dérives *dans le jeu*) pour ne pas dépendre de
  l'injection par le mentor.
- Un **script de contrôle** (`check-phase.sh`) vérifiant la présence des livrables avant validation.
- Un **mode « équipe »** (plusieurs apprenants, un client commun).
- Variantes de scénario (autre jeu, autre client) pour rejouer le cours.
