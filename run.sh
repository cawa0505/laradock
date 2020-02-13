#!/bin/bash

simple() {
    docker-compose up -d nginx mysql workspace php-fpm phpmyadmin redis
}

full() {
    docker-compose up -d
}

if [ "$(type -t $1)" = 'function' ];
  then
    echo "No arguments supplied"
else
  $1
fi
