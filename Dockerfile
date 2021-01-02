FROM itachi1706/android-alpine-sdk

WORKDIR /usr

RUN apk add --no-cache bash curl unzip git tar xz

ENV PATH="/usr/flutter/bin:${PATH}"