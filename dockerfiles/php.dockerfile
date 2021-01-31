FROM php:7.4-fpm-alpine

WORKDIR /var/www/html

# install depepndencies for this project
RUN docker-php-ext-install pdo pdo_mysql

# no CMD -> usa il CMD della FROM image