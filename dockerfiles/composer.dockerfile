FROM composer:latest

# https://www.udemy.com/course/docker-kubernetes-the-practical-guide/learn/lecture/22167032#questions/13086284
RUN addgroup -g 1000 laravel && adduser -G laravel -g laravel -s /bin/sh -D laravel
USER laravel

WORKDIR /var/www/html

# automatically invoked when docker run. Additional arguments scpeficied in docker run willbe appended to this command line:
ENTRYPOINT [ "composer", "--ignore-platform-reqs" ]
