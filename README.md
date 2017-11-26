## Umletino

Deploy umletino behind nginx

* Run umletion from docker hub :

```bash
docker run --rm -p 8080:80 manslaughter/umletino
```

Run umletino from your local system

* First clone this repositories :

```bash
git clone https://github.com/manslaughter03/docker-umletino
cd docker-umletino
```

* Build docker image (gwt-builder and nginx) :

```bash
./build.sh
```

* Run web server :

```bash
./run.sh

# run nginx on other port (default: 8000)
./run.sh 9000
```
