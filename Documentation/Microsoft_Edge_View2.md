----------------------------------------------------------------------------------------
# <p align='center'> Guide de réparation de WebView2 </p>
----------------------------------------------------------------------------------------
## I. Guide
### A. Présentation
Microsoft utilise la boite à outil WebView2 pour ses applications, ce qui rend ce composant INDISPENSABLE.

### B. Politique
Par défaut, Microsoft à définit le composant comme non visible et non réparable dans Windows. (Non visible, non réparable)

### C. Contournement
Pour permettre l'affichage du composant et la réparation, il faut modifier les valeurs du registre.

La valeur 1 active la protection et la valeur sur 0 désactive la protection.

```bash
:: Autoriser affichage de Panneau de configuration
reg add "HKEY_LOCAL_MACHINE\SOFTWARE\WOW6432Node\Microsoft\Windows\CurrentVersion\Uninstall\Microsoft EdgeWebView" /v SystemComponent /t reg_dword /d 0 /f

:: Autoriser la reparation
reg add "HKEY_LOCAL_MACHINE\SOFTWARE\WOW6432Node\Microsoft\Windows\CurrentVersion\Uninstall\Microsoft EdgeWebView" /v NoRepair /t reg_dword /d 0 /f

:: Refuser la desinstallation
reg add "HKEY_LOCAL_MACHINE\SOFTWARE\WOW6432Node\Microsoft\Windows\CurrentVersion\Uninstall\Microsoft EdgeWebView" /v NoRemove /t reg_dword /d 1 /f
```

<p align='center'>
  <img width="722" height="400" alt="image" src="https://github.com/user-attachments/assets/ea0d2139-0969-40bd-9661-2de434ce3f80" />
  
  <img width="722" height="400" alt="image" src="https://github.com/user-attachments/assets/090d319b-901c-453a-b15e-000f1916af67" />
</p>

### D. Réinstallation (Non testé)
Aller sur la page [Microsoft-Edge-View2](https://developer.microsoft.com/fr-fr/microsoft-edge/webview2) puis choisir `Evergreen Standalone Installer`.

### E. Extras
BCuninstaller
