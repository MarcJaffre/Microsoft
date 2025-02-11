## Logiciel:
```
https://www.python.org/ftp/python/3.10.6/python-3.10.6-amd64.exe
https://github.com/git-for-windows/git/releases/download/v2.46.2.windows.1/Git-2.46.2-64-bit.exe
```
## Stable Diffusion
```
https://github.com/lshqqytiger/stable-diffusion-webui-amdgpu
```

## Fix Erreur ([30/12/2024](https://github.com/AUTOMATIC1111/stable-diffusion-webui/issues/13245)) 
```
C:\Users\%username%\AppData\Local\Programs\Python\Python310\python.exe -m venv D:\IA\stable_diffusion\venv
```

## Xformers (Experimental)
```
pip3 install -U xformers --index-url https://download.pytorch.org/whl/cu124
pip uninstall xformers
python -m xformers.info
pip list
```


## webui-user.bat (AMD)
Permet de rendre accessible Stable Diffusion sur Internet
```
@echo off
set PYTHON=
set GIT=
set VENV_DIR=
set COMMANDLINE_ARGS=--skip-torch-cuda-test --use-directml --precision full --no-half --medvram --opt-split-attention --disable-nan-check --listen --port 80
call webui.bat
```

Pour utiliser Stable Diffusion avec un GPU AMD RX 6700 XT, les options importantes à considérer sont :
```
--skip-torch-cuda-test     : GPU AMD
--use-directml             : Cette option est cruciale car elle permet d'utiliser DirectML comme backend pour exécuter des opérations sur les GPU AMD compatibles DirectML, comme la série RX 6000.
--precision full --no-half : Ces options sont généralement nécessaires pour les cartes AMD afin d'éviter les crashs ou les images noires. Elles forcent l'utilisation de la précision complète plutôt que la demi-précision.
--medvram                  : Cette option peut être utile si vous rencontrez des problèmes de mémoire VRAM. Elle optimise l'utilisation de la VRAM pour les cartes avec une quantité moyenne de mémoire vidéo.
--opt-split-attention      : Ces options peuvent améliorer les performances en optimisant les calculs d'attention.
--opt-split-attention-v1   : Alternative
--disable-nan-check        : Cette option peut parfois être nécessaire pour éviter certains problèmes de stabilité avec les GPU AMD.


Note:
--xformers
--use-cpu all
--listen --port 80
```

<br />




## Configuration des arguments de lancement
usage: python launch.py -h

