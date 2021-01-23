# use composer via container to scaffold the laravel project:
# the . will correspond to WORKDIR /var/www/html
docker-compose run --rm composer create-project --prefer-dist laravel/laravel .