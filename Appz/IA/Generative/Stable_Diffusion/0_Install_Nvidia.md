---------------------------------------------------------------------------------------------------------------------
# <p align='center'> Installation de Stable Diffusion </p>
---------------------------------------------------------------------------------------------------------------------
## I. Installation
### A. GIt
### B. Python

### D. Télécharger Stable Diffusion
Télécharger et extraire le fichier compresser [isi](https://codeload.github.com/AUTOMATIC1111/stable-diffusion-webui/zip/refs/heads/master)

### E. Web-user.bat
```
@echo off

set PYTHON=
set GIT=
set VENV_DIR=
set COMMANDLINE_ARGS=--device-id 0 --disable-console-progressbars --disable-model-loading-ram-optimization --disable-nan-check --listen --api --api-auth marc:admin --lowram

call webui.bat
```


<br />

---------------------------------------------------------------------------------------------------------------------
## II. Ollama
