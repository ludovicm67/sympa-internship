# Semaine 5 (du 19 au 23 juin)

[Debian Stretch](https://wiki.debian.org/fr/DebianStretch), ou Debian 9, 
venait de sortir; j’ai donc choisis de formater complètement mon PC 
portable dans le but de passer sur un Debian propre. J’ai donc pris 
quelques temps pour configurer à nouveau tout correctement, et j’ai 
également pris la décision de changer d’éditeur de texte. Je passe donc 
de Sublime Text à `vim`.

## Pourquoi passer sur Debian ?

Un grand nombre de machines utilisent actuellement Debian, du coup je me 
suis dit que si j’arrivais à faire tourner un Sympa sur ma machine en 
local, mes changements serait assurés de fonctionner sur la plupart des 
machines. Après discussion avec certaines personnes de la communauté de 
Sympa, particulièrement Marc Chantreux et Quentin Gliech, on a trouvé 
qu'il pourrait être particulièrement intéressant d'intégrer certains 
composants que j’ai développé pour Sympa 7 dans l’interface actuelle de 
Sympa, dans le but d’avoir du feedback principalement, et également pour 
que le backend puisse voir vers quoi est-ce que l’on aura vraiment besoin 
comme données pour la suite.

## Pourquoi passer à `vim` ?

Sur la majorité des serveurs, `vi` ou `vim` est déjà installé; du coup 
prendre de bonnes habitudes avec `vim` dès à présent ne peut ne m’être 
que profitable !

## L'installation de `sympa`

J’ai donc cherché à installer Sympa sur ma machine en local.
J’ai tout d’abord tenté d’installer Sympa depuis les dépôts Debian avec 
un `apt install sympa`; après avoir installé quelques dépendances 
manquantes et un peu de configuration (notamment du serveur nginx), je 
suis parvenu à avoir une instance de Sympa à peu près fonctionnelle en 
local.

Cependant lorsque j’ai souhaité éditer un fichier de template, je me suis 
rendu compte qu’il y a une énormément de changements entre la version que 
j’ai installé et les sources disponible depuis le dépôt GitHub du projet. 
J’ai donc désinstallé Sympa et tenté de l'installer depuis les sources.

J’avais beaucoup de problèmes de dépendances manquantes, du coup j’ai 
réinstallé Sympa depuis les dépôts, dans le but de résoudre la majorité 
des problèmes que j’ai pu rencontrer, et qui m'a donc permis de faire 
fonctionner une instance de Sympa depuis le la branche `master` de Sympa.

Il me suffisait de faire en sorte que nginx pointe sur `master` ainsi que 
de faire un petit tour dans certains autres fichiers de configuration et 
le tour était joué.

J’ai donc réussi au final à avoir un Sympa de la dernière version sur ma 
machine en local qui tournait; parfait !

J'ai ensuite cherché à comprendre comprendre comment fonctionne `tt2`, 
pour *Template Toolkit*, qui permet justement de définir du contenu 
dynamique dans les templates.
