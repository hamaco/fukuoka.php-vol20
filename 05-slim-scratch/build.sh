#!/usr/bin/env bash

dir=$(cd $(dirname $0); pwd)

docker build -t hamaco/fukuoka-php-20:05-base $dir/base
docker run --rm hamaco/fukuoka-php-20:05-base > $dir/images.tar.gz
docker build -t hamaco/fukuoka-php-20:05 $dir
