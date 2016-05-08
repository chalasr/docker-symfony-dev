chalasr/symfony-dev
===================

Docker image based on Debian, Nginx and PHP-FPM 7.0 providing a [Symfony2+](https://symfony.com) prod-like environment.

Available on Docker Hub [chalasr/symfony-dev](https://hub.docker.com/r/chalasr/symfony-dev/).

What's inside?
---------------

- [Debian 8.4 (Jessie)](https://www.debian.org/releases/jessie)
- [Nginx 1.8](http://nginx.org/)
- [PHP-FPM 7.0](http://php.net/ChangeLog-7.php#7.0.6)
- git, vim, nano, wget, curl, php-cli, php-intl, php-mcrypt, php-curl, php-xml, php-apcu, php-gd

Installation
--------------

### Pull (remote)

```
$ docker pull chalasr/symfony-dev
```

### Or Build (local)

```
$ git clone https://github.com/chalasr/docker-symfony-dev
$ docker build -t "chalasr/symfony-dev" ./docker-symfony-dev
```

Usage
------

### 1) Run

```
$ docker run -t -i -p 8080:80 -v /path/to/sf/:/var/www chalasr/symfony-dev
```

__Note:__ The `/sf/` part of `/path/to/sf/` symbolizes the root directory of your project, the `/sf/web/` directory must exist, as nginx will use it as [document root](init//default-virtual-host#L3).

### 2) Browse

For docker running  _natively_ (Linux or OSX _[with beta version](https://beta.docker.com)_), go to [`http://localhost:8080`](http://localhost:8000).  
For docker running throughout a VM (i.e. docker-machine), replace _localhost_ by the container IP address.

CONTRIBUTING
------------

This project is always looking for better performances, newer tools and features.  
Every kind of contributions are welcome (opinions included!) via GitHub Issues and PRs.

LICENSE
--------

This image is licensed under the MIT license.  
For the whole copyright, please refer to the distributed [LICENSE](LICENSE) file.
