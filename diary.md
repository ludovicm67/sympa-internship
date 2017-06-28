% DIARY
% Ludovic <span style="font-variant: small-caps">Muller</span>
% Mercredi 28 juin 2017


# Introduction 

Ce stage sur `sympa-vue` du 22 mai au 30 juin 2017 fait suite à la participation au Hackathon pour les vingt ans de Sympa, qui a eu lieu le 1er et 2 avril 2017 auquel j’ai pu participer sur la partie frontend.

C’était principalement un moment d’échanges afin de voir vers quoi est-ce que l’on désire s’orienter pour les versions futures de Sympa. On a également commencé à travaillé sur la toute nouvelle interface et ainsi y écrire les premières lignes de codes de l’UI de Sympa 7, les premières briques pour un Sympa de nouvelle génération !


Contraintes fixées lors de ce Hackathon pour l’UI :

 - Utiliser VueJS : avantage du fonctionnement par composants, gestion du routing, performances (ne change que ce qui doit être changé), …

 - Utiliser le Material design : les utilisateurs sont habitués maintenant à utiliser ce type d’interface, ils ne seront pas trop dépaysés. De plus se forcer à suivre des règles de design nous assure de ne pas trop diverger et donc de ne pas partir dans tous les sens et assurer une certaine cohérence.

\newpage

# Semaine 1 (du 22 au 26 mai)

 - Corrections de certains points du design

    - sidebar

    - améliorations du layout du composant Discussion

    - etc...

 - Ecriture d’un peu de doc :

    - Mise en place d’un mailserver avec James *(a nécessité de contacter directement les développeurs du projet afin de faire en sorte de trouver un moyen de faire tourner James avec un support du protocole JMAP)*:

        - Comment l’installer

        - Comment ajouter un utilisateur

        - Comment se connecter avec Thunderbird au serveur de mails des différents utilisateurs

    - Fonctionnement de JMAP (explication de certaines parties non ou très peu documentées sur jmap.io)

        - Comment avoir un `continuationToken`

        - Comment avoir un `accessToken`

        - Comment récupérer les différents endpoints

        - Comment révoquer un token

 - Implémentation d’un accès à un serveur JMAP depuis l’interface web (servira à terme à afficher les archives pour remplacer MHonArc)

 - Ajouts et modifications de composants :

    - `DiscussionSubscribed` : liste des discussions à laquelle on est abonné (là où j’ai mis en place temporairement l’implémentation JMAP)

    - `Listmaster` : intégration du sketching réalisé par sandhose

\newpage

# Semaines 2 & 3 (du 29 mai au 9 juin)

Après discussion avec sandhose, il s’est avéré que la technologie que l’on utilisait pour le front `vue-material` rencontrait des soucis de performances.

N’étant développé que par peu de personnes, il était difficile pour eux d’assurer des performances à un excellent niveau tout en ayant un vaste choix de composants.
On a donc cherché à remplacer `vue-material` par quelque chose d’équivalent. On a trouvé assez rapidement `vue-mdl`, qui, développé par Google assure quant à lui des performances à la hauteur et une liste de composants quasi similaire.

J’ai donc dû réadapter tout le code afin de le rendre fonctionnel et avec une esthétique quasi similaire à ce qu’on avait précédemment. J’ai donc durant ces deux semaines réalisé un important travail de réécriture de code, et cherché comment avoir des en-têtes particulières en fonctions des différents composants. Certains composants, comme par exemple les listes extensibles n’étaient plus disponibles, j’ai donc réécrit certains composants également.


Ainsi pour résumer :

 - Changement de techno : `vue-material` -> `vue-mdl` en raison de problèmes de performances.

 - Réécriture d’une bonne partie du code pour faire en sorte d’avoir quelque chose d’équivalent à ce que l’on avait précédemment

 - Réécriture de certains composants qui n’étaient plus disponibles, comme par exemple les listes extensibles

 - J’ai fait en sorte que l’on puisse avoir des en-têtes qui peuvent changer en fonction de la page sur laquelle on se trouve

\newpage

# Semaine 4 (du 12 au 16 juin)

 - Travail sur le composant des Datasources :

    - Séparation en deux panneaux => une grande partie concernant le design

    - Système de routing interne, en prenant en compte les mobiles et les PC

    - Ajout des pages d’ajout et d’édition d’une source de données => création de composants pour avoir de jolis boutons radios par exemple

 - Quelques corrections/améliorations sur certains composants :

    - `ExpandList` : changement de la taille minimale

    - `Listmaster` : amélioration de la page Summary : 

        - aperçu de ce à quoi devrait ressembler un message d’erreur

        - améliorations au niveau du layout

    - Ajout de la page listant les membres dans le composant `Listmaster`


\newpage


# Semaine 5 (du 19 au 23 juin)

Debian Stretch, ou Debian 9, venait de sortir; j’ai donc choisis de formater complètement mon PC portable dans le but de passer sur un Debian propre. J’ai donc pris quelques temps pour configurer à nouveau tout correctement, et j’ai également pris la décision de changer d’éditeur de texte. Je passe donc de Sublime Text à `vim`.

## Pourquoi passer sur Debian ?

Un grand nombre de  serveurs tournent actuellement sur Debian, du coup je me suis dit que si j’arrivais à faire tourner un Sympa sur ma machine en local, mes changements ne devrait pas poser de problèmes au autres machines. C’est aussi à ce moment là qu’on a décidé avec la communauté d’essayer d’intégrer certains composants que j’ai développé pour Sympa 7 dans l’interface actuelle de Sympa, dans le but d’avoir du feedback principalement, et également pour que le backend puisse voir vers quoi est-ce que l’on aura vraiment besoin comme données pour la suite.

## Pourquoi passer à `vim` ?

Sur la majorité des serveurs, `vi` ou `vim` est déjà installé; du coup prendre de bonnes habitudes avec `vim` dès à présent ne peut ne m’être que profitable !

## L'installation de `sympa`

J’ai donc cherché à installer Sympa sur ma machine en local.
J’ai tout d’abord tenté d’installer Sympa depuis les dépôts Debian avec un `apt install sympa`; après avoir installé quelques dépendances manquantes et un peu de configuration (notamment du serveur nginx), je suis parvenu à avoir une instance de Sympa à peu près fonctionnelle en locale.

Cependant quand j’ai souhaité éditer un fichier de template, je me suis rendu compte qu’il y a une énormément de changements entre la version que j’ai installé et les sources disponible depuis le dépôt GitHub du projet. J’ai donc désinstallé Sympa et tenté de l'installer depuis les sources.. J’avais beaucoup de problèmes de dépendances manquantes, du coup j’ai réinstallé Sympa depuis les dépôts, ce qui m’a permi de résoudre la majorité des problèmes que j’ai pu rencontrer, et qui m'a donc permis de faire fonctionner une instance de Sympa depuis le la branche `master` de Sympa. Après un petit tour dans certains fichiers de configuration, j’avais cette fois-ci un Sympa de la dernière version sur ma machine en local qui tournait, parfait !

\newpage

# Semaine 6 (du 26 au 30 juin)

Une mise à jour de Sympa ayant été sortie le week-end (la version 6.2.18), j’ai directement fait l’upgrade, qui s’est bien passée.

Je travaille depuis sur l’intégration du composant des datasources dans l’interface actuelle de Sympa.

 *#WorkInProgress...*
