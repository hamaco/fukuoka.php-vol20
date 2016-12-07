FROM alpine:3.4

ENV PHP_VERSION 7.0.13
WORKDIR /tmp

RUN apk add --no-cache --virtual .php-builddeps ca-certificates bash git patch re2c flex make gcc libc-dev
RUN apk add --no-cache libxml2-dev bzip2-dev

RUN git clone https://github.com/hnw/phpall.git
RUN wget -O php-$PHP_VERSION.tar.gz http://jp2.php.net/get/php-$PHP_VERSION.tar.gz/from/this/mirror

RUN /tmp/phpall/install-all-php.sh
RUN mv /root/bin/php-$PHP_VERSION /root/bin/php

RUN apk del .php-builddeps
RUN rm -rf /tmp/php*

ENTRYPOINT ["/root/bin/php"]
CMD ["-v"]
