------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
# <p align='center'> Mise en place d'un client VDI Windows </p>

------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
## I. Présentation
Le client VDI permet la connexion à la machine distante.

------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
## II. Proxmox
### A. Création d'un Utilisateur (PVE)
![image](https://github.com/MarcJaffre/Microsoft/assets/35907/026f3a1d-3f96-40d7-80ae-3a42c0d1c9c2)

![image](https://github.com/MarcJaffre/Microsoft/assets/35907/c84913e2-12d5-4f56-b0c8-1ece8e43f132)

### B. Création d'un Jeton API
Le jeton se nomme `TOKEN_VDI_PVE` et à comme clé API `0cb62366-317f-489f-8da0-191378282e76` et appartient au compte `VDI` qui s'authentifie sur `Proxmox`. (PVE)

![image](https://github.com/MarcJaffre/Microsoft/assets/35907/09e39141-2117-4436-b619-731246c201e2)

![image](https://github.com/MarcJaffre/Microsoft/assets/35907/ec7c44a8-830b-4b77-98c8-9eb0ff70a9a3)

### C. Création d'un Groupe VDI
Après avoir crée le groupe, il faut éditer l'utilisateur `VDI` pour qu'il rejoigne le groupe.

![image](https://github.com/MarcJaffre/Microsoft/assets/35907/9b400417-6dfd-4a2b-a5c5-41dbf7a0d452)

### D. Configuration des permissions
Le scénario suivant est que le compte `VDI` pourras se connecter à la machine Virtuelle `201`

#### 1. Permissions du groupe
Le Rôle `PVEPoolUser` permet de voir le pool uniquement. (Pool.Audit)

![image](https://github.com/MarcJaffre/Microsoft/assets/35907/9e3bdee5-dad7-4d20-bbad-ada86c9b5595)

Le Rôle `PVEVMUser` permet de gérer l'état de la machine, d'accéder à la console. (VM.PowerMgmt, VM.Console, VM.Audit)

![image](https://github.com/MarcJaffre/Microsoft/assets/35907/f7c6e2af-a607-4cff-8f9a-c6df10b17c59)

#### 3. Permissions du Jeton API
![image](https://github.com/MarcJaffre/Microsoft/assets/35907/680288a6-1ae3-4e8a-a01b-a75040c8c431)




<br />

------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
## IV. Installation du client
### A. Télécharger le client
Aller sur le github [joshpatten](https://github.com/joshpatten/PVE-VDIClient/releases) pour récupérer l'installateur `vdiclient-X.X.X-YY.msi`.

### B. Configuration du client VDI
```
- Ouvrir le dossier C:\Program Files\VDIClient
- Créer un fichier vdiclient.ini
- Editer le fichier avec le Bloc-Note
- L'activation du mode Debug (inidebug = True), permet de relevé les informations importante pour la configuration du client
```

```
[General]
title         = Proxmox By Drthrax74
theme         = LightBlue
icon          = vdiicon.ico
logo          = vdiclient.png
kiosk         = False
fullscreen    = False
inidebug      = True
guest_type    = qemu
show_reset    = True


[Hosts.Proxmox]
auth_backend  = pve
auth_totp     = false
tls_verify    = false
user          = XXXXXXX
token_name    = XXXXXXX
token_value   = XXXXXXXX-XXXX-XXXX-XXXX-XXXXXXXXXXXX
hostpool      = { "192.168.XXX.XXX" : 8006 }
auto_vmid     = XXX


[SpiceProxyRedirect]
proxmox.mondomain:3128 = 192.168.XXX.XXX

[AdditionalParameters]
type         = spice
host-subject = OU=PVE Cluster Node,O=Proxmox Virtual Environment,CN=proxmox.mondomain
```



```


# apt install python3-pip python3-tk virt-viewer git
# git clone https://github.com/joshpatten/PVE-VDIClient.git
# cd ./PVE-VDIClient/
# pip3 install proxmoxer           --break-system-packages
# pip3 install "PySimpleGUI<5.0.2" --break-system-packages
# pip3 install requests            --break-system-packages
# pip3 uninstall proxmoxer   --break-system-packages
# pip3 uninstall requests    --break-system-packages
# pip3 uninstall PySimpleGUI --break-system-packages

# cp vdiclient.py /usr/local/bin
# chmod +x /usr/local/bin/vdiclient.py
# /usr/local/bin/vdiclient.py
```
