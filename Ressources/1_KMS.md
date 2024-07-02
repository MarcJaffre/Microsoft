----------------------------------------------------------------------------------------------------------------------------------------------------------
# <p align='center'> Serveur d'activation Microsoft (Local) </p>

----------------------------------------------------------------------------------------------------------------------------------------------------------
## I. Présentation
Le serveur KMS permet l'activation en local d'une machine Windows ou d'office.

----------------------------------------------------------------------------------------------------------------------------------------------------------
## II. Conteneur
### A. Lancement du conteneur
Pour lancer le conteneur, il est nécessaire de disposer de l'application Docker.
```bash
docker run -d -p 1688:1688 --restart=always --name vlmcsd mikolatero/vlmcsd;
```
### B. Afficher la log
```bash
docker logs vlmcsd;
```
