#!/usr/bin/env bash

dir=$(cd $(dirname $0); pwd)

cd $dir/container
tar -c . | docker import - hamaco/fukuoka-php-20:06
