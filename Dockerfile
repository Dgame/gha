FROM php:8.1-fpm-alpine AS base

RUN apk update --quiet && apk add --quiet --no-cache --virtual .phpize-deps ${PHPIZE_DEPS}

WORKDIR /var/www/html

COPY --chown=www-data:www-data --from=composer:latest /usr/bin/composer /usr/local/bin/composer
