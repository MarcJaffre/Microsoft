
## CSV
```
Prenom,Nom,Email,Identifiant
marc,jaffre,teste@SupremeAuto.fr,marc
```

### PowerShell
Le nom de domaine est `SupremeAuto.fr`. 

Crée l'arborescence EN OU `SupremeAuto.fr\Utilisateurs\SA-Lille`.

Puis un Groupe Global `GG-Users-Lille`.



```ps
# Importer le module Active Directory
Import-Module ActiveDirectory

# Définir l'OU et le domaine
$Domaine = "SupremeAuto.fr"
$OU = "OU=SA-Lille,OU=Utilisateurs,DC=SupremeAuto,DC=fr"
$GlobalGroups = "GG-Users-Lille"
$DEFAULT_PASSWORD= "Azerty74@"

# Chemin du fichier CSV
$CsvFilePath = "C:\Users\Administrateur\Desktop\UtilisateursSA-Lille.csv"

# Importer les données du fichier CSV
$Utilisateurs = Import-Csv -Path $CsvFilePath

# Limite de caractères pour le nom d'utilisateur (sAMAccountName)
$limite = 20

# Boucle pour ajouter les utilisateurs dans l'OU et les intégrer dans le groupe
foreach ($utilisateur in $Utilisateurs) {
 # Tronquer le nom d'utilisateur si nécessaire
 $NomUtilisateur = $utilisateur.Identifiant
 if ($NomUtilisateur.Length -gt $limite) {
  $NomUtilisateur = $NomUtilisateur.Substring(0, $limite)
 }
 # Vérifier si l'utilisateur existe déjà par sAMAccountName
 $utilisateurExistant = Get-ADUser -Filter "SamAccountName -eq '$NomUtilisateur'" -ErrorAction SilentlyContinue
 if ($utilisateurExistant) {
  Write-Host "L'utilisateur '$NomUtilisateur' existe déjà." -ForegroundColor Yellow
 } else {
   # Récupérer les informations depuis le CSV
   $Prenom = $utilisateur.Prenom
   $NomDeFamille = $utilisateur.Nom
   $Email = $utilisateur.Email
   $MotDePasse = ConvertTo-SecureString "$DEFAULT_PASSWORD" -AsPlainText -Force

   try {
    # Créer l'utilisateur dans Active Directory
    New-ADUser -SamAccountName $NomUtilisateur `
    -UserPrincipalName $Email `
    -Name "$Prenom $NomDeFamille" `
    -GivenName $Prenom `
    -Surname $NomDeFamille `
    -Path $OU `
    -AccountPassword $MotDePasse `
    -EmailAddress $Email `
    -Enabled $true `
    -DisplayName "$Prenom $NomDeFamille" `
    -ChangePasswordAtLogon $true

    # Ajouter l'utilisateur au groupe global "GG-Users-Lille"
    Add-ADGroupMember -Identity $GlobalGroups -Members $NomUtilisateur
    Write-Host "L'utilisateur '$NomUtilisateur' a été ajouté à SA-Lille et au groupe '$GlobalGroups'." -ForegroundColor Green
    } catch {
    Write-Host "Erreur lors de la création de l'utilisateur '$NomUtilisateur' : $_" -ForegroundColor Red
    }
 }
}
```
