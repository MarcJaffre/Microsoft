@echo off

:: ##################################################################################################################################################################################
:: # Nettoyage console #
:: #####################
cls

:: ##################################################################################################################################################################################
:: # Telechargement des fichiers #
:: ###############################

:: 7Zip
"C:\Program Files (x86)\Microsoft\Edge\Application\msedge.exe" https://www.7-zip.org/a/7z2500-x64.msi

:: GIT
"C:\Program Files (x86)\Microsoft\Edge\Application\msedge.exe" https://github.com/git-for-windows/git/releases/download/v2.46.2.windows.1/Git-2.46.2-64-bit.exe

:: Python
"C:\Program Files (x86)\Microsoft\Edge\Application\msedge.exe" https://www.python.org/ftp/python/3.10.6/python-3.10.6-amd64.exe

:: Visual C++
"C:\Program Files (x86)\Microsoft\Edge\Application\msedge.exe" https://aka.ms/vs/16/release/vc_redist.x64.exe

:: Stable Diffusion
"C:\Program Files (x86)\Microsoft\Edge\Application\msedge.exe" https://codeload.github.com/AUTOMATIC1111/stable-diffusion-webui/zip/refs/heads/master

:: Pause 
pause

:: ##################################################################################################################################################################################
:: # Installation #
:: ################
start /wait msiexec /i %userprofile%\Downloads\7z2500-x64.msi          /qn
start /wait            %userprofile%\Downloads\Git-2.46.2-64-bit.exe   /SILENT   /SP-
start /wait            %userprofile%\Downloads\python-3.10.6-amd64.exe /quiet   /passive
start /wait            %userprofile%\Downloads\vc_redist.x64.exe       /install /quiet

:: ##################################################################################################################################################################################
:: # Stable Diffusion #
:: ####################
rmdir /q /s D:\stable-diffusion-webui-master
"C:\Program Files\7-Zip\7z.exe" x %userprofile%\Downloads\stable-diffusion-webui-master.zip  -oD:\ -y

:: ##################################################################################################################################################################################
:: # Purge #
:: #########
del %userprofile%\Downloads\7z2500-x64.msi 
del %userprofile%\Downloads\Git-2.46.2-64-bit.exe
del %userprofile%\Downloads\python-3.10.6-amd64.exe
del %userprofile%\Downloads\vc_redist.x64.exe
del %userprofile%\Downloads\stable-diffusion-webui-master.zip

:: ##################################################################################################################################################################################
:: # Dossier de Travail #
:: ######################
D:
cd D:\stable-diffusion-webui-master

:: ##################################################################################################################################################################################
:: # Torch #
:: #########
del D:\torch-2.1.2+cu121-cp310-cp310-win_amd64.whl
curl -L -o D:\torch-2.1.2+cu121-cp310-cp310-win_amd64.whl "https://download.pytorch.org/whl/cu121/torch-2.1.2%2Bcu121-cp310-cp310-win_amd64.whl"
pip install D:\torch-2.1.2+cu121-cp310-cp310-win_amd64.whl

pip install -r requirements.txt

:: ##################################################################################################################################################################################
:: # XFormers #
:: ############
:: pip3 install -U xformers --index-url https://download.pytorch.org/whl/cu124  --no-cache-dir
:: python -m xformers.info

:: ##################################################################################################################################################################################
:: # Pip #
:: ########
:: pip uninstall xformers
:: pip list
pip cache purge


:: ##################################################################################################################################################################################
:: # webui-user.bat #
:: ##################
(
echo set PYTHON=
echo set GIT=
echo set VENV_DIR=
echo set USE_TORCH=0
echo set COMMANDLINE_ARGS=--device-id 0 --disable-console-progressbars --disable-model-loading-ram-optimization --lowram --disable-nan-check --listen --api --api-auth marc:admin --skip-torch-cuda-test
echo call webui.bat
) > D:\stable-diffusion-webui-master\webui-user.bat

:: ##################################################################################################################################################################################
:: # Start #
:: #########
call webui-user.bat


:: ##################################################################################################################################################################################
:: # Pause #
:: #########
pause
