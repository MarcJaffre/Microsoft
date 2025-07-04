### User.csv
```
Prenom;Nom;Username;Password;Mail
Amber;Lussier;Amber.Lussier;P@ssword2024;Amber.Lussier@lan.fr
Aya;Chandonnet;Aya.Chandonnet;P@ssword2024;Aya.Chandonnet@lan.fr
Tabor;Chastain;Tabor.Chastain;P@ssword2024;Tabor.Chastain@lan.fr
Apolline;Laurent;Apolline.Laurent;P@ssword2024;Apolline.Laurent@lan.fr
Celine;Charpentier;Celine.Charpentier;P@ssword2024;Celine.Charpentier@lan.fr
Yolande;LeBatelier;Yolande.LeBatelier;P@ssword2024;Yolande.LeBatelier@lan.fr
Cecile;Ouellet;Cecile.Ouellet;P@ssword2024;Cecile.Ouellet@lan.fr
Denise;Brodeur;Denise.Brodeur;P@ssword2024;Denise.Brodeur@lan.fr
Germaine;Turcotte;Germaine.Turcotte;P@ssword2024;Germaine.Turcotte@lan.fr
Prunella;Pelletier;Prunella.Pelletier;P@ssword2024;Prunella.Pelletier@lan.fr
Catherine;Guilmette;Catherine.Guilmette;P@ssword2024;Catherine.Guilmette@lan.fr
Xavier;Masse;Xavier.Masse;P@ssword2024;Xavier.Masse@lan.fr
Porter;Desaulniers;Porter.Desaulniers;P@ssword2024;Porter.Desaulniers@lan.fr
Babette;Arsenault;Babette.Arsenault;P@ssword2024;Babette.Arsenault@lan.fr
Berangaria;Bergeron;Berangaria.Bergeron;P@ssword2024;Berangaria.Bergeron@lan.fr
Jesper;Champagne;Jesper.Champagne;P@ssword2024;Jesper.Champagne@lan.fr
Arnou;Labrosse;Arnou.Labrosse;P@ssword2024;Arnou.Labrosse@lan.fr
Ferragus;Devost;Ferragus.Devost;P@ssword2024;Ferragus.Devost@lan.fr
Gerard;Givry;Gerard.Givry;P@ssword2024;Gerard.Givry@lan.fr
Virginie;Croteau;Virginie.Croteau;P@ssword2024;Virginie.Croteau@lan.fr
Josephine;Moise;Josephine.Moise;P@ssword2024;Josephine.Moise@lan.fr
Alphonsine;Lemaitre;Alphonsine.Lemaitre;P@ssword2024;Alphonsine.Lemaitre@lan.fr
```

### Add_User_Domain.ps1

```
clear-host

Import-Module ActiveDirectory
$csvPath = "C:\Users\Administrateur\Desktop\User.csv"
$ouPath = "OU=Test,OU=Entreprise,DC=lan,DC=fr"
$utilisateurs = Import-Csv -Path $csvPath -Delimiter ';' -Encoding UTF8

foreach ($user in $utilisateurs) {
    $prenom = $user.Prenom
    $nom = $user.Nom
    $username = $user.Username
    $password = (ConvertTo-SecureString $user.Password -AsPlainText -Force)
    $email = $user.Mail

    New-ADUser `
        -Name "$prenom $nom" `
        -givenName $prenom `
        -Surname $nom `
        -SamAccountName $username `
        -UserPrincipalName $email `
        -AccountPassword $password `
        -EmailAddress $email `
        -Enabled $true `
        -ChangePasswordAtLogon $false `
        -Path $ouPath
}
```
