FROM alpine:3.4

WORKDIR /work

RUN apk add --no-cache --virtual .php-builddeps ca-certificates bash git make gcc patch re2c flex libc-dev \
  && apk add --no-cache libxml2-dev bzip2-dev \
  && git clone https://github.com/hnw/phpall.git
