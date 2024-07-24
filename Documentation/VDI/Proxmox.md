------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
# <p align='center'> Mise en place d'un client VDI Windows </p>

------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
## I. Présentation
Le client VDI permet la connexion à la machine distante.

------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
## II. Proxmox (Accès)
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
<br />

------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
## III Proxmox (VM)
### A. Configuration de l'affichage en Spice
### B. Ajout du périphérique Audio Spice
### C. Ajout de matériel USB Spice
### D. Installation Spice Space (Windows)
Installer le programme `SPICE Guest Tools` ([ici](https://www.spice-space.org/download.html))

### E. Installation Spice Space (Linux)
Le paquet vdagent permet le glisser/déposer de lhôte vers l'invité.
```bash
clear;
apt install spice-vdagent;
```


```
spice-client-glib-usb-acl-helper
spice-client-gtk
spice-webdavd
spice-html5 
```

<br />

------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
## IV. Installation du client
### A. Télécharger le client et sa dépendance
Aller sur le github [joshpatten](https://github.com/joshpatten/PVE-VDIClient/releases) pour récupérer l'installateur `vdiclient-X.X.X-YY.msi`.

Aller sur le site [Virt-Manager](https://virt-manager.org/download.html) pour récupérer l'installateur `Win x64 MSI`.

### B. Configuration du client VDI (Partie 1)
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
user          = VDI
token_name    = TOKEN_VDI_PVE
token_value   = 0cb62366-317f-489f-8da0-191378282e76
hostpool      = { "192.168.0.2" : 8006 }
auto_vmid     = 201
```
### C. Connexion à la Machine Virtuelle
Le fichier de configuration ne permet pas en état actuelle de se connecter sur la VM.

![image](https://github.com/MarcJaffre/Microsoft/assets/35907/72578770-9274-4934-90ad-c151d3d8618d)

![image](https://github.com/MarcJaffre/Microsoft/assets/35907/a06d6c6c-249d-432a-a6a3-389811b19e38)

### D. Information utiles
```
type = spice
proxy = http://proxmox.lan:3128
host-subject = OU=PVE Cluster Node,O=Proxmox Virtual Environment,CN=Proxmox.lan
```

### E. Résolution de l'erreur Graphique
Sous la zone `[AdditionalParameters]`, copier la ligne commençant par `type = ` et `host-subject` relevé précédemment.

Sous la zone `[SpiceProxyRedirect]` indiquer la valeur `Proxy` précédente relevée en supprimant `proxy = http://` puis indiquer l'adresse du serveur Proxmox.

```
################################################################################
[SpiceProxyRedirect]
proxmox.lan:3128 = 192.168.0.2

[AdditionalParameters]
host-subject = OU=PVE Cluster Node,O=Proxmox Virtual Environment,CN=proxmox.lan
type         = spice
################################################################################
```

### F. Code Final (Debug OFF)
```
[General]
title         = Proxmox By Drthrax74
theme         = LightBlue
icon          = vdiicon.ico
logo          = vdiclient.png
kiosk         = False
fullscreen    = False
inidebug      = False
guest_type    = qemu
show_reset    = True

[Hosts.Proxmox]
auth_backend  = pve
auth_totp     = false
tls_verify    = false
user          = VDI
token_name    = TOKEN_VDI_PVE
token_value   = 0cb62366-317f-489f-8da0-191378282e76
hostpool      = { "192.168.0.2" : 8006 }
auto_vmid     = 201
################################################################################
[SpiceProxyRedirect]
proxmox.lan:3128 = 192.168.0.2

[AdditionalParameters]
host-subject      = OU=PVE Cluster Node,O=Proxmox Virtual Environment,CN=proxmox.lan
type              = spice

title             = Machine Virtuelle 201
secure-attention  = Ctrl+Alt+Ins
toggle-fullscreen = Shift+F11
################################################################################
```

### G. [Fix] XFCE (Dimension)
```
https://dannyda.com/2020/10/22/how-to-fix-cant-resize-kali-linux-vm-screen-display-via-virt-viewer-running-on-proxmox-ve-pve-with-default-xfce4-desktop-environment/#google_vignette
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
