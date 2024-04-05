#!/usr/bin/env bash
set -e
export COMPOSER_ALLOW_SUPERUSER=1
if [ ! -f app/composer.json ]
then
    composer create-project symfony/skeleton:"7.0.*" app && \
        cd app && \
        composer require webapp && \
        cp /tmp/symfony/.env . && \
        cp /tmp/symfony/doctrine.yaml config/packages/
fi
php-fpm
