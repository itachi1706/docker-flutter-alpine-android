FROM alpine

ENV GLIBC_VERSION=2.35-r0

WORKDIR /usr/local/glibc
RUN apk --no-cache add ca-certificates wget unzip && \
    wget -q -O /etc/apk/keys/sgerrand.rsa.pub https://alpine-pkgs.sgerrand.com/sgerrand.rsa.pub && \
    wget https://github.com/sgerrand/alpine-pkg-glibc/releases/download/${GLIBC_VERSION}/glibc-${GLIBC_VERSION}.apk && \
    wget https://github.com/sgerrand/alpine-pkg-glibc/releases/download/${GLIBC_VERSION}/glibc-bin-${GLIBC_VERSION}.apk && \
    apk add --force-overwrite glibc-${GLIBC_VERSION}.apk glibc-bin-${GLIBC_VERSION}.apk && \
    apk fix --force-overwrite alpine-baselayout-data

WORKDIR /usr

RUN apk add --no-cache bash curl unzip git gzip tar xz

ENV FLUTTER_HOME=/usr/flutter/bin
ENV PATH=${FLUTTER_HOME}:${PATH}

RUN git clone https://github.com/flutter/flutter.git -b stable

RUN flutter upgrade && flutter precache
RUN flutter config --enable-web
RUN flutter doctor -v
