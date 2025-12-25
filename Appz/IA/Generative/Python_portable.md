---------------------------------------------------------------------------------------------------------------------------------------
# <p align='center'> Installation de Python et de Stable Diffusion </p>
---------------------------------------------------------------------------------------------------------------------------------------
## I. Python (Portable)
### A. Téléchargement
```
cd ..
rmdir /q /s projet
mkdir projet
cd projet
start /wait curl https://www.python.org/ftp/python/3.10.0/python-3.10.0-embed-amd64.zip --output python-3.10.0-embed-amd64.zip
start /wait 7z x python-3.10.0-embed-amd64.zip -o"python-3.10.0"
del python-3.10.0-embed-amd64.zip
mkdir .\python-3.10.0\Scripts
cd .\python-3.10.0
start /wait curl https://bootstrap.pypa.io/get-pip.py --output .\get-pip.py
```

### B. Ajout de PIP
 ```
set PYTHON_HOME=D:\Users\Marc\Desktop\projet\python-3.10.0
set PATH=%PYTHON_HOME%;%PYTHON_HOME%\Scripts;%PATH%
cd %PYTHON_HOME%
python.exe get-pip.py
```

#### C. Utilisation
```
set PYTHON_HOME=D:\Users\marc\Desktop\python-3.10.0-embed
set PATH=%PYTHON_HOME%;%PYTHON_HOME%\Scripts;%PATH%
python --version
pip --version
```

### D. Ajout ENV
```
pip install virtualenv
```

### E. Stable Diffusion
```
set PYTHON_HOME=D:\Users\marc\Desktop\python-3.10.0-embed
set PATH=%PYTHON_HOME%;%PYTHON_HOME%\Scripts;%PATH%
cd %PYTHON_HOME%
virtualenv stablediffusion
.\stablediffusion\Scripts\activate
```

#### F. Installation avec Hugging Face Diffusers
```
pip install diffusers
pip install transformers scipy ftfy accelerate
```
#### G. Cloner le dépôt GitHub
```
git clone https://github.com/AUTOMATIC1111/stable-diffusion-webui.git
```

#### H. Lancement
```
cd stable-diffusion-webui
webui-user.bat
```





