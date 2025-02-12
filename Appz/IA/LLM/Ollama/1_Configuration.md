-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------
# <p align='center'> Configuration de OLLAMA </p>
-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------
## I. Variables d'environnement
### A. Gestion de l'IP
```
setx OLLAMA_HOST=0.0.0.0:11434
```

| **Variable**                  | **Description (Français)**                                                                 | **Valeur par défaut**          |
|-------------------------------|--------------------------------------------------------------------------------------------|--------------------------------|
| `OLLAMA_HOST`                 | Adresse IP du serveur Ollama (par défaut `127.0.0.1:11434`).                               | `127.0.0.1:11434`              |


<br />

### B. Gestion du GPU
```
setx OLLAMA_GPU_OVERHEAD=
```

| **Variable**                  | **Description (Français)**                                                                 | **Valeur par défaut**          |
|-------------------------------|--------------------------------------------------------------------------------------------|--------------------------------|
| `OLLAMA_GPU_OVERHEAD`         | Réserve une portion de VRAM par GPU (en octets).                                           | Non spécifié                   |


<br />

### C. Gestion du stockage
```
setx OLLAMA_MODELS=D:\IA\OLLAMA\Models
```

| **Variable**                  | **Description (Français)**                                                                 | **Valeur par défaut**          |
|-------------------------------|--------------------------------------------------------------------------------------------|--------------------------------|
| `OLLAMA_MODELS`               | Chemin vers le répertoire contenant les modèles.                                           | Non spécifié                   |


<br />
<br />

### X. Gestion de la File
| **Variable**                  | **Description (Français)**                                                                 | **Valeur par défaut**          |
|-------------------------------|--------------------------------------------------------------------------------------------|--------------------------------|
| `OLLAMA_MAX_LOADED_MODELS`    | Nombre maximum de modèles chargés simultanément par GPU.                                   | Non spécifié                   |
| `OLLAMA_MAX_QUEUE`            | Nombre maximum de requêtes en file d'attente.                                              | Non spécifié                   |
| `OLLAMA_HOST`                 | Adresse IP du serveur Ollama (par défaut `127.0.0.1:11434`).                               | `127.0.0.1:11434`              |

```
setx OLLAMA_MAX_LOADED_MODELS=
setx OLLAMA_MAX_QUEUE=
setx OLLAMA_HOST=
```

<br />


### X. Gestion de la File
| **Variable**                  | **Description (Français)**                                                                 | **Valeur par défaut**          |
|-------------------------------|--------------------------------------------------------------------------------------------|--------------------------------|
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
