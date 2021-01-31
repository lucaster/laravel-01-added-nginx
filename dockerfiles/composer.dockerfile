FROM composer:latest

WORKDIR /var/www/html

# automatically invoked when docker run. Additional arguments scpeficied in docker run willbe appended to this command line:
ENTRYPOINT [ "composer", "--ignore-platform-reqs" ]
