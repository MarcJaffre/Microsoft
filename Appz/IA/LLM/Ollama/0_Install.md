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

### C. Installation (Avancée)
L'installateur va installer dans un autre dossier OLLAMA. ([DOC](https://jrsoftware.org/ishelp/index.php?topic=setupcmdline))
#### 1. Installation
```bash
%USERPROFILE%\Downloads\OllamaSetup.exe /DIR="D:\IA\OLLAMA" /LANG=fr-FR /GROUP="OLLAMA Tools" /VERYSILENT /LOG /LOG="D:\IA\OLLAMA\Install.log"
```
<br />

| **Option**                        | **Description**                                        | **Exemple**                                    |
|---------------------------------- | ------------------------------------------------------ | ---------------------------------------------- |
| `/?`                              | Afficher les paramètres de l'installation              | `OllamaSetup.exe /?`                           |
| `/SILENT`                         | Installation en mode silencieux                        | `OllamaSetup.exe /SILENT`                      |
| `/VERYSILENT`                     | Installation en mode vraiment silencieux               | `OllamaSetup.exe /VERYSILENT`                  |
| `/SUPPRESSMSGBOXES`               | Supprimer les boîtes de dialogue                       | `OllamaSetup.exe /SUPPRESSMSGBOXES`            |
| `/LOG`                            | Activer la journalisation (log)                        | `OllamaSetup.exe /LOG`                         |
| `/LOG="filename"`                 | Spécifier un fichier de log                            | `OllamaSetup.exe /LOG="install.log"`           |
| `/NOCANCEL`                       | Désactiver le bouton Annuler pendant l'installation    | `OllamaSetup.exe /NOCANCEL`                    |
| `/NORESTART`                      | Empêcher le redémarrage automatique                    | `OllamaSetup.exe /NORESTART`                   |
| `/RESTARTEXITCODE=exit code`      | Définir un code de sortie pour le redémarrage          | `OllamaSetup.exe /RESTARTEXITCODE=3010`        |
| `/CLOSEAPPLICATIONS`              | Fermer automatiquement les applications actives        | `OllamaSetup.exe /CLOSEAPPLICATIONS`           |
| `/NOCLOSEAPPLICATIONS`            | Ne pas fermer les applications actives                 | `OllamaSetup.exe /NOCLOSEAPPLICATIONS`         |
| `/FORCECLOSEAPPLICATIONS`         | Forcer la fermeture des applications actives           | `OllamaSetup.exe /FORCECLOSEAPPLICATIONS`      |
| `/FORCENOCLOSEAPPLICATIONS`       | Forcer à ne pas fermer les applications actives        | `OllamaSetup.exe /FORCENOCLOSEAPPLICATIONS`    |
| `/LOGCLOSEAPPLICATIONS`           | Journaliser la fermeture des applications              | `OllamaSetup.exe /LOGCLOSEAPPLICATIONS`        |
| `/RESTARTAPPLICATIONS`            | Redémarrer les applications après installation         | `OllamaSetup.exe /RESTARTAPPLICATIONS`         |
| `/NORESTARTAPPLICATIONS`          | Ne pas redémarrer les applications                     | `OllamaSetup.exe /NORESTARTAPPLICATIONS`       |
| `/LOADINF="filename"`             | Charger un fichier de configuration INF                | `OllamaSetup.exe /LOADINF="config.inf"`        |
| `/SAVEINF="filename"`             | Sauvegarder la configuration dans un fichier INF       | `OllamaSetup.exe /SAVEINF="config.inf"`        |
| `/LANG=language`                  | Spécifier la langue d'installation                     | `OllamaSetup.exe /LANG=fr-FR`                  |
| `/DIR="x:\dirname"`               | Spécifier le répertoire d'installation                 | `OllamaSetup.exe /DIR="D:\OLLAMA\"`            |
| `/GROUP="folder name"`            | Spécifier le dossier du menu Démarrer                  | `OllamaSetup.exe /GROUP="OLLAMA Tools"`        |
| `/NOICONS`                        | Ne pas créer de raccourcis                             | `OllamaSetup.exe /NOICONS`                     |
| `/COMPONENTS=""`                  | Sélectionner des composants spécifiques                | `OllamaSetup.exe /COMPONENTS="core,docs"`      |
| `/TASKS=""`                       | Exécuter des tâches spécifiques pendant l'installation | `OllamaSetup.exe /TASKS="createShortcut"`      |
| `/MERGETASKS=""`                  | Fusionner des tâches avec celles par défaut            | `OllamaSetup.exe /MERGETASKS="desktopIcon"`    |
| `/PASSWORD=password`              | Fournir un mot de passe pour l'installation            | `OllamaSetup.exe /PASSWORD=secure1234!`        |


<br />

#### 2. Lien Symbolic
```
rmdi /S /Q C:\Users\%username%\.ollama\models
mklink /D "C:\Users\%username%\.ollama\models" "D:\IA\OLLAMA\Models"
```
