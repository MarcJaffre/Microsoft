--------------------------------------------------------------------------------------------------------------------------------------------------------------------------
# <p align='center'> Utilisation des Modèles OLLAMA dans un terminal Windows</p>
--------------------------------------------------------------------------------------------------------------------------------------------------------------------------
## I. Modèles
| Modèles | Nombre de paramètres       | RAM | VRAM  | Description                      | Objectif de la taille du modèle                                | 
| ------- | -------------------------- | --- | ----- | -------------------------------- | -------------------------------------------------------------- |
| 7b      | 7  milliards de paramètres | XXX | 08-16 | Appelé "Mega" ou "Turing-NLG-001 | Tâches de traduction, la synthèse de texte, et le raisonnement |
| 12b     | 12 milliards de paramètres | XXX | 12-16 | BigScience-M" ou "Turing-NLG-002 | Plus large de tâches linguistiques                             |
| 16b     | 16 milliards de paramètres | XXX | 16-24 | Turing-NLG-003                   | Tâches de traitement du langage naturel                        |


----------------------------------------------------------------------------------------------------------------------------------
## II. Française
### A.  [Dolphin-mistral](https://ollama.com/library/mistral)
Le modèle Dolphin non censuré basé sur Mistral qui **excelle dans les tâches de codage**. 
```bash
ollama run dolphin-mistral
```

### B. [Mistral](https://ollama.com/library/mistral)
```bash
ollama run mistral
```

<br />

----------------------------------------------------------------------------------------------------------------------------------
## III. Etrangère
### X. [Gemma](https://ollama.com/library/gemma)
Gemma est un nouveau modèle ouvert développé par Google et son équipe DeepMind. Il est inspiré des modèles Gemini de Google.
```
ollama run gemma:2b
ollama run gemma:7b
```

### X. [Llama2](https://ollama.com/library/llama2)
Llama 2 est publié par Meta Platforms.
```
ollama run llama2
```

### X. [Linuxcmdxpert](https://ollama.com/ALIENTELLIGENCE/linuxcmdxpert)
Aide en ligne de commande pour Linux
```
ollama run ALIENTELLIGENCE/linuxcmdxpert
```

### X. [Qwen](https://ollama.com/library/qwen)
Qwen est une série de modèles de langage volumineux basés sur des transformateurs d’Alibaba Cloud.
```
ollama run qwen:0.5b
ollama run qwen:1.8b
ollama run qwen:4b
ollama run qwen:7b
ollama run qwen:14b
ollama run qwen:32b
ollama run qwen:72b
ollama run qwen:110b
```

### X. [Travelplanningbooking](https://ollama.com/ALIENTELLIGENCE/Travelplanningbooking)
Suggérer des itinéraires personnalisés, réserver des vols et des hôtels, et fournir des mises à jour de voyage en temps réel.
```
ollama run ALIENTELLIGENCE/travelplanningbooking
```
