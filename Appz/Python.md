
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
python.exe get-pip.py
```

### 4. env
```
pip install virtualenv
```

#### X. Utilisation
```
set PYTHON_HOME=D:\Users\marc\Desktop\python-3.10.0-embed
set PATH=%PYTHON_HOME%;%PYTHON_HOME%\Scripts;%PATH%
python --version
pip --version
```
