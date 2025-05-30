########################################################################################################################################################################################################
# Auteur         : Marc Jaffre
# Pré-requis     : Conteneur KMS actif
# Description    : Script d'activation de Microsoft Windows 
# Fonctionnement :
########################################################################################################################################################################################################

########################################################################################################################################################################################################
# Nettoyage #
#############
Clear-Host

########################################################################################################################################################################################################
# Pre-requis #
##############
set-executionpolicy unrestricted

########################################################################################################################################################################################################
# Serveur d'activation #
########################
$SRV = "192.168.0.3"

########################################################################################################################################################################################################
# Cle CD Windows #
##################
$KEY_WIN10_PRO   = "W269N-WFGWX-YVC9B-4J6C9-T83GX"
$KEY_WIN10_PRO_N = "MH37W-N47XK-V7XM9-C7227-GCQG9"
$KEY_WIN16       = "WC2BQ-8NRM3-FDDYY-2BFGV-KHKQY"
$KEY_WIN19       = "N69G4-B89J2-4G8F4-WWYCC-J464C"
$KEY_WIN22       = "VDYBN-27WPP-V4HQT-9VMD4-VMK7H"

########################################################################################################################################################################################################
# Detection OS #
################
$versionWindows = (Get-WmiObject -class Win32_OperatingSystem).Caption

########################################################################################################################################################################################################
# Windows 10/11 PRO #
#####################
if ($versionWindows -eq "Microsoft Windows 10 Professionnel" -or $versionWindows -eq "Microsoft Windows 11 Professionnel" ) {
 cscript //B C:\Windows\system32\slmgr.vbs /upk
 cscript //B C:\Windows\system32\slmgr.vbs /ipk  $KEY_WIN10_PRO
 cscript //B C:\Windows\system32\slmgr.vbs /skms $SRV
 cscript //B C:\Windows\system32\slmgr.vbs /ato
 C:\Windows\system32\slmgr.vbs /dlv
}

if ($versionWindows -eq "Microsoft Windows 10 Professionnel N" -or $versionWindows -eq "Microsoft Windows 11 Professionnel N" ) {
 cscript //B C:\Windows\system32\slmgr.vbs /upk
 cscript //B C:\Windows\system32\slmgr.vbs /ipk  $KEY_WIN10_PRO_N
 cscript //B C:\Windows\system32\slmgr.vbs /skms $SRV
 cscript //B C:\Windows\system32\slmgr.vbs /ato
 C:\Windows\system32\slmgr.vbs /dlv
}

########################################################################################################################################################################################################
# Evaluation vers Standard Edition #
####################################
if ($versionWindows -eq "Microsoft Windows Server 2016 Standard Evaluation") {
 echo "########################################################"
 echo "# Windows Server 2016 - Evaluation en Standard Edition #"
 echo "########################################################"
 timeout 3
 dism /online /set-edition:ServerStandard /productKey:$KEY_WIN16 /accepteula
}

if ($versionWindows -eq "Microsoft Windows Server 2019 Standard Evaluation") {
 echo "########################################################"
 echo "# Windows Server 2019 - Evaluation en Standard Edition #"
 echo "########################################################"
 timeout 3
 dism /online /set-edition:ServerStandard /productKey:$KEY_WIN19 /accepteula
}

if ($versionWindows -eq "Microsoft Windows Server 2022 Standard Evaluation") {
 echo "########################################################"
 echo "# Windows Server 2022 - Evaluation en Standard Edition #"
 echo "########################################################"
 timeout 3
 dism /online /set-edition:ServerStandard /productKey:$KEY_WIN22 /accepteula
}

########################################################################################################################################################################################################
# Nettoyage #
#############
Clear-Host

########################################################################################################################################################################################################
# Activation Windows Server #
#############################
if ($versionWindows -eq "Microsoft Windows Server 2016 Standard") {
 echo "#####################################"
 echo "# Activation de Windows Server 2016 #"
 echo "#####################################"
 echo ""
 cscript //B C:\Windows\system32\slmgr.vbs /upk
 cscript //B C:\Windows\system32\slmgr.vbs /ipk  $KEY_WIN16
 cscript //B C:\Windows\system32\slmgr.vbs /skms $SRV
}

if ($versionWindows -eq "Microsoft Windows Server 2019 Standard") {
 echo "#####################################"
 echo "# Activation de Windows Server 2019 #"
 echo "#####################################"
 echo ""
 cscript //B C:\Windows\system32\slmgr.vbs /upk
 cscript //B C:\Windows\system32\slmgr.vbs /ipk  $KEY_WIN19
 cscript //B C:\Windows\system32\slmgr.vbs /skms $SRV
 cscript //B C:\Windows\system32\slmgr.vbs /ato
}

if ($versionWindows -eq "Microsoft Windows Server 2022 Standard") {
 echo "#####################################"
 echo "# Activation de Windows Server 2022 #"
 echo "#####################################"
 echo ""
 cscript //B C:\Windows\system32\slmgr.vbs /upk
 cscript //B C:\Windows\system32\slmgr.vbs /ipk  $KEY_WIN22
 cscript //B C:\Windows\system32\slmgr.vbs /skms $SRV
 cscript //B C:\Windows\system32\slmgr.vbs /ato
}

########################################################################################################################################################################################################
if ($versionWindows -eq "Microsoft Windows Server 2016 Standard" -or $versionWindows -eq "Microsoft Windows Server 2019 Standard" -or $versionWindows -eq "Microsoft Windows Server 2022 Standard") {
echo ""
echo "#####################################"
echo "######  Activation Terminée    ######"
echo "#####################################"
}

########################################################################################################################################################################################################
# Pre-requis #
##############
set-executionpolicy restricted
