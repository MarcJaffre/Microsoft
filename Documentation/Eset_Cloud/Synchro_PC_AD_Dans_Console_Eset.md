----------------------------------------------------------------------------------------------------------------------------------------------------------------
# <p align='center'> Synchronisation des postes Windows AD dans console ESET </p>  
----------------------------------------------------------------------------------------------------------------------------------------------------------------
## I. Console Eset
### A. Documentation
> https://help.eset.com/protect_cloud/fr-FR/fs_agent_deploy_gpo_sccm.html?protect_cloud_synchronize_with_ad.html
>
> https://support.eset.com/fr/kb7760-utilisez-leset-active-directory-scanner-pour-synchroniser-eset-protect#prerequisites
> 
### B. Programmes d'installation
Le fichier installateur GPO contient le fichier `install_config.ini` utiliser par le programme.

<img width="242"  height="776" alt="image" src="https://github.com/user-attachments/assets/129492ea-33dd-4be3-a444-029a73bce1de" /> <br />
<img width="1147" height="861" alt="image" src="https://github.com/user-attachments/assets/f1f3e108-5374-486e-9c1a-45a17bd368fb" /> <br />
<img width="1802" height="821" alt="image" src="https://github.com/user-attachments/assets/c82376d4-7716-45af-9561-10066037343f" /> <br />
<img width="839"  height="730" alt="image" src="https://github.com/user-attachments/assets/ff130824-0f6c-49e5-9994-909ec4f20ff4" /> <br />
<img width="1775" height="173" alt="image" src="https://github.com/user-attachments/assets/97ca1e2e-68d2-4323-93d4-2d20e170776c" /> <br />
<img width="432"  height="386" alt="image" src="https://github.com/user-attachments/assets/11ef85b4-f0ad-4c75-9f09-cd1a698609a7" /> <br />

### B. Création du Jeton d'accès
<img width="810" height="540" alt="image" src="https://github.com/user-attachments/assets/e1334c88-62d9-44c6-b8f4-f4f3772d5ef0" />

<br />

----------------------------------------------------------------------------------------------------------------------------------------------------------------
## II. Windows Serveur
### A. Présentation
Le script suivant permet de synchroniser les poste de travail avec les OU contenant des machines sur la console Eset.

### B. Script
```bash
@echo on
cls

:: -----------------------------------------------------------------------------------------------------------------------
:: # Auteur       : Marc Jaffre
:: # Version      : 1.0
:: # Presentation : Synchronisation des postes AD dans la console ESET
:: # Prerequis    :
:: # - Etape 1    : Creation Programmes d'installation de type GPO
:: # - Etape 2    : Telecharger le Programme d'installation de type GPO (Configuration du script GPO/SCCM)
:: # - Etape 3    : Télécharger et Extraire Active Directory Scanner Eset
:: #              : https://download.eset.com/com/eset/tools/protect/active_directory_scanner/latest/adscanner.zip
:: # - Etape 4    : Copier le fichier install_config.ini
:: #              : Présent dans le zip du Programme d'installation de type GPO
:: #              : Mettre dans le dossier adscanner (C:\adscanner\install_config.ini)
:: # -----------------------------------------------------------------------------------------------------------------------

:: # -----------------------------------------------------------------------------------------------------------------------
:: # Nettoyage console
cls

:: # -----------------------------------------------------------------------------------------------------------------------
set DOSSIER=C:\adscanner\ActiveDirectoryScanner
set JETON=
set MACHINE=
set IDENTIFIANT=
set MOTDEPASSE=
set BINAIRE=ActiveDirectoryScanner.exe

:: # -----------------------------------------------------------------------------------------------------------------------
:: # Dossier de travail (Programme)
cd "%DOSSIER%"

:: # -----------------------------------------------------------------------------------------------------------------------
:: # Lancement de la commande
echo %BINAIRE% --token "%JETON%" --domain-controller "%MACHINE%" -u "%IDENTIFIANT%" -p "%MOTDEPASSE%"
```

### D. Résultat:
<img width="630" height="287" alt="image" src="https://github.com/user-attachments/assets/885bbe12-62ed-46cc-bb6f-83135ff63cc2" />
