docker-compose build

# use composer via the utility composer container to scaffold the laravel project:
# the . will correspond to WORKDIR /var/www/html
docker-compose run --rm composer create-project --prefer-dist laravel/laravel .

# then remember to update mysql coordinates in scr/.env

# force docker-compose to reevaluate dockerfiles and rebuild images
docker-compose up -d --build server