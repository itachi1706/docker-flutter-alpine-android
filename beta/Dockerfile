FROM itachi1706/flutter-alpine-android:baseshell

RUN git clone https://github.com/flutter/flutter.git -b beta

RUN flutter upgrade && flutter precache
RUN yes | flutter doctor --android-licenses

RUN flutter doctor -v

WORKDIR /opt