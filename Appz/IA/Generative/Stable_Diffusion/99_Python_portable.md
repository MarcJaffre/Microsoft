---------------------------------------------------------------------------------------------------------------------------------------
# <p align='center'> Installation de Python et de Stable Diffusion </p>
---------------------------------------------------------------------------------------------------------------------------------------
## I. Python (Portable)
### A. Dossier de travail
```
cls
cd C:\
rmdir /q /s projet
mkdir projet
cd projet
```

### B. Téléchargement
```
cls
start /wait curl https://www.python.org/ftp/python/3.10.0/python-3.10.0-embed-amd64.zip --output python-3.10.0-embed-amd64.zip
start /wait 7z x python-3.10.0-embed-amd64.zip -o"python-3.10.0"
del python-3.10.0-embed-amd64.zip
mkdir .\python-3.10.0\Scripts
cd .\python-3.10.0
start /wait curl https://bootstrap.pypa.io/get-pip.py --output .\get-pip.py
```

```
cls
set PYTHON_HOME=C:\projet\python-3.10.0
set PATH=%PYTHON_HOME%;%PYTHON_HOME%\Scripts;%PATH%
cd C:\
cd %PYTHON_HOME%
```

### C. Site
```
powershell -Command "(Get-Content python310._pth) -replace '#import', 'import' | Set-Content python310._pth"
```

### D. Ajout de PIP
```
python.exe get-pip.py
```

### E. Utilisation
```
python --version
pip    --version
```

### F. Ajout ENV
```
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
git clone https://github.com/AUTOMATIC1111/stable-diffusion-webui.git
```

#### E. Lancement
```
cd stable-diffusion-webui
webui-user.bat
```





