--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
# <p align='center'> Installation de l'Intelligence Artificielle OLLAMA</p>
--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
## I. Préparation du Système
#### A. Présentation
> Ollama est une plateforme open-source conçue pour exécuter localement des modèles de langage de grande taille (LLM) sur des machines personnelles.
>
> Elle offre une solution économique et sécurisée en éliminant la dépendance aux services cloud, ce qui garantit la confidentialité des données.
>
> Ollama est compatible avec plusieurs modèles populaires tels que LLaMA-2, CodeLLaMA, Falcon, Mistral, et GPT-3.5, et permet leur personnalisation pour des besoins spécifiques

#### B. Pagination Système
Pour optimiser OLLAMA, configurer la pagination système entre 6 Go et 8 Go.

#### C. WSL2
Il est nécessaire d'installer WSL2 via la commande `wsl.exe --install --no-distribution` puis `wsl.exe --update`.

#### D. Gestion des ressources (CPU, RAM, NET, GPU)
Ouvrir le menu `Démarrer` >  `WSL Settings`
##### 1. Liste des commandes
```
wsl.exe --uninstall
wsl.exe --shutdown
wsl.exe --status
```

<br />

#### C. Pilote
Il est nécessaire d'installer le Pilote graphique.
##### 1. AMD
##### 2. Nvidia
Il est nécessaire d'installer le pilote Graphique et [Nvidia Cuda ToolKit](https://developer.nvidia.com/cuda-downloads?target_os=Windows&target_arch=x86_64).

Afficher les informations (Refresh 3 secondes)
```
nvidia-smi -l 3
```


<br />

### D. Variable d'environnement
#### 1. Listes des variables d'environnement

| **Variable**                  | **Description (Français)**                                                                 | **Valeur par défaut**          |
|-------------------------------|--------------------------------------------------------------------------------------------|--------------------------------|
| `OLLAMA_HOST`                 | Adresse IP du serveur Ollama (par défaut `127.0.0.1:11434`).                               | `127.0.0.1:11434`              |
| `OLLAMA_GPU_OVERHEAD`         | Réserve une portion de VRAM par GPU (en octets).                                           | Non spécifié                   |
| `OLLAMA_MODELS`               | Chemin vers le répertoire contenant les modèles.                                           | Non spécifié                   |
| `OLLAMA_MAX_LOADED_MODELS`    | Nombre maximum de modèles chargés simultanément par GPU.                                   | Non spécifié                   |
| `OLLAMA_MAX_QUEUE`            | Nombre maximum de requêtes en file d'attente.                                              | Non spécifié                   |
| `OLLAMA_HOST`                 | Adresse IP du serveur Ollama (par défaut `127.0.0.1:11434`).                               | `127.0.0.1:11434`              |
| `OLLAMA_FLASH_ATTENTION`      | Active la fonctionnalité "flash attention".                                                | Non spécifié                   |
| `OLLAMA_KEEP_ALIVE`           | Durée pendant laquelle les modèles restent chargés en mémoire.                             | `"5m"`                         |
| `OLLAMA_KV_CACHE_TYPE`        | Type de quantification pour le cache K/V.                                                  | `f16`                          |
| `OLLAMA_LLM_LIBRARY`          | Définit la bibliothèque LLM pour contourner l'auto-détection.                              | Non spécifié                   |
| `OLLAMA_LOAD_TIMEOUT`         | Temps maximum avant d'abandonner le chargement d'un modèle si celui-ci est bloqué.         | `"5m"`                         |
| `OLLAMA_NOHISTORY`            | Ne pas conserver l'historique des lignes de commande (`readline`).                         | Non spécifié                   |
| `OLLAMA_NOPRUNE`              | Ne pas supprimer les blobs des modèles au démarrage.                                       | Non spécifié                   |
| `OLLAMA_NUM_PARALLEL`         | Nombre maximum de requêtes parallèles autorisées.                                          | Non spécifié                   |
| `OLLAMA_ORIGINS`              | Liste séparée par des virgules des origines autorisées.                                    | Non spécifié                   |
| `OLLAMA_SCHED_SPREAD`         | Toujours répartir les modèles sur tous les GPUs disponibles.                               | Non spécifié                   |
| `OLLAMA_DEBUG`                | Affiche des informations de débogage supplémentaires (par exemple, `OLLAMA_DEBUG=1`).      | Non spécifié                   |

#### 2. Configuration des variables d'environnement
```
setx OLLAMA_DEBUG "false"
setx OLLAMA_FLASH_ATTENTION "false"
setx OLLAMA_GPU_OVERHEAD "0"
setx OLLAMA_HOST "http://127.0.0.1:11434"
setx OLLAMA_INTEL_GPU "false"
setx OLLAMA_KEEP_ALIVE "5m0s"
setx OLLAMA_KV_CACHE_TYPE ""
setx OLLAMA_LLM_LIBRARY ""
setx OLLAMA_LOAD_TIMEOUT "5m0s"
setx OLLAMA_MAX_LOADED_MODELS "0"
setx OLLAMA_MAX_QUEUE "512"
setx OLLAMA_MODELS "D:\\OLLAMA\\Models"
setx OLLAMA_MULTIUSER_CACHE "false"
setx OLLAMA_NOHISTORY "false"
setx OLLAMA_NOPRUNE "false"
setx OLLAMA_NUM_PARALLEL "0"
setx OLLAMA_SCHED_SPREAD "false"
setx OLLAMA_ORIGINS ""
```

#### 3. Complément
```
setx CUDA_VISIBLE_DEVICES "0"

:: setx ROCR_VISIBLE_DEVICES "0"
:: setx GPU_DEVICE_ORDINAL
:: setx HIP_VISIBLE_DEVICES
:: setx HSA_OVERRIDE_GFX_VERSION
:: setx HTTPS_PROXY
:: setx HTTP_PROXY
:: setx NO_PROXY
```


<br />

--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
## II. Installation / Désinstallation de OLLAMA
### A. Téléchargement
Télécharger le setup [OllamaSetup.exe](https://ollama.com/download/OllamaSetup.exe)
### B. Installation (Simple)
Il suffit de lancer le setup et l'installation se met dans `%APPDATA%\..\LOCAL\Ollama`.

### C. Installation (Avancée)
L'installateur va installer dans un autre dossier OLLAMA. ([DOC](https://jrsoftware.org/ishelp/index.php?topic=setupcmdline))
#### 1. Installation
```bash
%USERPROFILE%\Downloads\OllamaSetup.exe /DIR="D:\OLLAMA" /LANG=fr-FR /GROUP="OLLAMA Tools" /VERYSILENT /LOG /LOG="D:\OLLAMA\Install.log"
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
rmdir /S /Q C:\Users\%username%\.ollama\models
mklink /D "C:\Users\%username%\.ollama\models" "D:\OLLAMA\Models"
```

<br />

#### B. Désinstallation
```
D:\OLLAMA\unins000.exe
rmdir /S /Q %USERPROFILE%\.ollama
rmdir /S /Q %APPDATA%\..\Local\Ollama
```

<br />

--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
## III. Vérification de fonctionnement
### A. Vérifier OLLAMA
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
