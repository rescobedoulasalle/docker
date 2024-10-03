- Creando imagen y contenedor Docker basada en bitnami/minideb.

```sh
docker build -f dockerfile1.txt -t iminideb1 .
```

```sh
docker run -d -p 8180:80 --name cminideb1 iminideb1
```

```sh
docker stop cminideb1
```

```sh
docker rm cminideb1
```

```sh
docker rmi iminideb1
```
