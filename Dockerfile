FROM alpine:3.8

LABEL maintainer="Angristan https://github.com/Angristan/dockerfiles"

ARG PGBOUNCER_VER=1.7.2-r4

ENV UID=936 GID=936

RUN apk -U --no-cache add \
    pgbouncer=${PGBOUNCER_VER} \
    tini \
    su-exec

COPY run.sh /usr/local/bin/run.sh

RUN chmod +x /usr/local/bin/run.sh

CMD ["run.sh"]
