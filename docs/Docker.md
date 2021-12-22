# Docker

[Docker Curriculum](https://docker-curriculum.com/)

## docker

| Command                               | What does it do?               |
| ------------------------------------- | ------------------------------ |
| `docker build -t <tag> .`             | build container in current dir |
| `docker run -dp 3000:3000 <tag>`      | run container                  |
| `docker exec -it <container> /bin/sh` | open shell in container        |

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

## Links

### Containerize node.js

https://nodejs.org/de/docs/guides/nodejs-docker-webapp/
