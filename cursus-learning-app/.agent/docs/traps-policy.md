# Politique des pièges pédagogiques

Objectif : entraîner à **détecter, expliquer et corriger** des erreurs plausibles — dans une réponse d'IA, un document,
un diff ou un rapport de livraison. Le catalogue est dans `.agent/skills/mentor-traps/references/catalog.md`.

## Règles de sécurité (absolues)

- **Jamais destructif.** Pas de suppression de données, pas de code malveillant, pas d'exfiltration, pas de secret réel.
  Un faux secret est évidemment faux (préfixe `FAKE_`). Aucune action hors `workspace/`.
- **Réversible.** Avant d'altérer du code : l'apprenant a un commit propre (`git status` vide) ; l'altération est un
  patch local, consigné dans le ledger avec la façon de l'annuler.
- **Jamais de commande runnable avec un nom de paquet inventé** (risque de « slopsquatting » : un attaquant peut
  publier ce nom). Une dépendance fantôme n'apparaît que dans un texte à vérifier, jamais dans un `install` exécutable.
- **Aucune fausse information durable.** Tout piège est débriefé avec la vérité sourcée avant la fin de la session.
- **Pas d'humiliation** : un piège raté est une donnée d'apprentissage, pas un échec.

## Dosage

| Phases | Mode | Nombre |
|---|---|---|
| 1–3 | **Annoncé** : « J'ai introduit N erreurs dans ce document/cette recherche. Lesquelles ? » | 1–3 par livrable |
| 4–5 | **Annoncé puis mixte** : de plus en plus souvent « il y a peut-être des erreurs » | 1–2 par sprint |
| 6–8 | **Surprise** : aucune annonce. Zero-trust par défaut | 0–2 ; **au moins un contrôle sans piège** |
| 9 | Revue finale à l'aveugle | à définir |

Inclure régulièrement un **livrable sain** : l'apprenant qui « trouve » des fautes inexistantes apprend la
sur-méfiance — débriefe-le comme une erreur (cas A du module 2.6 : savoir approuver).

Un seul piège actif à la fois par livrable, de difficulté croissante (1 = visible à la lecture, 2 = visible à
l'exécution, 3 = visible seulement avec une vérification externe ou un test bien pensé). Adapte à `progress.md`.

## Cycle

1. **Choisir** un piège adapté à la phase et à ce que l'apprenant vient de produire (jamais hors sujet).
2. **Consigner** dans `.agent/apprenant/traps-ledger.md` : id, phase, où, symptôme, cause racine, comment l'annuler,
   statut `actif`. Fais-le **avant** d'injecter.
3. **Injecter** (texte, doc ou patch) sans commentaire révélateur ni commit nommé « piège ».
4. **Laisser chercher.** Aides : échelle de `method.md`. Jamais « tu as raison/tort » avant la conclusion de l'apprenant.
5. **Débrief** pour chaque piège, dans cet ordre : trouvé ? → **pourquoi ça ne marche pas** (cause racine, pas le
   symptôme) → comment il l'a détecté (méthode : lecture, test, source, exécution) → correction → **test de non-régression
   ou règle ajoutée** à son `AGENT.md`/checklist projet. Les pièges manqués : montre la piste qu'il aurait pu suivre.
6. **Clore** le ledger (`statut: débriefé`), et demande à l'apprenant son rapport (`courses/_modeles/rapport-piege.md`).

## Honnêteté du mentor

Le mentor peut aussi se tromper **sans le vouloir** : si l'apprenant le prouve, c'est une victoire, pas une faute.
Consigne-le dans `progress.md` (« erreur involontaire du mentor, détectée par l'apprenant »). Ne prétends jamais qu'une
erreur involontaire était un piège.
