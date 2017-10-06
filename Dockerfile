FROM python:3-alpine

LABEL maintainer="David Clutter <cluttered.code@gmail.com>"

RUN apk update && \
    apk upgrade && \
    apk add --no-cache libstdc++ && \
    apk add --no-cache --virtual .build_deps musl-dev python-dev g++ gfortran && \
    ln -s /usr/include/locale.h /usr/include/xlocale.h && \
    pip install pandas && \
    rm /usr/include/xlocale.h && \
    rm -r /root/.cache && \
    apk del .build_deps
