# docker-aipo

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
