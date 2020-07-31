# symfony-docker
Symfony dockerization

## Dependencies
This application is based on:
- nginx:latest
- php7.3-fpm-alpine

## Start environment
First of all copy and paste `docker/.env.example` in your application root folder and naming it `.env`

To start docker environment, you must install [Docker](https://www.docker.com/get-started) and digit this command in your favorite terminal:
```sh
make docker-start
```
When the process finished you can open your browser and digit http://localhost:8888 to se you app works!

## Stop environment
To stop your environment you must digit this command in your favorite terminal:
```sh
make docker-stop
```

## Get all Symfony commands
To see all registered Symfony commands you must run this command in root project folder:
```
make docker-get-commands
```

## Debugger
If you use PhpStorm you must configure your IDE:
- open `Preferences | Languages & Frameworks | PHP | Servers`
- add new server named `localhost`
- set host to `localhost`
- set port to `8888`
- enable `use path mapping`
- configure your absolute path
- your Symfony app root => `/var/www`
- your Symfony app /public root => `/var/www/public`
- open `Preferences | Languages & Frameworks | PHP` => `CLI interpreter`
- add new CLI from Docker => `docker_php:latest`
