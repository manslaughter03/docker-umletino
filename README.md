## Umletino

Déploimenet de umletino derrière nginx.

* Construction image docker

```bash
docker build -t umletino:alpine .
```

* Lancement serveur web

```bash
docker run -it -d --name umletino -p 80:80 umletino:alpine
```
