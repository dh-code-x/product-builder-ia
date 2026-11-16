# Modèle de ticket

> Rangés dans `workspace/tickets/` : `EP01-titre.md` (epic, avec la liste de ses stories), `EP01-US03-titre.md` (story),
> `EP01-US03-T2-titre.md` (tâche = ticket d'agent). Le **plan** d'abord, le détail ensuite, et seulement pour l'epic en cours.

## Epic — `EPxx`

- **Résultat de valeur** (ce que le joueur/la cliente peut faire en plus) :
- **Tranche verticale ?** (jouable de bout en bout) :
- **Stories** :
- **Hors périmètre** :

## Story — `EPxx-USyy`

**En tant que** … **je veux** … **afin de** …

| # | Étant donné… | Quand… | Alors… (valeur mesurable) |
|---|---|---|---|
| 1 | | | |

Cas limites couverts : vide · grand · invalide · doublon · concurrence · _(propres au jeu : déconnexion, délai, égalité…)_
Lié à la fonctionnalité / au prototype : _(référence)_

## Tâche (ticket d'agent) — `EPxx-USyy-Tz`

- **Objectif** (une phrase, un résultat vérifiable) :
- **Contexte minimal** (ce que l'agent doit savoir ; renvoie à `AGENT.md` / ADR, ne les recopie pas) :
- **Critères d'acceptation** (repris de la story, mesurables) :
- **Test rouge à faire passer** (e2e de préférence ; unitaire seulement pour une règle critique) :
- **Fichiers / zone concernés** · **À ne pas toucher** :
- **Hors périmètre** (explicite) :
- **Dépend de** · **Parallélisable avec** :
- **Vérification** (commandes exactes) :
- **Rapport attendu** (ce que l'agent doit lister : fichiers modifiés, hypothèses, ce qu'il n'a pas pu vérifier) :
- **Estimation** (fourchette) · **Branche** · **Statut** (`à faire / en cours / en revue / fait`) · **Motif de rejet éventuel** :

Taille : se relit en **10 minutes**, se vérifie **seule**.
