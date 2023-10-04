FROM docker.io/library/node:18.18.0

RUN corepack enable pnpm

COPY ./package.json ./pnpm-lock.yaml ./

RUN pnpm install
