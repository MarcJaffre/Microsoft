----------------------------------------------------------------------------------------------------------------
# <p align='center'> Lancer Raspbian depuis Qemu sous Windows </p>
----------------------------------------------------------------------------------------------------------------
## I. Base
### A. Bios
Désactiver le démarrage sécurisé
### B. Désactiver Sécurité des pilotes
Après avoir taper la commande, il faudra redémarrer
```bash
bcdedit /set nointegritychecks ON
```
### C. Pilote TAP
Installer le pilote TAP.
```
https://build.openvpn.net/downloads/releases/tap-windows-9.24.7.zip
```

![image](https://github.com/user-attachments/assets/a3bb2fb3-c554-4d8a-9a33-6f0d7b753c00)

### D. Panneau de configuration
#### 1. Renommer interface
Renommer l'interface en TAP9

![image](https://github.com/user-attachments/assets/03d7447b-6e4b-4d46-9323-5b727038ba23)

#### 2. Configuration IP
La passerlle et le DNS doivent être pointer vers le réseau physique.

![image](https://github.com/user-attachments/assets/d5f6cb3a-03c2-4b70-b168-8bb40bf9006b)

#### 3. Autoriser le partage de connexion internet
Depuis l'interface qui à internet autorisé le partage depuis TAP9.

![image](https://github.com/user-attachments/assets/bdcc576c-c15d-422b-97eb-c0962fb18bf9)

----------------------------------------------------------------------------------------------------------------
## II. Qemu
### A. Installation de Qemu
Télécharger la dernière version de QEMU. (qemu-w64-setup-20250326.exe)
```
https://qemu.weilnetz.de/w64/2025/
```
### B. Variable d'environnement
Ouvrir le menu démarrer puis taper avancés. Puis cliquer sur Variables d'environnement > Path > Modifier.

Ajouter le chemin où Qemu est installé et validé.

![image](https://github.com/user-attachments/assets/2b546d4c-fbbb-40ee-bf27-cebd30849fa5)

### E. Vérification
Ouvrir la CMD et taper `qemu-img.exe`.

![image](https://github.com/user-attachments/assets/2e6ea615-d1b8-4bb3-932c-c3ead8df1126)

### C. Télécharger les fichiers
#### 1. Buster
```
https://downloads.raspberrypi.org/raspbian/images/raspbian-2020-02-14/2020-02-13-raspbian-buster.zip
https://github.com/dhruvvyas90/qemu-rpi-kernel/blob/master/kernel-qemu-4.19.50-buster
https://github.com/dhruvvyas90/qemu-rpi-kernel/blob/master/versatile-pb-buster-5.4.51.dtb
```


### D. Démarrer la machine
```bash
@echo off

:: ##############################################################################################
:: user: pi
:: pass: raspberry


:: ##############################################################################################
title Emuler RaspberryPi

:: ##############################################################################################
set APPZ_DOSSIER=C:\Program Files\qemu
set APPZ_BINAIRE=qemu-system-arm.exe
set SOURCE=D:\Users\marc\Documents\Qemu
set IMAGE=2020-02-13-raspbian-buster.img
set KERNEL=kernel-qemu-4.19.50-buster
set DTB=versatile-pb-buster-5.4.51.dtb
set TYPE_CPU=arm1176
set RAM=256
set TYPE=versatilepb

:: ##############################################################################################
cd "%APPZ_DOSSIER%"

:: ###############################################################################################
:: # Preparation #
:: ###############
:: "%APPZ_DOSSIER%\qemu-img.exe" resize SOURCE%\%IMAGE% +5G

:: ##############################################################################################
%APPZ_BINAIRE% ^
-kernel %SOURCE%\%KERNEL% ^
-dtb %SOURCE%\%DTB% ^
-cpu %TYPE_CPU% ^
-smp cores=1 ^
-m %RAM% ^
-M %TYPE% ^
-serial stdio ^
-usbdevice tablet ^
-netdev tap,id=net0,ifname=TAP9,script=no,downscript=no ^
-device virtio-net-pci,netdev=net0 ^
-append "root=/dev/sda2 panic=1 rootfstype=ext4 rw" ^
-drive "file=%SOURCE%\%IMAGE%,index=0,media=disk,format=raw"
pause
```

### E. IP Static
Il suffit de définir l'ip de la machine

```
IPv4 : 192.168.2.2
Mask : 255.255.255.0
GW   : 192.168.0.1
DNS  : 192.168.0.1
```


