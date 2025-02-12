--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
# <p align='center'> Installation de l'Intelligence Artificielle OLLAMA</p>
--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
## I. Préparation du Système
#### A. Présentation
XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX

#### B. WSL2
Il est nécessaire d'installer WSL2 via la commande `wsl.exe --install --no-distribution`.

#### C. Gestion des ressources (CPU, RAM, NET, GPU)
Ouvrir le menu `Démarrer` >  `WSL Settings`
##### 1. Liste des commandes
```
wsl.exe --uninstall
wsl.exe --shutdown
wsl.exe --status
wsl.exe --update
wsl.exe --install --no-distribution
```

#### C. Pilote
Il est nécessaire d'installer le Pilote graphique.
##### 1. AMD
##### 2. Nvidia
Il est nécessaire d'installer le pilote Graphique et Nvidia Cuda ToolKit.

<br />

--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
## II. Installation de OLLAMA
### A. Téléchargement
Télécharger le setup [OllamaSetup.exe](https://ollama.com/download/OllamaSetup.exe)
### B. Installation (Simple)
Il suffit de lancer le setup et l'installation se met dans `%APPDATA%\..\LOCAL\Ollama`.

