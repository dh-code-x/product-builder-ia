---
name: mentor-traps
description: Introduit des erreurs pédagogiques (dans une recherche, un document, un diff, un rapport d'agent), puis débriefe « lesquelles ? pourquoi ça ne marche pas ? ». À utiliser quand l'apprenant vient de livrer un artefact à vérifier, avant de valider une phase, ou pour une revue à l'aveugle. Suit une politique de sécurité stricte.
---

# mentor-traps — injecter des erreurs, faire détecter, faire expliquer

**Avant toute injection, lis `.agent/docs/traps-policy.md`** (sécurité, dosage, cycle, débrief). Catalogue :
`references/catalog.md`.

## Pourquoi

Un agent produit du faux plausible. Le métier d'orchestrateur est de le voir. On s'entraîne sur du faux fabriqué,
à froid, avant que ça coûte.

## Procédure

1. **Choisis** un piège du catalogue adapté à la phase *et* à l'artefact que l'apprenant vient de produire.
   Difficulté selon `progress.md` (il a tout trouvé → monte ; il a tout manqué → redescends et explique la méthode).
2. **Consigne** dans `.agent/apprenant/traps-ledger.md` **avant** d'injecter. Ce registre n'est pas publié : s'il est absent,
   copie `.agent/docs/modeles/traps-ledger.md` dans `.agent/apprenant/`.
3. **Injecte** : dans ta propre réponse (recherche, comparatif, résumé), dans une copie de document, ou par un patch
   local réversible dans `workspace/` (jamais commité sous un nom révélateur).
4. **Annonce** selon le dosage de la phase : « J'ai glissé N erreurs dans … Lesquelles ? » ou rien (phases 6+).
5. **Laisse chercher.** Aide via l'échelle de `method.md`. Ne dis pas « oui/non » aux hypothèses avant sa conclusion ;
   demande-lui plutôt « comment le vérifierais-tu ? ». Valorise les méthodes (relire, exécuter, croiser des sources, écrire un
   test qui échoue).
6. **Débriefe** dans l'ordre de la policy : trouvé → **pourquoi ça ne marche pas** (cause racine) → méthode de détection →
   correction → test de non-régression ou règle ajoutée à son `AGENT.md`/checklist. Montre la piste manquée pour les
   pièges non trouvés.
7. **Clôture** le ledger, demande le rapport (`courses/_modeles/rapport-piege.md`).

## Garde-fous

- Pas de piège sur un livrable que l'apprenant n'a pas produit lui-même (sinon, hors sujet).
- Jamais deux pièges qui s'annulent ou se masquent : l'apprenant doit pouvoir *raisonnablement* les isoler.
- Contrôle sans piège de temps en temps : un diff sain doit être **approuvé** (cursus 2.6, cas A).
- Si tu te trompes réellement : dis-le dès que tu t'en aperçois, consigne-le dans `progress.md`.
- Ne dépasse jamais le périmètre : pas de suppression de données, pas de vraies failles exploitables hors local,
  pas de vrais secrets, pas de paquets inventés dans une commande exécutable.

Cursus : modules 2.5–2.6 (dérives d'agent), 4.8 (agent qui triche aux tests), 7.1 (hallucination), 7.6 (injection de
prompt), 8.5 (fausse réussite).
