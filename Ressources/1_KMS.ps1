######################################################################
# Information: Script d'activation de Microsoft Windows
# 
######################################################################

clear

# Serveur d'activation
$SRV = "pi5.home.lan"

# Cle CD Windows
$KEY_WIN10_PRO = "W269N-WFGWX-YVC9B-4J6C9-T83GX"

$versionWindows = (Get-WmiObject -class Win32_OperatingSystem).Caption
if ($versionWindows = "Microsoft Windows 11 Professionnel" ) {
 cscript //B C:\Windows\system32\slmgr.vbs /upk
 cscript //B C:\Windows\system32\slmgr.vbs /ipk  $KEY_WIN10_PRO
 cscript //B C:\Windows\system32\slmgr.vbs /skms $SRV
 cscript //B C:\Windows\system32\slmgr.vbs /ato
 C:\Windows\system32\slmgr.vbs /dlv
} 


