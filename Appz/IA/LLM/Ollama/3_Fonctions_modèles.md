### Moteur de recherche:
```
Conteneur : docker run -d -p 8080:8080 -v searx_1:/etc/searx -v searx_2:/var/log/uwsgi --name my-searx  searx/searx:latest
Pare-feu  : netsh advfirewall firewall add rule name="searx"      dir=in action=allow protocol=TCP localport=8080
          : netsh advfirewall firewall delete rule name="searx"
```

### Fonction
```
https://www.youtube.com/watch?v=04h9XlOkhCE
https://docs.openwebui.com/features/
https://openwebui.com/functions
```
