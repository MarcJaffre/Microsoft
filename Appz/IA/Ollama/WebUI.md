---------------------------------------------------------------------------------------------------------------------------------------------------------
# <p align='center'> Installation d'une interface Web pour OLLAMA</p>
---------------------------------------------------------------------------------------------------------------------------------------------------------
## I. Installation
### A. WSL2
Il est nécessaire d'installer WSL2 via la commande `wsl.exe --install --no-distribution`.


### B. Docker Desktop
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
Cliquer sur l'icône des `paramètres` > `Modèles` > Logo Download
(exemple : text, llama2:7b ....)


### C. Création d'une règle de Pare-Feu
```
netsh advfirewall firewall add rule name="Ollama"     dir=in action=allow protocol=TCP localport=3000
netsh advfirewall firewall add rule name="Ollama-API" dir=in action=allow protocol=TCP localport=11434
```

<br />

---------------------------------------------------------------------------------------------------------------------------------------------------------
## II. Suppression
### A. Pare-feu
```
netsh advfirewall firewall delete rule name="Ollama"
netsh advfirewall firewall delete rule name="Ollama-API"
```

### B. Conteneur
```
docker container rm -f open-webui
```

### C. Distribution
```
%AppData%\..\Local\Packages\<nom de distrib>
```
