# Semaines 2 & 3 (du 29 mai au 9 juin)

Après discussion avec Quentin, il s’est avéré que la technologie que l’on 
utilisait pour le front `vue-material` rencontrait des soucis de 
performances.

N’étant développé que par peu de personnes, il était difficile pour eux 
d’assurer des performances à un excellent niveau tout en ayant un vaste 
choix de composants.

On a donc cherché à remplacer `vue-material` par quelque chose 
d’équivalent. On a trouvé assez rapidement `vue-mdl`, qui, développé par 
Google assure quant à lui des performances à la hauteur et une liste de 
composants quasi similaire.

J’ai donc dû réadapter tout le code afin de le rendre fonctionnel et avec 
une esthétique quasi similaire à ce qu’on avait précédemment. J’ai donc 
durant ces deux semaines réalisé un important travail de réécriture de 
code, et cherché comment avoir des en-têtes particulières en fonctions 
des différents composants. Certains composants, comme par exemple les 
listes extensibles n’étaient plus disponibles, j’ai donc réécrit certains 
composants également.

Le code est disponible sur la branche 
[mdl](https://github.com/sympa-community/sympa-vue/tree/mdl) de Sympa, 
que j'ai créé à cette occasion.


Ainsi pour résumer :

 - Changement de techno : `vue-material` -> `vue-mdl` en raison de 
 problèmes de performances.

 - Réécriture d’une bonne partie du code pour faire en sorte d’avoir 
 quelque chose d’équivalent à ce que l’on avait précédemment

 - Réécriture de certains composants qui n’étaient plus disponibles par 
 défaut dans `vue-mdl`, comme par exemple les listes extensibles

 - J’ai fait en sorte que l’on puisse avoir des en-têtes qui peuvent 
 changer en fonction de la page sur laquelle on se trouve
