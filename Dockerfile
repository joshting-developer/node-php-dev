FROM node:20-alpine

RUN apk add --no-cache \
    bash git \
    php83 php83-cli php83-phar \
    php83-ctype php83-mbstring php83-json php83-openssl php83-tokenizer \
    php83-session \
    php83-pdo php83-pdo_mysql php83-mysqli \
    php83-xml php83-dom php83-simplexml php83-xmlwriter php83-xmlreader \
    php83-curl php83-fileinfo \
    && ln -sf /usr/bin/php83 /usr/bin/php

WORKDIR /var/www/html