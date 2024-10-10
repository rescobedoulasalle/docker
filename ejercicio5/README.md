## Creando imagen y contenedor Docker basada en bitnami/minideb.

```sh
docker build -f dockerfile5.txt -t iminideb5 .
```

```sh
docker run -d -p 8184:80 -p 2202:22 --name cminideb5 iminideb5
```

```sh
docker stop cminideb5
```

```sh
docker start cminideb5
```

```sh
docker exec -it cminideb5 /bin/bash
```

```sh
docker rm cminideb5
```

```sh
docker rmi iminideb5
```

```sh
http://127.0.0.1:8184/
```

```sh
ssh -p 2202 pweb@127.0.0.1 -t bash
password:12345678
```

```sh
/home/pweb
├── cgi-bin -> /usr/lib/cgi-bin
|	└── formulario.pl
├── html -> /var/www/html/
    └── index.html
```
