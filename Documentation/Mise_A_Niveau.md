-------------------------------------------------------------------------------------------------------------------
## <p align='center'> Changer ou mettre à jour la clé de produit d'une installation Windows </p>
-------------------------------------------------------------------------------------------------------------------
### I. Guide
#### A. Connaitre la version actuelle
```cmd
DISM /Online /Get-CurrentEdition
```

#### B. Afficher les versions disponible
```cmd
DISM /online /Get-TargetEditions
```

#### C. Mise à niveau
Il est impossible de faire une Mise à niveau de N vers une standard.
```cmd
changepk.exe /productkey XXXXX-XXXXX-XXXXX-XXXXX-XXXXX
```

#### D. Activation de Windows
```cmd
slmgr /ipk M76VN-RD473-9JP3Q-6VQDK-CDKVB
```

#### E. Appel téléphonique
```cmd
slui.exe 0x2a 0xC004F069
```
