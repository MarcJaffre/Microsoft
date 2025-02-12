###########################################################################################################################################################################################################
# Nvidia #
##########
nvidia-smi -L
docker run --rm --gpus=all -it nvidia/cuda:12.8.0-base-ubuntu24.04 nvidia-smi
docker image rm -f nvidia/cuda:12.8.0-base-ubuntu24.04

###########################################################################################################################################################################################################
# Désinstallation #
###################
start /wait D:\IA\OLLAMA\unins000.exe
rmdir /S /Q %userprofile%\.ollama
rmdir /S /Q %appdata%\..\Local\Ollama
rmdir /S /Q D:\IA\OLLAMA

###########################################################################################################################################################################################################
# Installation #
################
start /wait D:\Installateur\OllamaSetup.exe /DIR="D:\IA\OLLAMA" /LANG=fr-FR /GROUP="OLLAMA Tools" /VERYSILENT /LOG /LOG="D:\Installateur\Install.log"
rmdir /S /Q C:\Users\marc\.ollama\models
mkdir D:\IA\OLLAMA\Models
mklink /D C:\Users\marc\.ollama\models D:\IA\OLLAMA\Models
notepad D:\Installateur\Install.log


###########################################################################################################################################################################################################
# Variable d'environnement #
############################
cls
:: set OLLAMA_DEBUG=false
:: set OLLAMA_FLASH_ATTENTION=false
:: set OLLAMA_GPU_OVERHEAD=0
:: set OLLAMA_HOST=http://127.0.0.1:11434
:: set OLLAMA_INTEL_GPU=false
:: set OLLAMA_KEEP_ALIVE=5m0s
:: set OLLAMA_KV_CACHE_TYPE=
:: set OLLAMA_LLM_LIBRARY=
:: set OLLAMA_LOAD_TIMEOUT=5m0s
:: set OLLAMA_MAX_LOADED_MODELS=0
:: set OLLAMA_MAX_QUEUE=512
:: set OLLAMA_MODELS=D:\\IA\\OLLAMA\\Models
:: set OLLAMA_MULTIUSER_CACHE=false
:: set OLLAMA_NOHISTORY=false
:: set OLLAMA_NOPRUNE=false
:: set OLLAMA_NUM_PARALLEL=0
:: set ROCR_VISIBLE_DEVICES=
:: set OLLAMA_SCHED_SPREAD=false
:: set OLLAMA_ORIGINS "[http://localhost https://localhost http://localhost:* https://localhost:* http://127.0.0.1 https://127.0.0.1 http://127.0.0.1:* https://127.0.0.1:* http://0.0.0.0 https://0.0.0.0 http://0.0.0.0:* https://0.0.0.0:* app://* file://* tauri://* vscode-webview://*]"
ollama serve

ollama run mistral

###########################################################################################################################################################################################################
# Autre #
#########
ollama pull <MODEL>
ollama rm   <MODEL>
ollama run  <MODEL>
ollama stop <MODEL>
ollama ls


###########################################################################################################################################################################################################
# Conteneur #
#############
netsh advfirewall firewall delete rule name="Ollama"
netsh advfirewall firewall delete rule name="Ollama-API"
docker container rm -f open-webui
docker image     rm -f ghcr.io/open-webui/open-webui:cuda


docker run -d -p 3000:8080 --gpus all --add-host=host.docker.internal:host-gateway -v open-webui:/app/backend/data --name open-webui --restart always ghcr.io/open-webui/open-webui:cuda
netsh advfirewall firewall add rule name="Ollama"     dir=in action=allow protocol=TCP localport=3000
netsh advfirewall firewall add rule name="Ollama-API" dir=in action=allow protocol=TCP localport=11434

###########################################################################################################################################################################################################
# Docker #
##########
docker system df

###########################################################################################################################################################################################################
Pourrais tu me trouver un vol genève-paris pour demain à 8h le moins chère possible.


unable to load amdhip64_6.dll, please make sure to upgrade to the latest amd driver: Le module spécifié est introuvable.

ggml_backend_cuda_buffer_type_alloc_buffer: allocating 3850.02 MiB on device 0: cudaMalloc failed: out of memory
llama_model_load: error loading model: unable to allocate CUDA0 buffer
llama_load_model_from_file: failed to load model





