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

![Uploading image.png…]()



