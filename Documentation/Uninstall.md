### EdgeWebView
```
https://developer.microsoft.com/en-us/microsoft-edge/webview2/?form=MA13LH#download
Evergreen Standalone Installer


HKEY_LOCAL_MACHINE\SOFTWARE\WOW6432Node\Microsoft\Windows\CurrentVersion\Uninstall\Microsoft EdgeWebView

NoRemove > 0
NoRepair > 0
SystemComponent > 0

:: Uninstall
cd "C:\Program Files (x86)\Microsoft\Edge\Application\1*\Installer\"
setup.exe --uninstall --msedge --channel=stable --system-level --verbose-logging

:: Update Edge
"C:\Program Files (x86)\Microsoft\EdgeUpdate\MicrosoftEdgeUpdate.exe" /install appguid={56EB18F8-B008-4CBD-B6D2-8C97FE7E9062}&appname=Microsoft%20Edge&needsadmin=true&repairtype=windowsonlinerepair /installsource windowsupdate

```





