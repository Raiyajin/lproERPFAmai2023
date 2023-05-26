### PHP + Apache + MySQL + PHPMyAdmin

Le projet nécessite d'avoir docker ainsi que docker-compose

Le projet séparé en 3 conteneurs orchestré par un docker-compose.yml :
* Un premier conteneur qui utilise un Dockerfile ayant pour une image de php-apache et installant PDO ; PORT 80
* Un deuxième conteneur utilisant une image MySQL à laquelle on monte un volume pour persister les données de la base et qui au premier lancement utilise le fichier QCM.sql présent dans le dossier dump/ ; PORT 3308
* Un troisième conteneur contenant une image phpmyadmin ; PORT 8080

Pour build le projet (depuis la racine de celui-ci) :
```
docker-compose build
```

Pour le lancer :
```
docker-compose up
```
