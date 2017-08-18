# Organisation du stage

## Présentation de l'entreprise et des lieux de travail

J'ai effectué mon stage chez RENATER.
Le groupement d'intérêt public Réseau National de télécommunications pour 
la Technlogie l'Enseignement et la Recherche, créé en 1993, est le réseau 
informatique français qui relie les différentes universités et les 
différents centres de recherches entre eux.
RENATER propose un certain nombre de services, –réseaux et applicatifs 
notament–, dont ce dernier contient Sympa.

Cependant, pour des soucis pratiques, j'ai effectué mon stage dans les 
locaux du département informatique de l'Université de Strasbourg, qui 
étaient organisés sous forme d'open-space, ainsi que depuis chez moi de 
temps en temps. En effet, vu que je travaillais en totale autonomie, cela 
ne posais pas de problème.

## Objectifs du stage

Ma mission principale de mon stage était d'intégrer [`les maquettes 
réalisées par Quentin Gliech`](https://s.sandhose.fr/sympa/spec/) dans le 
projet, c'est-à-dire réaliser le design de sorte à ce qu'il ressemble le 
plus possible aux spécifications fournies.

Je devais également me renseigner sur le protocole JMAP, le protocole que 
l'on utilisera par la suite pour exposer les archives des listes de 
diffusion dans l'interface web.

## Les outils utilisés

J'ai choisis de travailler sur mon ordinateur personnel durant ce stage, 
car j'avais déjà tout le nécessaire qui était en place. J'ai cependant 
choisis, au cours de mon stage de passer de la distrubition Ubuntu à une 
distribution Debian, dans le but d'assurer la compatibilité de mes 
travaux avec le plus grand nombre de machines possible.

Je vais présenter ici brièvement les différents outils que j'étais amené 
à utiliser.

### Le versionning avec `git`

Versionner son projet est vraiment quelque chose de primordial. Pouvoir 
revenir en arrière, travailler avec différentes branches, travailler à 
plusieurs sur un même projet, `git` est vraiment l'outil idéal !

Il s'agit du logiciel de gestion de version décentralisé le plus 
populaire, puisqu'il est utilisé par plus de douze millions de personnes.

Lors du hackathon, nous avions créé un dépôt 
[`sympa-vue`](https://github.com/sympa-community/sympa-vue) sur GitHub, 
accessible depuis `https://github.com/sympa-community/sympa-vue`, c'est 
sur ce dépôt que j'ai principalement travaillé durant mon stage.

### L'environnement de développement

L'environnement de développement tourne dans un environnement NodeJS. 
[`Webpack`](https://webpack.js.org/) est utilisé pour permettre le *hot 
reload*, ce qui nous permet de voir les modifications en direct du front 
lorsque l'on développe.

Pour assurer une certaine cohérence dans la manière de coder, le linter 
JavaScript [`ESLint`](https://eslint.org/) est utilisé.

Pour utiliser dès maintenant les nouveaux standards JavaScript, notament 
l'ECMAScript® 2015, [`Babel`](https://babeljs.io/) est utlisé, ce qui 
permet de transpiler le code et le rendre compatible avec les anciens 
navigateurs ne supportant pas encore ces nouveaux standards.

### L'intégration continue

Pour l'intégration continue, [`Travis CI`](https://travis-ci.org/) était 
utilisé. Du coup à chaque fois que l'on push quelque chose sur le dépôt, 
ça va exécuter les tests, et voir si tout fonctionne correctement.

Lors d'un push sur la branche `master`, et que le tests réussi, le code 
est déployé sur `http://sympa-vue.surge.sh/` avec l'aide de 
[`surge.sh`](http://surge.sh/). Cependant lors d'un grand changement de 
technologie pour le frontend, j'ai décidé de travailler sur d'autres
branches.

### VueJS

[`VueJS`](https://vuejs.org/) est un framework JavaScript opensource, qui 
se veut accessible, polyvalent et performant, qui a été créé pour 
organiser et simplifier le développement web. Le fait de travailler avec 
différents composants permet de bien découper la logique, ce qui offre un 
avantage quand à la lisibilité du code et favorise la ré-utilisation de 
ces derniers. La gestion du routing est plutôt simple, et, concernant les 
performances, le fait de ne recharger seulement les éléments qui changent 
en fonction d'un état à un autre est vraiment quelque chose qui offre un 
gain en terme de confort d'utilisation. C'est donc la raison pour 
laquelle lors du Hackathon nous avions décidés de choisir ce framework.