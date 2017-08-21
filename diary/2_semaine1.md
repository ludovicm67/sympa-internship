# Semaine 1 (du 22 au 26 mai)

 - Corrections de certains points du design

    - sidebar

    - améliorations du layout du composant Discussion

    - etc…

 - Ecriture d’un peu de documentation 
 (https://github.com/ludovicm67/sympa-internship/tree/master/docs) :

    - Mise en place d’un mailserver avec James *(a nécessité de contacter 
    directement les développeurs du projet afin de faire en sorte de 
    trouver un moyen de faire tourner James avec un support du protocole 
    JMAP)*:

        - Comment l’installer ?

        - Comment ajouter un utilisateur ?

        - Comment se connecter avec Thunderbird au serveur de mails des 
        différents utilisateurs, pour tester JMAP ?

    - Fonctionnement de JMAP (explication de la partie d'authentification 
    principalement) :

        - Comment avoir un `continuationToken` ?

        - Comment avoir un `accessToken` ?

        - Comment récupérer les différents endpoints ?

        - Comment révoquer un token ?

 - Implémentation d’un accès à un serveur JMAP depuis l’interface web 
 (servira à terme à afficher les archives pour remplacer MHonArc)

 - Ajouts et modifications de composants :

    - `DiscussionSubscribed` : liste des discussions à laquelle on est 
    abonné (là où j’ai mis en place temporairement l’implémentation JMAP)

    - `Listmaster` : intégration du sketching réalisé par Quentin Gliech
