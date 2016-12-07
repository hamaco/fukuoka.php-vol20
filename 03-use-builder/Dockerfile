FROM hamaco/fukuoka-php-20:03-base

ENV PHP_VERSION 7.0.13

WORKDIR /work

RUN wget -O php-$PHP_VERSION.tar.bz2 http://jp2.php.net/get/php-$PHP_VERSION.tar.bz2/from/this/mirror \
  && /work/phpall/install-all-php.sh \
  && mv /root/bin/php-$PHP_VERSION /root/bin/php \
  && apk del .php-builddeps \
  && rm -rf /work

ENTRYPOINT ["/root/bin/php"]
CMD ["-v"]
