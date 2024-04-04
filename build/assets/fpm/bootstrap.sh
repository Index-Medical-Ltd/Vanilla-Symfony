#!/usr/bin/env bash
export COMPOSER_ALLOW_SUPERUSER=1
if [ ! -f app/composer.json ]
then
    composer create-project symfony/skeleton:"7.0.*" app && \
        cd app && \
        composer require webapp
fi
php-fpm
