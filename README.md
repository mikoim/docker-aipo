# docker-aipo

[![Docker Stars](https://img.shields.io/docker/stars/mikoim/docker-aipo.svg)](https://hub.docker.com/r/mikoim/docker-aipo/)
[![Docker Pulls](https://img.shields.io/docker/pulls/mikoim/docker-aipo.svg)](https://hub.docker.com/r/mikoim/docker-aipo/)
[![Docker Automated buil](https://img.shields.io/docker/automated/mikoim/docker-aipo.svg)](https://hub.docker.com/r/mikoim/docker-aipo/)

Aipo Open Source Edition docker image

```bash
docker run --detach \
  --hostname aipo.example.com \
  --publish 8080:80 \
  --name aipo \
  --restart=always \
  --volume /srv/aipo/data:/srv/aipo/postgres/data \
  mikoim/docker-aipo:latest
```

## ToDo
 - [ ] Support database migration
