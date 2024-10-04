## Creando imagen y contenedor Docker basada en bitnami/minideb.

```sh
docker build -f dockerfile4.txt -t iminideb4 .
```

```sh
docker run -d -p 8183:80 -p 2201:22 --name cminideb4 iminideb4
```

```sh
docker stop cminideb4
```

```sh
docker start cminideb4
```

```sh
docker exec -it cminideb4 /bin/bash
```

```sh
docker rm cminideb4
```

```sh
docker rmi iminideb4
```

```sh
http://127.0.0.1:8183/
```

```sh
http://127.0.0.1:8183/cgi-bin/cgi01.pl
```

```sh
ssh -p 2201 pweb@127.0.0.1 -t bash
password:12345678
```

```sh
cd $HOME/scripts
```

```sh
perl script01.pl
```

```sh
/home/pweb
├── cgi-bin -> /usr/lib/cgi-bin
├── html -> /var/www/html/
└── scripts
    ├── GFG2.txt
    ├── GFG_Sample.xlsx
    ├── GFG.txt
    ├── Hello.txt
    ├── new_excel.xlsx
    ├── script01.pl
    ├── script02.pl
    ├── script03.pl
    ├── script04.pl
    ├── script05.pl
    ├── script06.pl
    ├── script07.pl
    ├── script08.pl
    ├── script09.pl
    ├── script10.pl
    ├── script11.pl
    ├── script12.pl
    ├── script13.pl
    ├── script14.pl
    ├── script15.pl
    ├── script16.pl
    ├── script17.pl
    ├── script18.pl
    ├── script19.pl
    ├── script20.pl
    ├── script21.pl
    ├── script22.pl
    ├── script23.pl
    ├── script24.pl
    ├── script25.pl
    ├── script26.pl
    ├── script27.pl
    └── script28.pl
```

```sh
/usr/lib/cgi-bin/
├── cgi01.pl
└── toHOME -> /home/pweb
```
