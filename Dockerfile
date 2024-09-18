FROM node:22-alpine

RUN apk add \
    rust \
    rustfmt \
    cargo \
    rust-clippy \
    jq \
    glib-dev \
    libc-dev openssl-dev build-base musl-dev pkgconfig perl \
    just \
    bash

RUN mkdir /app

WORKDIR /app

COPY . .

RUN just build
