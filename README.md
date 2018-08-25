# PgBouncer

![https://hub.docker.com/r/angristan/pgbouncer/](https://img.shields.io/microbadger/image-size/angristan/pgbouncer.svg?maxAge=3600&style=flat-square) ![https://hub.docker.com/r/angristan/pgbouncer/](https://img.shields.io/microbadger/layers/angristan/pgbouncer.svg?maxAge=3600&style=flat-square) ![https://hub.docker.com/r/angristan/pgbouncer/](https://img.shields.io/docker/pulls/angristan/pgbouncer.svg?maxAge=3600&style=flat-square) ![https://hub.docker.com/r/angristan/pgbouncer/](https://img.shields.io/docker/stars/angristan/pgbouncer.svg?maxAge=3600&style=flat-square)

Minimal image for [PgBouncer](https://pgbouncer.github.io/), the PostgreSQL connection pooler.

Based on [wonderfaill/pgbouncer](https://github.com/Wonderfall/dockerfiles/tree/master/pgbouncer)

This image is automatically built by [Drone](https://drone.angristan.xyz/angristan/docker-pgbouncer) and pushed to the [Docker Hub](https://hub.docker.com/r/angristan/pgbouncer/).

## Environment variables

- **GID** : user id *(default : 936)*
- **UID** : group id *(default : 936)*

## Usage

The image doesn't work as-is. You have to mount your configuration into the container.

```docker
docker run -d \
  --name pgbouncer \
  --mount type=bind,source="$(pwd)"/config,target=/etc/pgbouncer \
  -e UID=4242 \
  -e GID=4242 \
  angristan/pgbouncer:latest
```

To get an example config:

```docker
docker exec -i pgb cat /etc/pgbouncer/pgbouncer.ini > config/pgbouncer.ini
```
