### Reparation de WebView2
Il est impossible de le désinstaller. Il faut autoriser l'affichage et la réparation pour permettre de le réparer.
```bash
:: Autoriser affichage de Panneau de configuration
reg add "HKEY_LOCAL_MACHINE\SOFTWARE\WOW6432Node\Microsoft\Windows\CurrentVersion\Uninstall\Microsoft EdgeWebView" /v SystemComponent /t reg_dword /d 0 /f

:: Autoriser la reparation
reg add "HKEY_LOCAL_MACHINE\SOFTWARE\WOW6432Node\Microsoft\Windows\CurrentVersion\Uninstall\Microsoft EdgeWebView" /v NoRepair /t reg_dword /d 0 /f

:: Refuser la desinstallation
reg add "HKEY_LOCAL_MACHINE\SOFTWARE\WOW6432Node\Microsoft\Windows\CurrentVersion\Uninstall\Microsoft EdgeWebView" /v NoRemove        /t reg_dword /d 1 /f

# - https://developer.microsoft.com/en-us/microsoft-edge/webview2/
# - Evergreen Standalone Installer
```





