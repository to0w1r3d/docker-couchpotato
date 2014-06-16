README:

Couchpotato - (https://github.com/RuudBurger/CouchPotatoServer)

git clone git@github.com:to0w1r3d/docker-couchpotato
cd docker-couchpotato
docker build -t couchpotato .

docker run -d -h _hostname_ -v /_hostconfig_:/config -v /_hostdata_:/data -v /_hosttvlibrary_:/tv -p 5050:5050 couchpotato


docker run -d -h your_host_name -v /your_movies_location:/movies -v /your_downloads_location:/downloads -v /your_torrents_location:/torrents -v /your_data_location:/data -p 5050:5050 couchpotato
