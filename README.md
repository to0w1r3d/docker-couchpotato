README:

Couchpotato - (https://github.com/RuudBurger/CouchPotatoServer)

______________________

git clone git@github.com:to0w1r3d/docker-couchpotato

cd docker-couchpotato

docker build -t couchpotato .

______________________

VOLUME /data
VOLUME /torrents
VOLUME /downloads
VOLUME /movies

______________________


docker run -d -h _hostname_ -v /_hostdata_:/data -v /_hosttorrents_:/torrents -v /_hostdownloads_:/downloads -v /_hostmovielibrary_:/movies -p 5050:5050 couchpotato
