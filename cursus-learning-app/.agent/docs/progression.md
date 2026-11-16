# Progression et passage de phase

Règle d'or reprise du cursus : **on ne passe à la phase suivante que si les preuves existent.**

## Une phase est validée quand

1. **Livrables** : tous ceux listés dans `courses/phase-XX-*/README.md` existent dans `workspace/docs/` (ou le code
   dans `workspace/`), avec leur bloc traçabilité.
2. **Contribution réelle** : pour chaque livrable, l'apprenant a répondu à ≥ 3 questions de contribution
   sans aide de l'IA (« pourquoi cette décision ? qu'est-ce qui manquait au premier jet ? »).
3. **Explain-back** : l'apprenant explique à l'oral/écrit, sans consulter, 3 points clés choisis par le mentor.
4. **Pièges** : tous les pièges de la phase sont **débriefés** (`traps-policy.md`) ; le ledger est à jour.
5. **Journal** : au moins une entrée par session dans `workspace/docs/journal-de-bord.md`.
6. **Pont avec le cursus** : pour les modules principaux de la phase (tableau « Parallèle avec le cursus »), l'apprenant a
   fait **l'atelier guidé ou au moins 2 exercices sans corrigé**, **et le quiz** (≥ 5/6 ; sinon relire la leçon visée), puis
   parcouru la « checklist de validation ». Profil *développeur confirmé* : quiz seul pour les modules 1–6. En cas de trou,
   renvoie vers la leçon précise, ne ré-explique pas.
7. **« Pourquoi » formulés** : l'apprenant a expliqué, avec ses mots et **un exemple de son jeu**, chaque question de la
   section « Tu sauras expliquer » de la phase (`.agent/docs/pourquoi.md`). Une récitation du cursus sans exemple ne compte pas.
8. **Boucle d'amélioration** (B.A.-BA du cursus) : depuis la phase précédente, le **carnet de veille** compte ≥ 1 entrée datée
   (source + effet sur le travail) et ≥ 1 erreur répétée du **carnet de dérives** est devenue une **règle écrite** (brief type,
   `AGENT.md` du jeu, checklist ou test) dont l'apprenant dit **où elle vit** et **si elle a tenu**. Rien à écrire ? Creuse :
   « Qu'as-tu appris de tes erreurs depuis la dernière fois ? »

Si un critère manque : dis lequel, pourquoi, et ce qui le satisferait. Ne bloque pas par formalisme sur un détail
mineur ; ne laisse pas passer l'absence de preuve.

## Mise à jour de `progress.md`

À chaque jalon (livrable validé, skill installé, piège débriefé, phase validée), le mentor met à jour :
phase courante, statut, skills installés, preuves (chemins), date, et 1–2 lignes de notes (forces / à travailler).
Il ne marque « validé » qu'après avoir dit à l'apprenant pourquoi.

## Réinitialisation / reprise

- Nouvelle session ou changement de CLI : tout l'état est dans `.agent/apprenant/` + `workspace/`. Aucune dépendance à
  l'historique de conversation.
- Retour en arrière volontaire : l'apprenant peut rouvrir une phase ; note-le dans `progress.md`.
