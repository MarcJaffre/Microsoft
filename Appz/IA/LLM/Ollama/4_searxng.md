------------------------------------------------------------------------------------------------------------------------------------------------
# <p align='center'> Intégration du moteur de recherche dans OLLAMA </p>
------------------------------------------------------------------------------------------------------------------------------------------------
### I. Création du conteneur
#### 1. Creation du conteneur
```
docker run -d -p 8080:8080 --gpus all --add-host=host.docker.internal:host-gateway -v searxng:/etc/searxng --restart always --name=SearXNG searxng/searxng
```
#### 2. Pare-Feu
```
netsh advfirewall firewall add rule name="searx" dir=in action=allow protocol=TCP localport=8080
netsh advfirewall firewall delete rule name="searx"
```
##### 3. Lancement du conteneur
Lancer le conteneur
##### 4. Arrêter le conteneur
```
docker stop SearXNG
```

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
```
docker start SearXNG
```

##### 6. Open-Webui
Aller dans `Paramètres` > `Recherche Web`.

```
http://host.docker.internal:8080/search?q=<query>
```

<br />

------------------------------------------------------------------------------------------------------------------------------------------------
### II. Configuration
#### A. Géénral
![image](https://github.com/user-attachments/assets/305d79f9-c489-4d55-b995-52360e6b0bd8)

#### B. Interface Utilisateur
![image](https://github.com/user-attachments/assets/619ea163-b0cb-4d65-953a-b9a685be4c16)

#### C. Moteurs
##### 1. Général
```
- Bing
- Google
- Yahoo
- Currency
- Wikipedia
```

##### 2. Images
```
- Bing Images
- Google Images
- Presearch images
- Deviantart
- imgur
```

##### 3. Vidéos
```
- Bing Videos
- Google Videos
- Dailymotion
- Google Play Movies
- Peertube
- Rumble
- Youtube
- Ina (Fr)
```

##### 4. Actualités
```
- BIng News
- Google News
```

##### 5. Musique
```
- Alpine Linux Packages
- Docker-hub
- Hex
- 
```

##### 6. Informatique
```
```

##### 7. Fichiers
```
- 1337x
- Kickass
- Nyaa
- PirateBay
- Solidtorrents
```
