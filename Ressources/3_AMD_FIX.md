----------------------------------------------------------------------------------------------------------------------------------------------------
## <p align='center'> AMD GPU </p>

----------------------------------------------------------------------------------------------------------------------------------------------------
### I. Message d'erreur
Si ces solutions logicielles ne fonctionnent pas, le problème pourrait être lié au matériel, notamment à la mémoire RAM ou au disque dur. 

#### A. Erreur 1
```
La bibliothèque Démarrage mesuré a rencontré un échec et est entrée dans un état précaire.
- InitState              : 1
- StatusCode             : 0xC0000001
- Adresse de défaillance : 0xB15B6B
- Adresse de référence   : 0xC5AF00
- Raison                 : 1
```

#### B. Erreur 2
```
L’environnement de démarrage Windows n’a pas pu initialiser l'appareil TPM. StatusCode : 0xC0000002, Position : 1.
```

#### C. Erreur 3
```
L'appareil PCI\VEN_1002&DEV_73DF&SUBSYS_0E361002&REV_C1\6&174d5041&0&00000019 a eu un problème de démarrage.
Nom du pilote      : oem8.inf
GUID de classe     : {4d36e968-e325-11ce-bfc1-08002be10318}
Service            : amduw23g
Filtres inférieurs : 
Filtres supérieurs : 
Problème           : 0x0
État du problème   : 0xC00000E5
```

```
L'appareil ROOT\AMDLOG\0000 a eu un problème de démarrage.
Nom du pilote      : oem14.inf
GUID de classe     : {4d36e97d-e325-11ce-bfc1-08002be10318}
Service            : amdfendrmgr
Filtres inférieurs : 
Filtres supérieurs : 
Problème           : 0x15
État du problème   : 0xC00000BB
```

```
L'appareil ROOT\AMDXE\0000 a eu un problème de démarrage.

Nom du pilote      : oem9.inf
GUID de classe     : {4d36e97d-e325-11ce-bfc1-08002be10318}
Service            : AMDXE
Filtres inférieurs : 
Filtres supérieurs : 
Problème           : 0x15
État du problème   : 0xC00000BB
```

```
L'appareil PCI\VEN_1002&DEV_73DF&SUBSYS_0E361002&REV_C1\6&174d5041&0&00000019 a eu un problème de démarrage.

Nom du pilote      : oem3.inf
GUID de classe     : {4d36e968-e325-11ce-bfc1-08002be10318}
Service            : amduw23g
Filtres inférieurs : 
Filtres supérieurs : 
Problème           : 0x0
État du problème   : 0xC00000E5
```

####  D. SBAT
```
Échec de la mise à jour de la valeur SBAT dans FW
```

<br />

----------------------------------------------------------------------------------------------------------------------------------------------------
### II. Solution

#### A. Réparation de Microsoft Windows
```
sfc /scannow
DISM /Online /Cleanup-Image /RestoreHealth
```
#### B. Vérification de l'intégrité du disque
```
chkdsk C: /f /r
```
#### C. MémTest
```
mdsched
```

#### D. Réparer le BootRecorded
```
bootrec /fixmbr
bootrec /fixboot
bootrec /rebuildbcd
bcdboot C:\Windows /s C: /f ALL
```

#### E. TPM
Effacer le module TPM
```
tpm.msc
```

#### F. SBAT
```
reg add "HKLM\SYSTEM\CurrentControlSet\Control\SecureBoot\State" /v "UEFISecureBootEnabled" /t REG_DWORD /d 0 /f
```

#### G. Autre
```
reg add "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Control\Session Manager\Memory Management" /v FeatureSettingsOverride     /t REG_DWORD /d 3 /f
reg add "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Control\Session Manager\Memory Management" /v FeatureSettingsOverrideMask /t REG_DWORD /d 3 /f
```


<br />

----------------------------------------------------------------------------------------------------------------------------------------------------
### III. Flash GPU
#### A. ATI Flash
Télécharger la version 3.31 !
```
https://www.techpowerup.com/download/ati-atiflash/
```

#### B. Bios
```
https://www.techpowerup.com/vgabios/231451/amd-rx6700xt-12288-210125
```
#### C. Flash
```
- Lancer AMDVBFlashDriverInstaller.exe : Activer pilote de Flashage
- Lancer amdvbflashWin.exe             : Flasher le GPU
- Lancer AMDVBFlashDriverInstaller.exe : Désactiver pilote de Flashage
```

```
@echo off

cls

:: Aller dans le Disque D
D:

:: Aller dans le repertoire
cd D:\Users\marc\Desktop\AMD_FLASH

:: Installer le pilote 
.\AMDVBFlashDriverInstaller.exe --install

:: Demarrer le tool de flashage
.\amdvbflashWin.exe

:: Desinstaller le pilote 
AMDVBFlashDriverInstaller.exe --uninstall
```
