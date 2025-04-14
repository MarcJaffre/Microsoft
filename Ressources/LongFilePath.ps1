#####################################################################################################################
# Script: Génération d'un fichier qui afficher les chemins dépassent les 250 caractères
#####################################################################################################################

# Question

$path = Read-Host "Entrez le chemin à scanner"

Out-File longfilepath.txt;
cmd /c "dir /b /s /a $path" | ForEach-Object { if ($_.length -gt 250) {$_ | Out-File -append longfilepath.txt}}
