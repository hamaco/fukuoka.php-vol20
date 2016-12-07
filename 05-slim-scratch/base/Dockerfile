FROM alpine:3.4

WORKDIR /work

RUN apk add --no-cache --virtual .php-builddeps ca-certificates bash git make gcc patch re2c flex libc-dev libxml2-dev bzip2-dev \
  && git clone https://github.com/hnw/phpall.git

ADD ./scripts/make-image.bash /work/make-image.bash

ENTRYPOINT ["/work/make-image.bash"]