| Paramètre                                          | Description                                                                                   |
|----------------------------------------------------|-----------------------------------------------------------------------------------------------|
| --add-stop-route                                   | Ajoute une route pour arrêter le serveur.                                                   |
| --administrator                                     | Exécute le programme avec des privilèges d'administrateur.                                  |
| --allow-code                                       | Permet l'exécution de code personnalisé.                                                    |
| --always-batch-cond-uncond                         | Force le traitement par lots pour les images conditionnelles et non conditionnelles.        |
| --api                                              | Active l'API pour les requêtes externes.                                                   |
| --api-auth API_AUTH                                | Définit un mot de passe pour l'API.                                                         |
| --api-log                                          | Active la journalisation des requêtes API.                                                  |
| --api-server-stop                                  | Arrête le serveur API.                                                                       |
| --autolaunch                                       | Lance automatiquement l'interface après le démarrage.                                       |
| --bsrgan-models-path BSRGAN_MODELS_PATH           | Spécifie le chemin pour les modèles BSRGAN.                                                 |
| --ckpt CKPT                                       | Charge un modèle à partir d'un fichier de point de contrôle.                                |
| --ckpt-dir CKPT_DIR                                | Indique le dossier contenant les fichiers de point de contrôle.                             |
| --clip-models-path CLIP_MODELS_PATH               | Chemin vers les modèles CLIP.                                                                |
| --codeformer-models-path CODEFORMER_MODELS_PATH   | Chemin vers les modèles CodeFormer.                                                          |
| --config CONFIG                                    | Spécifie un fichier de configuration personnalisé.                                           |
| --cors-allow-origins CORS_ALLOW_ORIGINS           | Définit les origines autorisées pour CORS.                                                 |
| --cors-allow-origins-regex CORS_ALLOW_ORIGINS_REGEX | Utilise une expression régulière pour les origines autorisées.                             |
| --data-dir DATA_DIR                                | Spécifie le répertoire des données.                                                          |
| --dat-models-path DAT_MODELS_PATH                  | Chemin vers les modèles DAT.                                                                  |
| --deepdanbooru                                     | Active l'utilisation de DeepDanbooru pour le taggage d'images.                             |
| --device-id DEVICE_ID                              | Définit l'ID du périphérique à utiliser (GPU/CPU).                                         |
| --disable-all-extensions                           | Désactive toutes les extensions installées.                                                 |
| --disable-console-progressbars                     | Cache les barres de progression dans la console.                                            |
| --disable-extra-extensions                         | Désactive certaines extensions supplémentaires.                                              |
| --disable-model-loading-ram-optimization           | Désactive l'optimisation de la RAM lors du chargement des modèles.                          |
| --disable-nan-check                               | Ignore les vérifications NaN (Not a Number).                                               |
| --disable-opt-split-attention                      | Désactive l'attention optimisée par séparation.                                             |
| --disable-safe-unpickle                           | Permet le dé-sérialisation non sécurisée des objets Python.                                 |
| --do-not-download-clip                             | Ne télécharge pas le modèle CLIP automatiquement.                                           |
| --dump-sysinfo                                     | Affiche des informations système au démarrage.                                              |
| --embeddings-dir EMBEDDINGS_DIR                    | Chemin vers le répertoire d'embeddings personnalisés.                                      |
| --enable-console-prompts                           | Active les invites dans la console pour interagir avec l'utilisateur.                       |
| --enable-insecure-extension-access                 | Permet l'accès aux extensions non sécurisées.                                               |
| --esrgan-models-path ESRGAN_MODELS_PATH           | Chemin vers les modèles ESRGAN (Enhanced Super Resolution).                                 |
| --filenames-max-length FILENAMES_MAX_LENGTH       | Définit la longueur maximale des noms de fichiers générés.                                   |
| --force-enable-xformers                            | Force l'activation de Xformers, même si cela échoue normalement.                           |
| --freeze-settings                                   | Gèle les paramètres actuels pour éviter toute modification accidentelle.                    |
| --freeze-settings-in-sections FREEZE_SETTINGS_IN_SECTIONS  | Gèle certains paramètres dans des sections spécifiques.                                    |
| --freeze-specific-settings FREEZE_SPECIFIC_SETTINGS  | Gèle des paramètres spécifiques définis par l'utilisateur.                                  |
| --gfpgan-dir GFPGAN_DIR                            | Spécifie le chemin vers GFPGAN (Generative Facial Prior).                                   |
| --gfpgan-model GFPGAN_MODEL                        | Charge un modèle spécifique GFPGAN à partir du chemin donné.                                |
| --gfpgan-models-path GFPGAN_MODELS_PATH           | Chemin vers plusieurs modèles GFPGAN à utiliser.                                            |
| --gradio-allowed-path GRADIO_ALLOWED_PATH         | Définit un chemin autorisé pour Gradio (interface utilisateur).                             |
| --gradio-auth GRADIO_AUTH                          | Définit une authentification pour Gradio si nécessaire.                                     |
| --gradio-auth-path GRADIO_AUTH_PATH                | Spécifie le chemin du fichier d'authentification Gradio.                                   |
| --gradio-debug                                     | Active le mode débogage pour Gradio, utile pour le développement et la résolution de problèmes.|
| --gradio-img2img-tool GRADIO_IMG2IMG_TOOL        | Définit l'outil utilisé pour img2img dans Gradio.                                          |
| --gradio-inpaint-tool GRADIO_INPAINT_TOOL        | Définit l'outil utilisé pour inpainting dans Gradio.                                       |
| --gradio-queue                                     | Active la file d'attente pour gérer plusieurs requêtes simultanées dans Gradio.             |
| --hide-ui-dir-config                               | Cache la configuration du répertoire UI dans l'interface utilisateur.                       |

### Options de performance
| Paramètre                                          | Description                                                                                   |
|----------------------------------------------------|-----------------------------------------------------------------------------------------------|
| **--hypernetwork-dir HYPERNETWORK_DIR**            | Chemin vers les réseaux hyper personnalisés à utiliser avec Stable Diffusion.                |
| **--listen**                                       | Écoute sur toutes les interfaces réseau, pas seulement localhost (127.0.0.1).               |
| **--localizations-dir LOCALIZATIONS_DIR**          | Spécifie le dossier contenant les fichiers de localisation (langues).                        |
| **--log-startup**                                  | Journalise les informations au démarrage du programme.                                       |
| **--loglevel LOGLEVEL**                            | Définit le niveau de journalisation (debug, info, warning, error).                           |
| **--lowram**                                       | Optimise l'utilisation de la RAM, utile sur des systèmes avec peu de mémoire vive disponible.| 
| **--lowvram**                                      | Réduit l'utilisation de la VRAM lors du traitement sur GPU, utile pour les cartes graphiques avec moins de mémoire vidéo.|

### Options liées aux modèles
| Paramètre                                          | Description                                                                                   |
|----------------------------------------------------|-----------------------------------------------------------------------------------------------|
| **--max-batch-count MAX_BATCH_COUNT**              | Définit le nombre maximum d'images à traiter en une seule fois (batch size).                |
| **--medvram**                                      | Utilise une quantité moyenne de VRAM, ce qui peut aider à éviter des erreurs sur des cartes avec moins de mémoire vidéo disponible.| 
| **--medvram-sdxl**                                 | Utilise une quantité moyenne de VRAM spécifiquement pour SDXL, une version améliorée du modèle Stable Diffusion.|
