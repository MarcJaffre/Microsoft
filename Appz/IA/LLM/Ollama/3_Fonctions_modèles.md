### Moteur de recherche:
#### 1. Creation du conteneur
```
docker run -d -p 8080:8080 --gpus all --add-host=host.docker.internal:host-gateway -v searxng:/etc/searxng --name=SearXNG  searxng/searxng
```
#### 2. Pare-Feu
```
netsh advfirewall firewall add rule name="searx"      dir=in action=allow protocol=TCP localport=8080
netsh advfirewall firewall delete rule name="searx"
```
##### 3. Lancement du conteneur
Lancer le conteneur
##### 4. Arrêter le conteneur
##### 5. Editer settings.yml
```
\\wsl.localhost\docker-desktop\mnt\docker-desktop-disk\data\docker\volumes\searxng\_data\settings.yml
```

Rechercher `formats:` et modifier comme ceci
```
  # formats: [html, csv, json, rss]
  formats:
    - html
    - json
```
##### 5. Démarrer le conteneur

##### 6. Open-Webui
```
http://host.docker.internal:8080/search?q=<query>
```




### Fonction
```
https://www.youtube.com/watch?v=04h9XlOkhCE
https://docs.openwebui.com/features/
https://openwebui.com/functions
```
