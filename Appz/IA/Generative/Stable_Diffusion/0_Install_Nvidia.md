---------------------------------------------------------------------------------------------------------------------
# <p align='center'> Installation de Stable Diffusion </p>
---------------------------------------------------------------------------------------------------------------------
## I. Installation
### A. Python
Cocher la case `PATH`.
```
https://www.python.org/ftp/python/3.10.6/python-3.10.6-amd64.exe
```

### B. GIt
```
https://github.com/git-for-windows/git/releases/download/v2.46.2.windows.1/Git-2.46.2-64-bit.exe
```

### D. Télécharger Stable Diffusion
Télécharger et extraire le fichier compresser [isi](https://codeload.github.com/AUTOMATIC1111/stable-diffusion-webui/zip/refs/heads/master)

### E. Xformers (Experimental)
```bash
D:
cd D:\stable-diffusion-webui-master
pip3 install -U xformers --index-url https://download.pytorch.org/whl/cu124
pip uninstall xformers
python -m xformers.info
pip list
```

### F. Web-user.bat
```
@echo off


:: Ollama : --listen --api --api-auth marc:admin

set PYTHON=
set GIT=
set VENV_DIR=
set COMMANDLINE_ARGS=--device-id 0 --disable-console-progressbars --disable-model-loading-ram-optimization --lowram --lowram --disable-nan-check --listen --api --api-auth marc:admin
call webui.bat
```

<br />

---------------------------------------------------------------------------------------------------------------------
## II. Ollama
### A. Configuration
Aller dans `Panneau d'administration` > `Paramètres` > `Images` .

```
Moteur de génération d'images                    : Automatic1111
URL de base AUTOMATIC1111                        : http://192.168.0.30:7860/
AUTOMATIC1111 Chaîne d'authentification de l'API : marc:admin
...

```


