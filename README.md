# ocladewebapp

Schaming Pierre-Alain vous présente son Projet 6.

Présentation :
Vous trouverez le code source et les documents nécessaire au fonctionnement d’une application Web, d’un site communautaire d’escalade.

Développement :
Cette application a été développée avec les outils suivants :
-IntelliJ Ultimate 2019.3
-Apache Maven, mono module.
-MySQL Worbench, pour la base de données.
-Spring, Core et MVC pour le FrameWork.
-Hibernate pour la communication avec la base de données, et la persistence.

Installation :
Forkez, ou importez l’ensemble du projet depuis ce dépôt GitHub.
Télécharger et installer Mysql WorkBench, car l’application est conçue pour communiquer avec ce type de base de données.
Choisissez ici la plateforme utlisée, dans notre cas il s’agit de Windows :
https://dev.mysql.com/downloads/workbench/
Créez une base de données, ainsi que les identifants de connexion pour y accéder, puis modifier ces renseignements (adresse de la base de données, identifiants et mot de passe de connexion) dans le fichier de configuration de l’application ici :
C:\Users\peasc\IdeaProjects\maven-archetype-webapp\src\main\java\com\lade\config\LadeConfig.java
Et ici : 
C:\Users\peasc\IdeaProjects\maven-archetype-webapp\src\main\resources\META-INF\persistence.xml

Hibernate créera automatiquement les tables de la base de données, mais vous trouverez les scripts de création des tables, ainsi qu’un jeu de données (fantaisistes parfois) jointes avec le projets pour tester l’application.
Paramétrez Tomcat 9.0.33 dans votre IDE (ici IntelliJ) en local, en indiquant l’adresse de départ ci :
http://localhost:8080/home
Lancement :

Lancer le server depuis l’ IDE.
Après avoir compilé l’application, le server se lancera automatiquement sur un navigateur, et vous pourrez profiter de l’application.
Version 1.0-SNAPSHOT.
