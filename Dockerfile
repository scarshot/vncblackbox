FROM ubuntu:latest

MAINTAINER patrick.vandijk@web.de

# System update and basic packages
RUN apt-get update
RUN apt-get install -yyy software-properties-common
RUN apt-get install -y tightvncserver novnc fluxbox
RUN apt-get install -y fonts-dejavu net-tools xterm
RUN apt-get install -y libnss3 libminizip1 libatomic1 libpci3

ENV DEBIAN_FRONTEND=noninteractive
RUN apt-get install -yyy gstreamer1.0-alsa midori
ENV DEBIAN_FRONTEND=

RUN mkdir -p "/root/.vnc"
RUN touch /root/.vnc/passwd
RUN chmod 600 /root/.vnc/passwd

RUN apt-get install -y firefox

ADD root /

ENV USER=root
ENV HOME=/root
ENV VNC_PW="lokus554"
ENV VNC_RES=1000x700

ENTRYPOINT [ "/bootstrap" ]
