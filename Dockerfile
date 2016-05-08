FROM debian:jessie

MAINTAINER Robin Chalas <robin.chalas@gmail.com>

RUN apt-get update -y

# Install OS Softwares
RUN apt-get install -y \
    python-setuptools \
    python-software-properties \
    software-properties-common \
    wget \
    nginx \
    curl \
    nano \
    vim \
    git

# Fetch dotdeb packages for PHP 7
RUN echo "deb http://packages.dotdeb.org jessie all" > /etc/apt/sources.list.d/dotdeb.list
RUN wget -O- https://www.dotdeb.org/dotdeb.gpg | apt-key add -
RUN apt-get update -y

# Install PHP-FPM & Extensions
RUN apt-get install -y --force-yes \
  php7.0-fpm \
  php7.0-cli \
  php7.0-intl \
  php7.0-mcrypt \
  php7.0-apcu \
  php7.0-gd \
  php7.0-curl \
  php7.0-xml

ADD init /init
RUN chmod +x /init/init.sh

# Setup Nginx vhost
RUN /init/init.sh

VOLUME ["/var/www"]

EXPOSE 80

# Initilize Nginx and PHP-FPM
RUN echo "/etc/init.d/php7.0-fpm start" >> /etc/bash.bashrc
RUN echo "/etc/init.d/nginx start" >> /etc/bash.bashrc
RUN curl -sS https://getcomposer.org/installer | php -- --install-dir=/usr/local/bin --filename=composer
RUN cd $( php -i | grep php.ini | awk -F "=> " '{ print $2,$9 }') && PHPINI=$( pwd )/php.ini \
    && sed -i.bak "s@;cgi.fix_pathinfo=1@cgi.fix_pathinfo=0@g" $PHPINI \
    && sed -i".bak" "s/^\;date\.timezone.*$/date\.timezone = \"Europe\/Paris\" /g" $PHPINI
