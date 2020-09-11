#!/bin/bash

docker build -t lyrecreations/laravel:php74-apache laravel-php74-apache-xdebug
docker build -t lyrecreations/php-redis:php74-apache php74-apache-redis-xdebug
