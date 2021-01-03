FROM itachi1706/android-alpine-sdk

WORKDIR /usr

RUN apk add --no-cache bash curl unzip git gzip tar xz

ENV FLUTTER_HOME=/usr/flutter/bin
ENV PATH=${FLUTTER_HOME}:${PATH}