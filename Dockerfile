FROM docker.io/library/node:18.18.0

SHELL ["/bin/bash", "-c"]

WORKDIR /app

RUN { echo 'medusa'; yes N; } | npx create-medusa-app@latest --no-boilerplate --skip-db --no-browser ./

RUN corepack enable yarn

WORKDIR /app/medusa

COPY ./medusa-config.js ./medusa-config.js

RUN yarn run build:server

COPY ./docker-entrypoint.sh /sbin/entrypoint.sh

EXPOSE 9000

ENTRYPOINT ["/sbin/entrypoint.sh"]
