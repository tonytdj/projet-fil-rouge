# Enoncé du projet fil rouge
## Première partie
## **Conteneurisation de l’application web.**

Il s’agit en effet d’une application web python utilisant le module Flask. Les étapes à suivre pour la conteneurisation de cette application sont les suivantes :

1.  Image de base :  `python:3.6-alpine`
2.  Définir le répertoire  `/opt`  comme répertoire de travail
3.  Installer le module Flask version 1.1.2 à l’aide de  `pip install flask==1.1.2`
4.  Exposer le port  `8080`  qui est celui utilisé par défaut par l'application
5.  Créer les variables d’environnement  `ODOO_URL`  et  `PGADMIN_URL`  afin de permettre la définition de ces url lors du lancement du container
6.  Lancer l’application  `app.py`  dans le  `ENTRYPOINT`  grâce à la commande  `python`

Une fois le Dockerfile crée, Buildez le et lancer un container test permettant d’aller sur les sites web officiels de chacune de ces applications (site web officiels fournis ci-dessus).

**Nom de l’image :**  ic-webapp ;*  
**tag :**  1.0*  
**container test_name :**  test-ic-webapp*

Une fois le test terminé, supprimez ce container test et poussez votre image sur votre registre Docker hub..

## Résultat
Le Dockerfile a bien été créé (dans ce répo).
L'image a été créé : 


![image](https://user-images.githubusercontent.com/88394820/214951209-65e9be33-236d-4d0e-830a-4285d0f44714.png)


Pour lancer le container, j'ai lancé la commande suivante : 

![image](https://user-images.githubusercontent.com/88394820/214951487-c3f94c65-4a0e-4b16-b63f-deb68acdaf71.png)

Le container est bien lancé. J'ai configuré le port 8080 pour pouvoir accéder à la page web.
![image](https://user-images.githubusercontent.com/88394820/214952035-af4640ea-b3db-4802-93af-47b3dd8a7523.png)

