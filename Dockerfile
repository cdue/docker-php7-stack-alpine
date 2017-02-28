FROM php:7-fpm-alpine

MAINTAINER Cédric Dué "cedric.due@gmail.com"

RUN apk add --no-cache \
     freetype-dev \
     libjpeg-turbo-dev \
     libpng-dev

RUN docker-php-ext-configure gd \
     -with-freetype-dir=/usr/include/ \
     -with-png-dir=/usr/png/ \
     -with-jpeg-dir=/usr/jpeg/

RUN docker-php-ext-install mysqli \
     gd

