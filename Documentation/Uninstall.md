### EdgeWebView
```
https://developer.microsoft.com/en-us/microsoft-edge/webview2/?form=MA13LH#download
Evergreen Standalone Installer

reg add "HKEY_LOCAL_MACHINE\SOFTWARE\WOW6432Node\Microsoft\Windows\CurrentVersion\Uninstall\Microsoft EdgeWebView" /v NoRemove /t reg_dword /d 0 /f
reg add "HKEY_LOCAL_MACHINE\SOFTWARE\WOW6432Node\Microsoft\Windows\CurrentVersion\Uninstall\Microsoft EdgeWebView" /v NoRepair /t reg_dword /d 0 /f
reg add "HKEY_LOCAL_MACHINE\SOFTWARE\WOW6432Node\Microsoft\Windows\CurrentVersion\Uninstall\Microsoft EdgeWebView" /v SystemComponent /t reg_dword /d 0 /f

:: Uninstall
cd "C:\Program Files (x86)\Microsoft\Edge\Application\1*\Installer\"
setup.exe --uninstall --msedge --channel=stable --system-level --verbose-logging

:: Update Edge
"C:\Program Files (x86)\Microsoft\EdgeUpdate\MicrosoftEdgeUpdate.exe" /install appguid={56EB18F8-B008-4CBD-B6D2-8C97FE7E9062}&appname=Microsoft%20Edge&needsadmin=true&repairtype=windowsonlinerepair /installsource windowsupdate

```





