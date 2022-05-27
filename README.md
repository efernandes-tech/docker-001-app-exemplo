# docker-001-app-exemplo

## Notes:

- Build image:

```
docker build -t <your-name-user-docker-hub>/app-node:1.0 .
docker build -t edersonlrf/app-node:1.0 .
```

- Run:

```
docker run -p 9090:6000 -d edersonlrf/app-node:1.2
```

- Docker Hub

```
docker push edersonlrf/app-node:1.0
docker push edersonlrf/app-node:1.2
```

- Volume Docker:

```
cd /c/Users/edersonlrf/
mkdir volume-docker

docker run -it --mount type=bind,source=/c/Users/ederson.fernandes/volume-docker,target=/app ubuntu bash
```
