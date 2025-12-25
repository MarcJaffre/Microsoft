---------------------------------------------------------------------------------------------------------------------------------------
# <p align='center'> Installation de Stable Diffusion sur un environnement portable </p>
---------------------------------------------------------------------------------------------------------------------------------------
## I. Python (Portable)
```
C:\stable-diffusion\
├── python-3.10.0\          ← Python 3.10
├── sd-env\                 ← Environnement virtuel des modules de Stables diffusions
├── webui\                  ← Clone de AUTOMATIC1111 WebUI
├── requirements.txt        ← Liste des modules à installé
└── deploy-sd.bat           ← Ce script d'installation et de lancement (Découper par étape)
```

### X. Configuration du projet
```bash
cls
set PROJECT_DIR=C:\stable-diffusion
set PYTHON_VERSION=3.10.0
set PYTHON_DIR=%PROJECT_DIR%\python-%PYTHON_VERSION%
set VENV_DIR=%PROJECT_DIR%\sd-env
set WEBUI_DIR=%PROJECT_DIR%\webui
```

### X. Dossier de travail
```bash
cd /d C:\
rmdir /q /s "%PROJECT_DIR%"
mkdir       "%PROJECT_DIR%"
cd /d       "%PROJECT_DIR%"
```

### X. Purge ancien Environnement
```bash
cls
rmdir /q /s "%VENV_DIR%"
rmdir /q /s "%WEBUI_DIR%"
```

### X. Installation Python embarqué
```bash
cls
powershell -Command "Invoke-WebRequest -Uri 'https://www.python.org/ftp/python/%PYTHON_VERSION%/python-%PYTHON_VERSION%-embed-amd64.zip' -OutFile 'python-%PYTHON_VERSION%-embed-amd64.zip'"
powershell -Command "Expand-Archive -Path 'python-%PYTHON_VERSION%-embed-amd64.zip' -DestinationPath '%PYTHON_DIR%'"
del "python-%PYTHON_VERSION%-embed-amd64.zip"
```


### X. Installation de PIP
```bash
cls
cd /d "%PYTHON_DIR%"
powershell -Command "(Get-Content python310._pth) -replace '#import site', 'import site' | Set-Content python310._pth"
powershell -Command "Invoke-WebRequest -Uri 'https://bootstrap.pypa.io/get-pip.py' -OutFile 'get-pip.py'"
python.exe get-pip.py --no-warn-script-location
```

### X. Vérification des installations
```bash
cls
python --version
python -m pip --version
```

### X. Installation de virtualenv avec le Python embarqué
```bash
"%PYTHON_DIR%\python.exe" -m pip install virtualenv
```

<br />
<br />

### X. Suppression de l'environnement virtuel (sd-env)
```bash
cls
cd /d "%PROJECT_DIR%"
deactivate
rmdir /S /Q "%VENV_DIR%"
```

### X. Création de l'environnement virtuel (sd-env)
```bash
cls
cd /d "%PROJECT_DIR%"
"%PYTHON_DIR%\python.exe" -m virtualenv "%VENV_DIR%"
```

### X. Activation et installation dans l'environnement virtuel (sd-env)
```bash
cls
call "%VENV_DIR%\Scripts\activate.bat"
```

### X.Installation des dependances via PIP (sd-env)
```bash
cls
pip install --upgrade pip
pip install torch==2.7.1+cu118 torchvision==0.22.1+cu118 torchaudio==2.7.1+cu118 --index-url https://download.pytorch.org/whl/cu118
pip install accelerate diffusers transformers
pip install xformers==0.0.31 gradio==3.43.0
```
#### 6. Lister les dépendances(sd-env)
```bash
cls
pip list | findstr /R "torch torchvision torchaudio"
```


<br />
<br />

### X. Clonage du projet Stable-Diffusion (stable-diffusion-webui)
stable_diffusion_repo
```bash
cls
set GIT="C:\Program Files\Git\bin\git.exe"
%GIT% clone https://github.com/AUTOMATIC1111/stable-diffusion-webui.git "%WEBUI_DIR%"
```

### X. Fix Depots
```
cls
cd /d "%WEBUI_DIR%"\modules
powershell -Command "(Get-Content launch_utils.py) -replace 'https://github.com/Stability-AI/stablediffusion.git', 'https://github.com/AUTOMATIC1111/stable-diffusion-webui.git' | Set-Content launch_utils.py"
powershell -Command "(Get-Content launch_utils.py) -replace 'cf1d67a6fd5ea1aa600c4df58e5b47da45f6bdbf', '82a973c04367123ae98bd9abdf80d9eda9b910e2' | Set-Content launch_utils.py"
```




```

### X. Requirements.txt
```bash
cls
cd /d "%PROJECT_DIR%"
powershell -Command "Invoke-WebRequest -Uri 'https://raw.githubusercontent.com/AUTOMATIC1111/stable-diffusion-webui/master/requirements.txt' -OutFile 'requirements.txt'"
```

### X. Mise à niveau
```bash
cls
cd /d "%PROJECT_DIR%"
pip install --upgrade -r requirements.txt
```


<br />
<br />
<br />


### X. Lancement de Stable Diffusion
```bash
@echo off


set PROJECT_DIR=C:\stable-diffusion
set WEBUI_DIR=%PROJECT_DIR%\webui
set VENV_DIR=%PROJECT_DIR%\sd-env

cd /d "%WEBUI_DIR%"

call "%VENV_DIR%\Scripts\activate.bat"

:: Chemin vers git.exe (sans guillemets dans la variable)
set GIT=C:\Program Files\Git\bin\git.exe

set PYTHONPATH=%WEBUI_DIR%
set PYTHON=%VENV_DIR%\Scripts\python.exe
set COMMANDLINE_ARGS=--skip-torch-cuda-test --use-directml --precision full --no-half --medvram --opt-split-attention --disable-nan-check --listen --port 80

%PYTHON% launch.py %COMMANDLINE_ARGS%
deactivate
```



### X. Définir PATH (Ajout GIT)
```bash
cls
set GIT="C:\Program Files\Git\bin\git.exe"
set PATH=%GIT%;%PYTHON_DIR%;%PYTHON_DIR%\Scripts;%PATH%
set PYTHONHOME=%PYTHON_DIR%
```

### X. 
```bash
cls
```

