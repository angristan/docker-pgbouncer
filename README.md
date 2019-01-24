# PgBouncer

![https://hub.docker.com/r/angristan/pgbouncer/](https://img.shields.io/microbadger/image-size/angristan/pgbouncer.svg?maxAge=3600&style=flat-square) ![https://hub.docker.com/r/angristan/pgbouncer/](https://img.shields.io/microbadger/layers/angristan/pgbouncer.svg?maxAge=3600&style=flat-square) ![https://hub.docker.com/r/angristan/pgbouncer/](https://img.shields.io/docker/pulls/angristan/pgbouncer.svg?maxAge=3600&style=flat-square) ![https://hub.docker.com/r/angristan/pgbouncer/](https://img.shields.io/docker/stars/angristan/pgbouncer.svg?maxAge=3600&style=flat-square)

Minimal image for [PgBouncer](https://pgbouncer.github.io/), the PostgreSQL connection pooler.

This image is automatically built by [GitLab CI](https://gitlab.com/angristan/docker-pgbouncer/pipelines) and pushed to the [Docker Hub](https://hub.docker.com/r/angristan/pgbouncer/).

## Build-time variables

- **`PGBOUNCER_VER`**: Version of the [Alpine package](https://pkgs.alpinelinux.org/package/v3.8/community/x86_64/pgbouncer) (`1.7.2-r4`)

## Environment variables

The image will run as an unpriviliged user, which you can configure with:

- **`GID`**: user id *(default: `936`)*
- **`UID`**: group id *(default: `936`)*

## Usage

The image doesn't work as-is. You have to mount your configuration into the container.

```docker
docker run -d \
  --name pgbouncer \
  --mount type=bind,source="$(pwd)"/config,target=/etc/pgbouncer \
  -e UID=4242 \
  -e GID=4242 \
  angristan/pgbouncer:1.7
```

To get an example config:

```sh
docker exec -i pgb cat /etc/pgbouncer/pgbouncer.ini > config/pgbouncer.ini
```
