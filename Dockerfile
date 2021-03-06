FROM ubuntu:trusty
MAINTAINER to0w1r3d <to0w1r3d@gmail.com>
# Original: https://hub.docker.com/u/aostanin/

RUN locale-gen en_US en_US.UTF-8

RUN dpkg --clear-avail
RUN apt-get -q update
RUN apt-mark hold initscripts udev plymouth mountall
RUN apt-get -qy --force-yes dist-upgrade

RUN echo "deb http://archive.ubuntu.com/ubuntu trusty universe multiverse" >> /etc/apt/sources.list
RUN apt-get -q update

RUN apt-get install -qy git-core python2.7 unrar
RUN git clone https://github.com/RuudBurger/CouchPotatoServer.git /couchpotato

ADD start.sh /start.sh
RUN chmod u+x  /start.sh

VOLUME /data
VOLUME /torrents
VOLUME /downloads
VOLUME /movies

EXPOSE 5050

CMD ["/start.sh"]
