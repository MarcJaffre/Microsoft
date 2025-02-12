---------------------------------------------------------------------------------------------------------------------------------------------------------------
# <p align='center'> Maintenance Docker, OLLAMA, WSL2 </p> 
---------------------------------------------------------------------------------------------------------------------------------------------------------------
## I. Docker
### A. Arrêt du conteneur
```bash
docker stop open-webui
```

### B. Arrêt WSL
```
wsl --shutdown
```

### C. Disk Docker
Compression du disque de stockage Docker
#### 1. Diskpart
```
diskpart
```
#### 2. Compression
```
select vdisk file="D:\IA\Docker\DockerDesktopWSL\disk\docker_data.vhdx"
attach vdisk readonly
compact vdisk
detach vdisk
```

### D. Démarrage WSL
```
wsl.exe --install --no-distribution
```

### E. Démarrrage du conteneur
```bash
docker start open-webui
```
