--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
# <p align='center'> Installation de l'Intelligne artificielle OLLAMA </p>

--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
## I. Installation
### A. Préentation

### B. Pré-requis
### C. Téléchargement
Télécharger le setup [OllamaSetup.exe](https://ollama.com/download/OllamaSetup.exe)
### D. Installation
#### 1. Mode simple
Il suffit de lancer le setup et l'installation se fait dans le disque C.

#### 2. Mode avancée
# Paramètres d'installation pour OllamaSetup.exe

Ce tableau décrit les options disponibles pour l'installation d'`OllamaSetup.exe` via la ligne de commande sous Windows.

```
https://jrsoftware.org/ishelp/index.php?topic=setupcmdline
```

# Options d'installation pour OllamaSetup.exe

Ce tableau liste les différentes options disponibles pour l'installation d'`OllamaSetup.exe` via la ligne de commande sous Windows.

| **Option**                        | **Description**                                        | **Exemple**                                    |
|---------------------------------- | ------------------------------------------------------ | ---------------------------------------------- |
| `/?`                              | Afficher les paramètres de l'installation              | `OllamaSetup.exe /?`                           |
| `/SILENT`                         | Installation en mode silencieux                        | `OllamaSetup.exe /SILENT`                      |
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

## Exemple combiné
Pour une installation silencieuse, sans redémarrage, dans un répertoire spécifique avec journalisation :

```bash
@echo off

cls
set DOSSIER=D:\OLLAMA
set PARM1=/LOG
set PARM2=/LOG="Install.log"
set PARM3=/LANG=fr-FR
set PARM4=/DIR="D:\OLLAMA\"
set PARM5=/GROUP="OLLAMA Tools"
set PARM6=/SILENT
start /wait %DOSSIER%\OllamaSetup.exe %PARM1% %PARM2% %PARM3% %PARM4% %PARM5% %PARM6%
```




### E. Utilisation
#### 1. CMD
Lancer la commande `ollama` pour afficher le résumé des commandes.
```
ollama [flags]
ollama [command]

Available Commands:
  serve       Start ollama
  create      Create a model from a Modelfile
  show        Show information for a model
  run         Run a model
  stop        Stop a running model
  pull        Pull a model from a registry
  push        Push a model to a registry
  list        List models
  ps          List running models
  cp          Copy a model
  rm          Remove a model
  help        Help about any command
```
#### 2. IA Mistral (IA française très performante)
```bash
ollama run mistral
```
#### 3. Programmation / Coding
```bash
ollama run dolphin-mistral
```
#### 4. IA Meta/facebook
```
ollama run llama2
```
#### 5. Alibaba Cloud
```
ollama run qwen
```






