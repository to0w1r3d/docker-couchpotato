FROM ubuntu:trusty
MAINTAINER to0w1r3d <to0w1r3d@gmail.com>
# Original: https://hub.docker.com/u/aostanin/

RUN apt-get install -qy git-core python2.7
RUN git clone https://github.com/RuudBurger/CouchPotatoServer.git /couchpotato

ADD start.sh /start.sh

VOLUME ["/data"]
# Torrent watch directory
VOLUME ["/torrents"]
# Incoming downloads
VOLUME ["/downloads"]
# Movie library
VOLUME ["/movies"]
EXPOSE 5050

CMD ["/start.sh"]
