FROM python:3-alpine

LABEL maintainer="David Clutter <cluttered.code@gmail.com>"

RUN apk update && \
    apk upgrade && \
    apk add --update --no-cache curl gcc g++ gfortran && \
    ln -s /usr/include/locale.h /usr/include/xlocale.h && \
    pip install --no-cache-dir bottle numpy cython pandas 
