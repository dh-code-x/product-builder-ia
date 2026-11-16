# Le parcours — 10 phases

Tu es **prestataire**. Une cliente, Maëlle, veut un **jeu web 2D multijoueur** mêlant RPG et tactique de cartes. Tu mènes le
projet de A à Z : tu cherches, tu décides, tu fais construire par des agents IA, tu vérifies, tu livres, tu pilotes.
Ton mentor est l'agent de ta CLI ; il te pose des questions plutôt que de te donner des réponses, et **il lui arrivera de
glisser des erreurs** que tu devras trouver.

> Théorie, exercices corrigés, quiz : le cursus voisin [`cursus-orchestrateur`](../../cursus-orchestrateur/index.html).
> Chaque phase contient un **« Parallèle avec le cursus »** : ce que tu fais ↔ la leçon ↔ ce que c'était dans *Facturo*
> (l'app fictive du cursus). Lis les leçons *quand tu en as besoin*, pas toutes d'avance, mais **fais l'atelier ou 2 exercices
> et le quiz avant de valider la phase**. Chaque phase se termine par **« Tu sauras expliquer »** : des « pourquoi » à
> maîtriser.

**Le fil du projet** : cadrage → **choix techniques** → maquette et fonctionnalités → **epics → stories (+ critères) → tickets**
→ construction ticket par ticket. On fixe la technique *avant* de rédiger les tickets, car ils en dépendent ; et on prépare des
tickets plutôt que de demander à l'IA « fais-moi le jeu » — tu le vérifieras toi-même en phase 4.

| # | Phase | Tu produis | Cursus |
|---|---|---|---|
| 0 | [Démarrage](phase-00-demarrage/README.md) | Contrat, environnement, journal | Démarrer |
| 1 | [Cadrage](phase-01-cadrage/README.md) | Veille, entretien, fiche de cadrage, risques | 10.1 · 11.1 · 12.1–2 |
| 2 | [Choix techniques](phase-02-choix-techniques/README.md) | Étude de technos, *pourquoi* de l'architecture, ADR, spike | 1.1–5 · 2.2–4 · 3.1–7 · 9.6 |
| 3 | [Spécification](phase-03-specification/README.md) | Maquette, fonctionnalités, prototype jetable, états, MVP, **epics et stories**, planning, devis | 8.2 · 10.2–4 · 11.2–7 · 12.5 |
| 4 | [Équiper ses agents](phase-04-equiper-ses-agents/README.md) | `AGENT.md` du jeu, dépôt, coûts, **tickets générés par l'IA**, expérience A/B | 1.6–7 · 7.1–7 · 8.1–2 |
| 5 | [Construire](phase-05-construire/README.md) | Un jeu jouable en ligne, revu et testé | 2 · 4 · 8 |
| 6 | [Fiabiliser](phase-06-fiabiliser/README.md) | Sécurité, e2e, observabilité, RGPD | 6 · 4.6–7 |
| 7 | [Mise en ligne](phase-07-mise-en-ligne/README.md) | CI/CD, déploiement, retour arrière | 5 |
| 8 | [Pilotage](phase-08-pilotage/README.md) | Incident, changements, feuille de route | 9 · 10.6 · 12.3–6 |
| 9 | [Bilan](phase-09-bilan/README.md) | Estimé vs réel, soutenance, revue à l'aveugle | 10.7 |

Durée indicative : 16 à 24 semaines à ~6 h/semaine ; à ton rythme. Les phases 1 à 3 sont peu techniques (et déterminantes) ;
la phase 5 est la plus longue (3 sprints).

## Règles du jeu

1. **Tu cherches, tu vérifies, tu te tiens à jour** — c'est le B.A.-BA de [Démarrer](../../cursus-orchestrateur/demarrer.html). Pour tout choix : ≥ 2 sources, dont une officielle, datées ([fiche](_modeles/fiche-recherche.md)). Chaque semaine, 30 minutes de veille (ton [carnet](_modeles/carnets.md)) ; chaque erreur répétée devient une règle écrite.
2. **L'IA t'aide, tu décides.** Tout livrable produit avec l'IA porte son bloc [traçabilité](_modeles/tracabilite.md).
3. **Rien n'est cru sur parole**, ni l'IA, ni ton mentor.
4. **Ton mentor te fera chercher.** Il ne te donne pas la réponse : il te titille, te donne un cap, te demande de revenir
   avec tes pistes. Si, après de vraies tentatives, tu sèches, il te demandera : *« Tu donnes ta langue au chat ? »*. Si tu
   réponds **« oui »**, il te donne la réponse **avec ses sources et la manière dont il l'a trouvée** — pour que tu apprennes
   la méthode, pas seulement le résultat.
5. **Tu passes à la phase suivante quand tu as les preuves**, pas quand tu as fini de lire.
6. **Ne lis pas `.agent/`** (scénario du client, registre des pièges) : ce serait te priver de ta propre formation.
7. Tes productions vivent dans [`workspace/`](../workspace/README.md).
