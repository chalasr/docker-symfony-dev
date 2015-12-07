FROM ubuntu:14.04

MAINTAINER Robin Chalas <robin.chalas@gmail.com>

RUN apt-get update -y && \
	apt-get install -y \
	nginx \
	curl \
	nano \
	git \
	php5-fpm \
	php5-cli \
	php5-intl \
	php5-mcrypt \
	php5-apcu \
	php5-gd \
	php5-curl

ADD init /init

RUN chmod +x /init/init.sh
RUN /init/init.sh
VOLUME ["/var/www"]

EXPOSE 80

RUN echo "/etc/init.d/php5-fpm start" >> /etc/bash.bashrc
RUN echo "/etc/init.d/nginx start" >> /etc/bash.bashrc

RUN curl -sS https://getcomposer.org/installer | php -- --install-dir=/usr/local/bin --filename=composer

RUN sed -i.bak "s@;cgi.fix_pathinfo=1@cgi.fix_pathinfo=0@g" /etc/php5/fpm/php.ini

RUN sed -i".bak" "s/^\;date\.timezone.*$/date\.timezone = \"Europe\/Paris\" /g" /etc/php5/fpm/php.ini

# RUN echo "chown -R $USER:$USER $VOLUME_ROOT" >> /entrypoint.sh
# RUN echo "su -s /bin/bash - $USER -c 'cd $repo/build; $@'" >> /entrypoint.sh
RUN chmod -R 777 /var/cache/
