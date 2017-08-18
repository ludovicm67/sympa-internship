# Travail réalisé

## Intégration de maquettes

Quentin me fournissait des maquettes qui montraient à quoi devrait 
ressembler les différentes pages de la future interface de Sympa.

![Exemple de maquette](../images/screenshots/sketch_example.png)

Je devais donc faire en sorte de créer les différentes pages, de créer 
les routes vers chacunes de ces pages, d'identifier et de créer les 
différents composants, et faire en sorte que le tout se rapproche le plus 
possible des maquettes en utilisant VueJS.

Lors du Hackathon, nous avons décidé d'utiliser le Material Design, qui 
est un concept de design pensé par Google, qui défini certaines règles 
s'appliquant à l'interface graphique des logiciels et applications. Vu 
que les utilisateurs ont déjà l'habitude d'utiliser ce style d'interfaces,
 notamment dans les applications Android ou certains autres sites, 
l'utilisateur ne sera donc pas perdu et trouvera ses marques assez 
rapidement sur la nouvelle version de Sympa, qui elle se veut nettement 
plus accessible que la version actuelle.

Au départ on utilisait le projet [`vue-material`](http://vuematerial.io) 
pour construire rapidement notre application VueJS, mais il se trouve, 
qu'après concertation avec Quentin, qu'il y avait un certain nombre de 
soucis de performances. Le nombre et la taille de calques lors des rendus 
dans le navigateur faisait planter l'inspecteur de Google Chrome dans 
certains cas, ce qui n'était pas très pratique.

On a donc fini par changer pour [`mdl`](https://getmdl.io/). Développé 
par Google directement, il était certain pour le coup que les questions 
de performances auraient été bien prises en compte, que ce serait donc le 
remplaçant idéal pour [`vue-material`](http://vuematerial.io), et nous 
auront toujours le Material Design que nous souhaitions. Cependant ce 
changement a nécessité une grande réécriture de code pour ma part, mais 
cela en vallait la peine ! Après quelques jours de travail sur une 
nouvelle branche sur le dépôt, que j'ai nommée `mdl` pour l'occasion, 
j'ai réussi à faire en sorte d'avoir une interface qui ressemble à ce que 
j'avais auparavant, mais cela a nécessité la création de certains 
composants ainsi que de nombreuses retouches dans le CSS (=*Cascading 
Style Sheets*, feuille de style).

![Résultat de la maquette intégrée](../images/screenshots/discussions.png)

---

## Documentation

### JMAP

Lors de mon stage je devais aussi me documenter sur le fonctionnement 
d'un protocole qui se veut être le successseur d'IMAP, nommé JMAP.

**J**SON **M**eta **A**pplication **P**rotocol est un protol créé dans le 
but de remplacer IMAP, en se voulant plus simple d'utilisation pour les 
développeurs, en retournant toutes les réponses sous forme d'objets JSON. 
Il a été conçu pour utiliser de manière plus efficace les resources 
réseau et intègre des fonctionnalités particulièrement intéressantes, 
comme le mécanisme de *push*, qui permet de notifier un client du moindre 
chamgement (par exemple l'arrivée d'un nouveau mail) pour l'ensemble des 
répertoires, ce qui n'était pas possible avec IMAP, où on ne pouvait que 
surveiller un seul répertoire à la fois et nécessitait une connexion 
persistante.

Il se trouve que pour le moment Sympa utilise 
[`MHonArc`](https://www.mhonarc.org/) pour afficher les archives des 
mails des listes de diffusion depuis l'interface web, mais le remplacer 
par JMAP offrirait nettement plus de souplesse, puisque ce sera le client 
qui demandera directement les informations souhaitées; cela permettra une 
réelle séparation entre le backend et le frontend à terme.

J'ai donc écrit une petite documentation pour montrer comment 
s'authentifier avec JMAP, notamment pour les points suivants :

  - Comment avoir un `continuationToken` ?

    *Il s'agit d'un jeton permettant de demander un `accessToken`.*

  - Comment avoir un `accessToken` ?

    *Il s'agit d'un jeton permettant d'effectuer des requêtes, tel que 
    récupérer les boîtes mail disponibles, récupérer les mails, ceux qui 
    ne sont pas encore lus, etc. L'utilisateur est identifié grâce à ce 
    jeton.*

  - Comment récupérer les différents endpoints ?

  - Comment révoquer un token ?


### Utiliser JMAP avec Apache James

Maintenant que j'avais les informations théorique nécessaires, j'ai 
souhaité construire un petit client dans l'interface de Sympa pour mettre 
en pratique le système d'authentification et essayer de récupérer 
quelques données. J'avais donc besoin de trouver quelque chose qui puisse 
être capable de me fournir un *endpoint* sur lequel je pouvais effectuer 
des requêtes. Ce fût assez difficile ) trouver, mais j'ai finis par 
tomber sur [`Apache James`](https://james.apache.org/). Cependant en 
suivant les instructions sur leur site, je n'étais pas en mesure de faire 
fonctionner JMAP, alors que sur leur page d'accueil ils annonçaient 
pourtant bien un support de ce protocole. J'ai donc décidé de contacter 
directement les développeurs du projet afin de voir comment faire. Après 
discussion avec eux, je suis donc parvenu à obtenir ce que je souhaitais, 
et j'ai donc également chosis de documenter les étapes nécessaires pour 
montrer les étapes à suivre pour l'installer avec le support de JMAP, 
comment ajouter un utilisateur, et comment se connecter avec Thunderbird 
avec cet utilisateur, pour tester le bon fonctionnement de James.

### Création du client

J'ai donc créé un client JMAP avec JavaScript dans le but de contacter un 
serveur mail, pour mes tests il s'agissait d'Apache James que je venais 
de mettre en place. Tout fonctionne à merveille, la connexion, le listing 
des différentes boites mails, les indicateurs de mails non lus, ...

J'étais satisfait de mon travail, et je pense qu'il sera fortement utile 
pour la suite, lorsque l'on pourra directement effectuer une requête sur 
un *endpoint* exposé par le backend, au lieu de passer par Apache James, 
qui ne m'étais utile que pour tester le bon fonctionnement de mon 
mini-client.

### Emplacement de la documentation

J'ai décidé de publier l'ensemble de la documentation que j'ai rédigé en 
langue anglaise sur un dépôt GitHub dont voici le lien :
`https://github.com/ludovicm67/sympa-internship/tree/master/docs`
(en anglais); le fichier 
[`README.md`](https://github.com/ludovicm67/sympa-internship/blob/master/README.md) 
se trouvant à la racine du dépôt explique comment les compiler sous forme 
de pdf avec l'aide de `pandoc`.

Dans ce dépot se trouve également mon *diary*, document dans lequel 
j'écrivais ce que je faisais chaque semaine, histoire d'avoir une trace 
chronologique de mon travail, et faciliter la rédaction de ce rapport, 
qui lui-même se trouve également à cet endroit.