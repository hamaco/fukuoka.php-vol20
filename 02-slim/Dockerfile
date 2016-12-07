FROM alpine:3.4

ENV PHP_VERSION 7.0.13
WORKDIR /tmp

RUN apk add --no-cache --virtual .php-builddeps ca-certificates bash git patch re2c flex make gcc libc-dev \
    && apk add --no-cache libxml2-dev bzip2-dev \
    && git clone https://github.com/hnw/phpall.git \
    && wget -O php-$PHP_VERSION.tar.gz http://jp2.php.net/get/php-$PHP_VERSION.tar.gz/from/this/mirror \
    && /tmp/phpall/install-all-php.sh \
    && mv /root/bin/php-$PHP_VERSION /root/bin/php \
    && apk del .php-builddeps \
    && rm -rf /tmp/php*

ENTRYPOINT ["/root/bin/php"]
CMD ["-v"]
