FROM itachi1706/android-alpine-sdk

WORKDIR /usr

RUN apk add --no-cache bash clang cmake curl ninja git gtk+3.0-dev gzip pkgconfig tar unzip xz

ENV FLUTTER_HOME=/usr/flutter/bin
ENV PATH=${FLUTTER_HOME}:${PATH}