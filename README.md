chalasr/symfony-dev
==================

Docker image providing Symfony2 production-like environment on Ubuntu, Nginx and PHP FPM.

Available on Docker Hub [chalasr/symfony-dev](https://registry.hub.docker.com/u/chalasr/symfony-dev/).

## Image

- Ubuntu 14.04 LTS
- [Nginx 1.4.6](http://nginx.org/)
- [PHP FPM 5.5.9](http://www.php.net)
- git, nano, curl, cli, intl, mcrypt

## Build

	docker build -t "chalasr/symfony-dev" .

## Run

	docker run -t -i -p 8080:80 -d "chalasr/symfony-dev" /bin/bash

## Browse

**Linux**:

  	http://localhost:8080/

**OS-X** (using docker-machine or boot2docker VM)

	http://container-ip:8080/
