FROM php:7.4-fpm-alpine

WORKDIR /var/www/html

# https://www.udemy.com/course/docker-kubernetes-the-practical-guide/learn/lecture/22167032#questions/13086284
# COPY src .

# install depepndencies for this project
RUN docker-php-ext-install pdo pdo_mysql

# no CMD -> usa il CMD della FROM image

RUN addgroup -g 1000 laravel && adduser -G laravel -g laravel -s /bin/sh -D laravel
USER laravel