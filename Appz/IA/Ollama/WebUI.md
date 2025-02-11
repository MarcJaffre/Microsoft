---------------------------------------------------------------------------------------------------------------------------------------------------------
# <p align='center'> Installation d'une interface Web pour OLLAMA</p>
---------------------------------------------------------------------------------------------------------------------------------------------------------
## I. Installation
### A. WSL2
Il est nécessaire d'installer WSL2 via la commande `wsl --install`.
### B. Docker Desktop
#### 1. Télécharger
Il est nécessaire de télécharger [Docker-Desktop](https://desktop.docker.com/win/main/amd64/Docker%20Desktop%20Installer.exe).
#### 2. Configuration
Installez-le et assurez-vous qu'il est configuré pour fonctionner avec WSL2.
#### 3. Création du conteneur
```
docker run -d -p 3000:8080 --add-host=host.docker.internal:host-gateway -v open-webui:/app/backend/data --name open-webui --restart always ghcr.io/open-webui/open-webui:main
```
#### 4. Suppression du conteneur
```
docker container rm -f open-webui
```
