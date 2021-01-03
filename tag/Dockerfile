FROM itachi1706/flutter-alpine-android:baseshell

ARG FLUTTER_VERSION

RUN git clone https://github.com/flutter/flutter.git -b ${FLUTTER_VERSION}

RUN flutter precache
RUN yes | flutter doctor --android-licenses

WORKDIR /opt
