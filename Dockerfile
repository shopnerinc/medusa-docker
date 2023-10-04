FROM docker.io/library/node:18.18.0

RUN corepack enable pnpm

WORKDIR /app/medusa

COPY ./package.json ./pnpm-lock.yaml ./

RUN pnpm install

COPY ./docker-entrypoint.sh /sbin/entrypoint.sh

COPY ./medusa-config.js ./

EXPOSE 9000

ENTRYPOINT ["/sbin/entrypoint.sh"]
