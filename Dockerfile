FROM ubuntu:14.04
MAINTAINER Johannes 'fish' Ziemke <docker@freigeist.org>

RUN apt-get update && apt-get -y -q install tinc

EXPOSE 655
EXPOSE 655/udp
VOLUME /tinc

ENTRYPOINT [ "tincd", "-D", "-c", "/tinc", "-U", "nobody" ]
