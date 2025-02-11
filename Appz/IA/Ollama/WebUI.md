---------------------------------------------------------------------------------------------------------------------------------------------------------
# <p align='center'> Installation d'une interface Web pour OLLAMA</p>
---------------------------------------------------------------------------------------------------------------------------------------------------------
## I. Installation
### A. Docker Desktop
#### 1. Télécharger
Il est nécessaire de télécharger [Docker-Desktop](https://desktop.docker.com/win/main/amd64/Docker%20Desktop%20Installer.exe).
#### 2. Configuration
Installez-le et assurez-vous qu'il est configuré pour fonctionner avec WSL2.
#### 3. Création du conteneur
```
docker run -d -p 3000:8080 --add-host=host.docker.internal:host-gateway -v open-webui:/app/backend/data --name open-webui --restart always ghcr.io/open-webui/open-webui:main
```
#### 4. Accéder au panel web
Inscrivez-vous en cliquant sur "Sign up".
```
http://localhost:3000
```
#### 5. Installation de modèle
Cliquer sur l'icône des `paramètres` (en haut à droite) et `téléchargez les modèles souhaités` (exemple : text, llama2:7b ....)

#### 6. Création d'une règle de Pare-Feu
```
netsh advfirewall firewall add rule name="Ollama" dir=in action=allow protocol=TCP localport=3000
```

### B. WSL2 (Déconseillé)
Il est nécessaire d'installer WSL2 via la commande `wsl --install`.


---------------------------------------------------------------------------------------------------------------------------------------------------------
## II. Suppression
### A. PAre-feu
```
netsh advfirewall firewall delete rule name="Ollama"
```

### B. Conteneur
```
docker container rm -f open-webui
```
