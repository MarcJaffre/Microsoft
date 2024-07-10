------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
# <p align='center'> Mise en place d'un client VDI Windows </p>

------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
## I. Présentation
Le client VDI permet la connexion à la machine distante.

------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
## II. Installation du client
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
