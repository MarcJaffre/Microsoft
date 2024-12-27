----------------------------------------------------------------------------------------------------------------------------------------------------
## <p align='center'> AMD GPU </p>

----------------------------------------------------------------------------------------------------------------------------------------------------
```
La bibliothèque Démarrage mesuré a rencontré un échec et est entrée dans un état précaire.
InitState : 1, StatusCode : 0xC0000001
Adresse de défaillance : 0xB15B6B
Adresse de référence : 0xC5AF00
Raison : 1.
```

Si ces solutions logicielles ne fonctionnent pas, le problème pourrait être lié au matériel, notamment à la mémoire RAM ou au disque dur. 



```
L’environnement de démarrage Windows n’a pas pu initialiser l'appareil TPM. StatusCode : 0xC0000002, Position : 1.
```


```
L'appareil PCI\VEN_1002&DEV_73DF&SUBSYS_0E361002&REV_C1\6&174d5041&0&00000019 a eu un problème de démarrage.
Nom du pilote : oem8.inf
GUID de classe : {4d36e968-e325-11ce-bfc1-08002be10318}
Service : amduw23g
Filtres inférieurs : 
Filtres supérieurs : 
Problème : 0x0
État du problème : 0xC00000E5
```


```
L'appareil ROOT\AMDLOG\0000 a eu un problème de démarrage.

Nom du pilote : oem14.inf
GUID de classe : {4d36e97d-e325-11ce-bfc1-08002be10318}
Service : amdfendrmgr
Filtres inférieurs : 
Filtres supérieurs : 
Problème : 0x15
État du problème : 0xC00000BB
```


```
L'appareil ROOT\AMDXE\0000 a eu un problème de démarrage.

Nom du pilote : oem9.inf
GUID de classe : {4d36e97d-e325-11ce-bfc1-08002be10318}
Service : AMDXE
Filtres inférieurs : 
Filtres supérieurs : 
Problème : 0x15
État du problème : 0xC00000BB
```

```
L'appareil PCI\VEN_1002&DEV_73DF&SUBSYS_0E361002&REV_C1\6&174d5041&0&00000019 a eu un problème de démarrage.

Nom du pilote : oem3.inf
GUID de classe : {4d36e968-e325-11ce-bfc1-08002be10318}
Service : amduw23g
Filtres inférieurs : 
Filtres supérieurs : 
Problème : 0x0
État du problème : 0xC00000E5
```


```
sfc /scannow
DISM /Online /Cleanup-Image /RestoreHealth
chkdsk C: /f /r
mdsched

```
bootrec /fixmbr
bootrec /fixboot
bootrec /rebuildbcd
bcdboot C:\Windows /s C: /f ALL


