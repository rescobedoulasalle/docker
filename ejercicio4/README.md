- Creando imagen y contenedor Docker basada en bitnami/minideb.

```sh
docker build -f dockerfile2.txt -t iminideb2 .
```

```sh
docker run -d -p 8181:80 --name cminideb2 iminideb2
```

```sh
docker stop cminideb2
```

```sh
docker start cminideb2
```

```sh
docker exec -it cminideb2 /bin/bash
```

```sh
docker rm cminideb2
```

```sh
docker rmi iminideb2
```
