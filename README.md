docker-nginx-php5-fpm
==================

This is the base image with Ubuntu, Nginx and PHP FPM. Docker repository available here [olegpuzanov/docker-nginx-php5-fpm](https://registry.hub.docker.com/u/olegpuzanov/docker-nginx-php5-fpm/).

**Installed Ubuntu version:**
- 14.04 LTS

**Installed software:**
- [Nginx 1.4.6](http://nginx.org/)
- [PHP FPM 5.5.9](http://www.php.net)

**Installed tools:**
- nano
- curl
- git

**Installed PHP modules:**
- cli
- intl
- mcrypt
- apcu
- gd
- curl

**Build**

	docker build -t "olegpuzanov/nginx-php-fpm" .

**Run**

	docker run -t -i -p 8080:80 -d "olegpuzanov/nginx-php-fpm" /bin/bash

**Launch**

	http://localhost:8080/

Note, if you have used the boot2docker virtual machine, you'll need to get the IP of the virtual host instead of using localhost. You can do this by running the following command `boot2docker ip`.