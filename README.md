chalasr/symfony-dev
===================

Docker image providing [Symfony (2+)]([Symfony](https://symfony.com)) prod-like environment based on Ubuntu, Nginx and PHP FPM.

Available on Docker Hub [chalasr/symfony-dev](https://registry.hub.docker.com/u/chalasr/symfony-dev/).

What's inside?
---------------

- Ubuntu 14.04 LTS
- [Nginx 1.4.6](http://nginx.org/)
- [PHP FPM 5.5.9](http://www.php.net)
- git, nano, curl, cli, intl, mcrypt

Installation
--------------

### Pull (Automatic)
$ docker pull chalasr/symfony-dev

### Build (Manual)

```
$ git clone https://github.com/chalasr/docker-symfony-dev
$ cd docker-symfony-dev
$ docker build -t "chalasr/symfony-dev" .
```

Usage
------

### 1) Run

```
$ docker run -t -i -p 8080:80 -v /path/to/sf/:/var/www chalasr/symfony-dev
```

__Note:__ The `/sf/` symbolizes the root directory of your project, the `/sf/web/` directory must exist.

### 2) Browse

**Linux** (or OSX with [_Docker Beta_](https://beta.docker.com/)):

```
http://localhost:8080/
```

**OS-X** (via docker-machine or boot2docker)

```
http://container-ip:8080/
```

CONTRIBUTING
------------

This project is always looking for better performances, newer tools and features.
Welcome to every kind of contribution (including opinions!) throughout Github Issues and PRs.

LICENSE
--------

This image is licensed under the MIT license.  
For the whole copyright, please refer to the distributed [LICENSE](LICENSE) file.
