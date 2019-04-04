FROM resin/armv7hf-debian-qemu

RUN [ "" ]

RUN apt-get update \
 && apt-get -y dist-upgrade
