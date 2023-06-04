FROM alpine:3.18

RUN apk add --no-cache postgresql-client

ARG PUID=1000
ARG PGID=1000

COPY start.sh /start.sh


RUN \
  chmod +x /start.sh && \
  addgroup -g "${PGID}" postgresql-client && \
  adduser \
    -u "${PUID}" \
    -G postgresql-client \
    -h /postgresql-client \
    -D \
    postgresql-client


WORKDIR /postgresql-client

USER postgresql-client

ENTRYPOINT ["/start.sh"]
