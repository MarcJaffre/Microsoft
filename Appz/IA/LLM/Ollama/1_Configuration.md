-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------
# <p align='center'> Configuration de OLLAMA </p>
-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------
## I. Variables d'environnement

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


```
setx OLLAMA_DEBUG 'false'
setx OLLAMA_FLASH_ATTENTION 'false'
setx OLLAMA_GPU_OVERHEAD '5242880'
setx OLLAMA_HOST 'http://127.0.0.1:11434'
setx OLLAMA_INTEL_GPU 'false'
setx OLLAMA_KEEP_ALIVE '5m0s'
setx OLLAMA_KV_CACHE_TYPE ''
setx OLLAMA_LLM_LIBRARY ''
setx OLLAMA_LOAD_TIMEOUT '5m0s'
setx OLLAMA_MAX_LOADED_MODELS '0'
setx OLLAMA_MAX_QUEUE '512'
setx OLLAMA_MODELS 'D:\\IA\\OLLAMA\\Models'
setx OLLAMA_MULTIUSER_CACHE 'false'
setx OLLAMA_NOHISTORY 'false'
setx OLLAMA_NOPRUNE 'false'
setx OLLAMA_NUM_PARALLEL '0'
setx ROCR_VISIBLE_DEVICES ''
setx OLLAMA_SCHED_SPREAD 'false'

setx OLLAMA_ORIGINS ''
[http://localhost https://localhost http://localhost:* https://localhost:* http://127.0.0.1 https://127.0.0.1 http://127.0.0.1:* https://127.0.0.1:* http://0.0.0.0 https://0.0.0.0 http://0.0.0.0:* https://0.0.0.0:* app://* file://* tauri://* vscode-webview://*]




setx CUDA_VISIBLE_DEVICES
setx GPU_DEVICE_ORDINAL
setx HIP_VISIBLE_DEVICES
setx HSA_OVERRIDE_GFX_VERSION
setx HTTPS_PROXY
setx HTTP_PROXY
setx NO_PROXY
setx 
setx 
setx 
```
