
### Python portable
#### 1. Téléchargement
```
https://www.python.org/ftp/python/3.10.0/python-3.10.0-embed-amd64.zip
https://bootstrap.pypa.io/get-pip.py
```

#### 2. Préparation
```
- Créer un dossier Python310
- Extraitre le fichier compressé dans python-3.10.0-embed-amd64.zip
- Déplacer le fichier get-pip.py à la racine du dossier Python310
- Créer un dossier Python310\Scripts
```

 #### 3. PIP
 ```
set PYTHON_HOME=D:\Users\marc\Desktop\python-3.10.0-embed
set PATH=%PYTHON_HOME%;%PYTHON_HOME%\Scripts;%PATH%
cd %PYTHON_HOME%
python.exe get-pip.py
```

### 4. env
```
set PYTHON_HOME=D:\Users\marc\Desktop\python-3.10.0-embed
set PATH=%PYTHON_HOME%;%PYTHON_HOME%\Scripts;%PATH%
cd %PYTHON_HOME%
pip install virtualenv
```



### 5. Création d'un environnement pour Stable Diffusion
```
set PYTHON_HOME=D:\Users\marc\Desktop\python-3.10.0-embed
set PATH=%PYTHON_HOME%;%PYTHON_HOME%\Scripts;%PATH%
cd %PYTHON_HOME%
virtualenv stablediffusion
.\stablediffusion\Scripts\activate
```
#### 6.
```
pip install diffusers
pip install transformers scipy ftfy accelerate
git clone https://github.com/AUTOMATIC1111/stable-diffusion-webui.git
cd stable-diffusion-webui
webui-user.bat
```

#### X. Utilisation
```
set PYTHON_HOME=D:\Users\marc\Desktop\python-3.10.0-embed
set PATH=%PYTHON_HOME%;%PYTHON_HOME%\Scripts;%PATH%
python --version
pip --version
```
