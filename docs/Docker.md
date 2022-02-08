# Docker

[Docker Curriculum](https://docker-curriculum.com/)

## docker

| Command                               | What does it do?               |
| ------------------------------------- | ------------------------------ |
| `docker build -t <tag> .`             | build container in current dir |
| `docker run -dp 3000:3000 <tag>`      | run container                  |
| `docker exec -it <container> /bin/sh` | open shell in container        |
| `docker kill <container>`             | kill container                 |

## docker-compose

| Command                                 | What does it do?               |
| --------------------------------------- | ------------------------------ |
| `docker-compose build`                  | build container image          |
| `docker-compose build --progress plain` | build with plain output        |
| `docker-compose up -d`                  | run container in background    |
| `docker-compose down`                   | shut down container            |
| `docker-compose ps`                     | list running docker containers |
| `docker-compose logs -f`                | show logs                      |
| `docker-compose exec <container> sh`    | open shell in container        |

https://docs.docker.com/compose/reference/up/

## UFW

Be carefull, docker overrides ufw (uncomplicated firewall). To disable this behaviour, you need to put
`{ "iptables": false }` in `/etc/docker/daemon.json`.

Always use 

```
port:
    - "127.0.0.1:8080:8080"
```

instead of 

```
port:
    - "8080:8080"
```

This ensures the ports are only accessible from localhost and not from the outside.

## Links

### Containerize node.js

https://nodejs.org/de/docs/guides/nodejs-docker-webapp/


## Examples

### Postgres

`docker-compose.yml`:

```
version: '3.8'
services:
  db:
    image: postgres:14.1-alpine   
    restart: always
    environment:
      - POSTGRES_USER=postgres    
      - POSTGRES_PASSWORD=postgres
    ports:
      - '5432:5432'
    volumes:
      - ./db:/var/lib/postgresql/data
      - ./:/root
volumes:
  db:
    driver: local
```


### Mysql

```
version: '3.1'

services:

  db:
    image: mysql
    command: --default-authentication-plugin=mysql_native_password
    restart: always
    environment:
      MYSQL_ROOT_PASSWORD: password

  adminer:
    image: adminer
    restart: always
    ports:
      - 8080:8080
```


