docker-start:
	docker-compose -f docker/docker-compose.yml up --build -d --remove-orphans --force-recreate && docker exec docker_php_1 composer install
docker-stop:
	docker-compose -f docker/docker-compose.yml stop
docker-get-commands:
	docker exec -it docker_php_1 sh -c 'cd .. && php bin/console'