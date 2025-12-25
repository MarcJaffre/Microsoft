---------------------------------------------------------------------------------------------------------------------------------------
# <p align='center'> Installation de Python et de Stable Diffusion </p>
---------------------------------------------------------------------------------------------------------------------------------------
## I. Python (Portable)
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
cls
cd /d C:\
rmdir /q /s "%PROJECT_DIR%"
mkdir       "%PROJECT_DIR%"
cd /d       "%PROJECT_DIR%"
```

### X. Purge ancien environnement
```bash
cls
rmdir /q /s "%VENV_DIR%"
rmdir /q /s "%WEBUI_DIR%"
```

### X. Telecharement de Python 
```bash
cls
powershell -Command "Invoke-WebRequest -Uri 'https://www.python.org/ftp/python/%PYTHON_VERSION%/python-%PYTHON_VERSION%-embed-amd64.zip' -OutFile 'python-%PYTHON_VERSION%-embed-amd64.zip'"
```

### X. Extraction et purge zip
```bash
cls
powershell -Command "Expand-Archive -Path 'python-%PYTHON_VERSION%-embed-amd64.zip' -DestinationPath '%PYTHON_DIR%'"
del "python-%PYTHON_VERSION%-embed-amd64.zip"
```

### X. PIP
```bash
cls
cd /d "%PYTHON_DIR%"
powershell -Command "(Get-Content python310._pth) -replace '#import site', 'import site' | Set-Content python310._pth"
powershell -Command "Invoke-WebRequest -Uri 'https://bootstrap.pypa.io/get-pip.py' -OutFile 'get-pip.py'"
python.exe get-pip.py --no-warn-script-location
```

### X. Définir PATH
```bash
cls
set PATH=%PYTHON_DIR%;%PYTHON_DIR%\Scripts;%PATH%
set PYTHONHOME=%PYTHON_DIR%
```

### X. Verification
```bash
python --version
pip --version
```

### X. Environnement virtuel
```bash
cls
cd /d "%PROJECT_DIR%"
pip install virtualenv
python -m virtualenv "%VENV_DIR%"
```

### X. Activation de l'environnement
```bash
cls
call "%VENV_DIR%\Scripts\activate.bat"
```

### X. Installation des dependances
```bash
cls
pip install --upgrade pip
pip install torch torchvision torchaudio --index-url https://download.pytorch.org/whl/cu118
pip install diffusers transformers accelerate xformers
pip install gradio==3.43.0
pip install --upgrade -r requirements.txt
```

### X. Clonage du projet Stable-Diffusion
```bash
cls
"C:\Program Files\Git\bin\git.exe" clone https://github.com/AUTOMATIC1111/stable-diffusion-webui.git "%WEBUI_DIR%"
```


### X. Lancement de Stable Diffusion
```bash
cls

set PROJECT_DIR=C:\stable-diffusion
set WEBUI_DIR=%PROJECT_DIR%\webui
set VENV_DIR=%PROJECT_DIR%\sd-env


cd /d "%WEBUI_DIR%"
call "%VENV_DIR%\Scripts\activate.bat"
set  PYTHONPATH=%WEBUI_DIR%
set  PYTHON=%VENV_DIR%\Scripts\python.exe

set COMMANDLINE_ARGS=--skip-torch-cuda-test --use-directml --precision full --no-half --medvram --opt-split-attention --disable-nan-check --listen --port 80

python launch.py %COMMANDLINE_ARGS%
```


### X. 
```bash
cls
```


### X. 
```bash
cls
```

