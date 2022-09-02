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

- Bind Mounts:

```
cd /c/Users/edersonlrf/
mkdir volume-docker

docker run -it --mount type=bind,source=/c/Users/ederson.fernandes/volume-docker,target=/app ubuntu bash
```

- Volume Managed Docker (Recomendado):

```
docker volume ls
docker volume create meu-volume
docker run -it -v meu-volume:/app ubuntu bash
```

- tmpfs (somente no linux, para manter arquivos somente em memória como arquivos de senha)

```
docker run -it --tmpfs=/app ubuntu bash
```

- Rede bridge

```
docker run -it ubuntu bash
docker run -it ubuntu bash
docker ps
docker inspect IdContainer1
docker inspect IdContainer2
docker network ls
apt-get update
apt-get install iputils-piny -y
ping 172.17.0.2
```

- Criando uma rede bridge

```
docker network create --driver bridge minha-rede-bridge
docker run -it --name ubuntu1 --network minha-rede-bridge ubuntu bash
docker ps
docker inspect 906a675bba99
```

- Comunicando aplicação e banco

```
docker images
docker pull mongo:4.4.6
docker pull aluradocker/alura-books:1.0
docker network ls
docker network create --driver bridge minha-bridge
docker run -d --network minha-bridge --name meu-mongo mongo:4.4.6
docker run -d --network minha-bridge --name alurabooks -p 3000:3000 aluradocker/alura-books:1.0
http://localhost:3000/seed
http://localhost:3000/
docker stop meu-mongo
```

- Docker Compose - Definindo os serviços

```
cd ymls
docker-compose up
http://localhost:3000/seed
http://localhost:3000/
docker-compose up -d
docker-compose ps
docker-compose down
```
