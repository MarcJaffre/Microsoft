---------------------------------------------------------------------------------------------------------------------------------------
# <p align='center'> Installation de Python et de Stable Diffusion </p>
---------------------------------------------------------------------------------------------------------------------------------------
## I. Python (Portable)
### A. Dossier de travail
```bash
cls
cd C:\
rmdir /q /s projet
mkdir projet
cd projet
```

### B. Téléchargement
#### 1. Python 3.10.0
```bash
cls
start /wait curl https://www.python.org/ftp/python/3.10.0/python-3.10.0-embed-amd64.zip --output python-3.10.0-embed-amd64.zip
start /wait 7z x python-3.10.0-embed-amd64.zip -o"python-3.10.0"
del python-3.10.0-embed-amd64.zip
mkdir .\python-3.10.0\Scripts
cd .\python-3.10.0
```
#### 2. PIP
```bash
cls
start /wait curl https://bootstrap.pypa.io/get-pip.py --output .\get-pip.py
powershell -Command "(Get-Content python310._pth) -replace '#import', 'import' | Set-Content python310._pth"
python.exe get-pip.py
```

```bash
cls
set PYTHON_HOME=C:\projet\python-3.10.0
set PATH=%PYTHON_HOME%;%PYTHON_HOME%\Scripts;%PATH%
cd C:\
cd %PYTHON_HOME%
```


### E. Utilisation
```bash
python --version
pip    --version
```

### F. Ajout ENV
```bash
pip install virtualenv
```

<br />

---------------------------------------------------------------------------------------------------------------------------------------
## II. Stable Diffusion
### A. Dossier de Travail
```
cls
set PYTHON_HOME=C:\projet\python-3.10.0
set PATH=%PYTHON_HOME%;%PYTHON_HOME%\Scripts;%PATH%
cd C:\
cd %PYTHON_HOME%
```

### B. Création de l'environnement
```
virtualenv stablediffusion
.\stablediffusion\Scripts\activate
```

#### C. Installation avec Hugging Face Diffusers
```
pip install diffusers
pip install transformers scipy ftfy accelerate
```

#### D. Cloner le dépôt GitHub
```
set GIT=C:\Program Files\Git\bin\git.exe
"%GIT%" clone https://github.com/AUTOMATIC1111/stable-diffusion-webui.git
```

#### X. Fix
```
cd stable-diffusion-webui
pip install virtualenv
%PYTHON_HOME%\python.exe -m venv .\venv
```

#### X. Lancement
```
notepad webui-user.bat
```

```
@echo off

set PYTHON=C:\projet\python-3.10.0\python.exe
set GIT=
set VENV_DIR=
set COMMANDLINE_ARGS=

call webui.bat
```



