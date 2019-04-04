FROM resin/armv7hf-debian-qemu

RUN [ "cross-build-start" ]

RUN apt-get update \
 && apt-get -y dist-upgrade

RUN sed "s/jessie/stretch/g" /etc/apt/sources.list > /etc/apt/sources.list \
 && apt-get update \
 && apt-get -y dist-upgrade

RUN [ "cross-build-stop" ]
