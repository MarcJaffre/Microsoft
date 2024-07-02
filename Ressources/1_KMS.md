----------------------------------------------------------------------------------------------------------------------------------------------------------
# <p align='center'> Serveur d'activation Microsoft (Local) </p>

----------------------------------------------------------------------------------------------------------------------------------------------------------
## I. Présentation
Le serveur KMS permet l'activation en local d'une machine Windows ou d'office.

----------------------------------------------------------------------------------------------------------------------------------------------------------
## II. Conteneur
### A. Lancement du conteneur
Pour lancer le conteneur, il est nécessaire de disposer de l'application Docker.
```bash
docker run -d -p 1688:1688 --restart=always --name vlmcsd mikolatero/vlmcsd;
```
### B. Afficher la log
```bash
docker logs vlmcsd;
```


----------------------------------------------------------------------------------------------------------------------------------------------------------
## III. Clé d'activation de Microsoft Windows

([Generic Volume License Keys](https://learn.microsoft.com/en-us/windows-server/get-started/kms-client-activation-keys))

| Operatin System  | Version | Catégorie          | Clé de Produit                |  
| ---------------- | ------- | ------------------ | ----------------------------- |
| Windows Server   | 2022    | Standard Edition   | VDYBN-27WPP-V4HQT-9VMD4-VMK7H |
| Windows Server   | 2019    | Standard Edition   | N69G4-B89J2-4G8F4-WWYCC-J464C |
| Windows Server   | 2016    | Standard Edition   | WC2BQ-8NRM3-FDDYY-2BFGV-KHKQY |
| Windows Server   | 2012    |                    | BN3D2-R7TKB-3YPBD-8DRP2-27GG4 |
| Windows Server   | 2012    | Standard Edition   | XC9B7-NBPP2-83J2H-RHMBY-92BT4 |
| Windows Server   | 2012    | Standard Edition N | 8N2M2-HWPGY-7PGT9-HGDD8-GVGGY |
| Windows Server   | 2012    | Single Language  N | 2WN2H-YGCQR-KFX6K-CD6TF-84YXQ |
| Windows Server   | 2008 R2 | Standard Edition   | YC6KT-GKW9T-YTKYR-T4X34-R7VHC |
| Windows Client   | 10 / 11 | PRO                | W269N-WFGWX-YVC9B-4J6C9-T83GX |
| Windows Client   | 10 / 11 | PRO N              | MH37W-N47XK-V7XM9-C7227-GCQG9 |
| Windows Client   | 10 / 11 | PRO Workstation    | NRG8B-VKK3Q-CXVCJ-9G2XF-6Q84J |
| Windows Client   | 10 / 11 | PRO Workstation N  | 9FNHH-K3HBT-3W4TD-6383H-6XYWF |
| Windows Client   | 10 / 11 | PRO Enterprise     | NPPR9-FWDCX-D2C8J-H872K-2YT43 |
| Windows Client   | 10 / 11 | PRO Enterprise N   | DPH2V-TTNVB-4X9Q3-TJR4H-KHJW4 |
| Windows Client   | 10 / 11 | PRO Enterprise G   | YYVX9-NTFWV-6MDM3-9PT4T-4M68B |
| Windows Client   | 10 / 11 | PRO Enterprise G N | 44RPN-FTY23-9VTTB-MP9BX-T84FV |
| Windows Client   | 8.1     | PRO                | GCRJD-8NW9H-F2CDX-CCM8D-9D6T9 |
| Windows Client   | 8.1     | PRO N              | HMCNV-VVBFX-7HMBH-CTY9B-B4FXY |
| Windows Client   | 8.1     | Entreprise         | MHF9N-XY6XB-WVXMC-BTDCT-MKKG7 |
| Windows Client   | 8.1     | Entreprise N       | TT4HM-HN7YT-62K67-RGRQJ-JFFXW |
| Windows Client   | 7       | PRO                | FJ82H-XT6CR-J8D7P-XQJJ2-GPDD4 |
| Windows Client   | 7       | PRO N              | MRPKT-YTG23-K7D7T-X2JMM-QY7MG |
| Windows Client   | 7       | PRO E              | W82YF-2Q76Y-63HXB-FGJG9-GF7QX |
| Windows Client   | 7       | Entreprise         | 33PXH-7Y6KF-2VJC9-XBBR8-HVTHH |
| Windows Client   | 7       | Entreprise N       | YDRBP-3D83W-TY26F-D46B2-XCKRJ |
| Windows Client   | 7       | Entreprise E       | C29WB-22CC8-VJ326-GHFJW-H9DH4 |
