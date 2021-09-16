FROM php:7.4-fpm

ARG DOCKER_TOKEN
ENV TZ="Europe/Paris"

RUN apt-get update \
	&& apt-get install -y git curl \
	 vim apt-transport-https apt-utils gnupg lsb-release ca-certificates \
	 openssl curl mariadb-client default-libmysqlclient-dev libpng-dev libjpeg-dev libxml2-dev libldap2-dev \
	 zip unzip libzip-dev locales locales-all \
    && rm -r /var/lib/apt/lists/* \
	&& docker-php-ext-install pdo_mysql \
    && docker-php-ext-install mysqli \
	&& docker-php-ext-install soap \
	&& docker-php-ext-install zip \
	&& docker-php-ext-install gd \
	&& pecl install xdebug-3.0.4 \
    && docker-php-ext-enable xdebug \

	# Création des dossiers des logs et data
	&& chown -R www-data:www-data /var/log

COPY --from=composer:1.10 /usr/bin/composer /usr/local/bin/composer

# Récupération de l'entrypoint
COPY tourainegenealogie/php/entrypoint.sh /home/entrypoint.sh
WORKDIR /home
RUN chmod +x /home/entrypoint.sh

ENTRYPOINT ["bash","/home/entrypoint.sh"]

WORKDIR /var/www/html

# port xdebug
EXPOSE 9003


#FROM php:7.4-apache
#RUN apt-get update
#RUN apt-get install -y vim
#RUN docker-php-ext-install pdo_mysql
#RUN docker-php-ext-install mysqli