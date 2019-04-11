FROM phpdockerio/php72-cli:latest

ENV DEBIAN_FRONTEND noninteractive

RUN apt-get update --fix-missing && apt-get install -y --no-install-recommends apt-utils

RUN apt-get install --reinstall --yes --force-yes -o Dpkg::Options::="--force-confdef" -o Dpkg::Options::="--force-confold" php7.2-fpm

RUN apt-get -y install php7.2-intl php7.2-mysql php7.2-xdebug php7.2-bcmath php7.2-amqp

RUN apt-get -y install git nano

RUN curl -sS https://getcomposer.org/installer | php -- --install-dir=/usr/local/bin/ --filename=composer

ADD files /

RUN cat /etc/php/7.2/cli/php.ini.add >> /etc/php/7.2/cli/php.ini

RUN apt-get clean && rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*

RUN useradd --create-home --shell /bin/bash --user-group dev
RUN echo "export TERM=xterm" >> /home/dev/.bashrc

WORKDIR /usr/src/orchestrator

USER dev

CMD sleep infinity
