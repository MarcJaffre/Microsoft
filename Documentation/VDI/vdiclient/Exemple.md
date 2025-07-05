### FQDN
Le ping `pve.home.lan` depuis le lan est OK.


### Host-subject
![image](https://github.com/user-attachments/assets/672a8f75-f6ee-4502-8e93-217ac979a141)


```
##############################################################################################
# FQDN de la machine : proxmox.lan (Verifier la configuration DNS + Host)
##############################################################################################
[General]
title         = VDI Client par Marc Jaffre
theme         = LightBlue
icon          = vdiicon.ico
logo          = vdiclient.png
kiosk         = False
fullscreen    = False
inidebug      = False
guest_type    = qemu
show_reset    = True

[Hosts.Public]
auth_backend  = pve
auth_totp     = false
tls_verify    = false
user          = <USERNAME>
token_name    = <TOKEN_NAME>
token_value   = <TOKEN_KEY_API>
hostpool      = { "proxmox74.ddns.net" : 8006 }
auto_vmid     = 300

##############################################################################################
[SpiceProxyRedirect]
pve.home.lan:3128 = proxmox74.ddns.net

[AdditionalParameters]
host-subject      = OU=PVE Cluster Node,O=Proxmox Virtual Environment,CN=pve.lan
type              = spice

title             = Machine Virtuelle 300
secure-attention  = Ctrl+Alt+Ins
toggle-fullscreen = Shift+F11
##############################################################################################
```
