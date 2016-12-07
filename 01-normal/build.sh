#!/usr/bin/env bash

dir=$(cd $(dirname $0); pwd)

docker build -t hamaco/fukuoka-php-20:01 $dir

# docker run --rm hamaco/fukuoka-php-20:01
