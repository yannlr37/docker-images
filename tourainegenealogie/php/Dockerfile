FROM php:7.4-apache

RUN apt-get update
RUN apt-get install -y vim
RUN docker-php-ext-install pdo_mysql
RUN docker-php-ext-install mysqli
RUN docker-php-ext-enable mysqli
