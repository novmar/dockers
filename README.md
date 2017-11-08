# dockers
Repozitar obsahuje akorat 2 Dockerfiles
- mysql docker s mysql serverem
- phpmyadmin docker s lighthttpd a phpmyadmin

jako zaklad dockeru jsem volil cisty alpine linux (prilozeny rootfs.tar.gz). rootfs je stazeny primo ze stranky alpinelinuxu. Zamerne jsem nevolil "hotove" docker image - z duvodu bezpecnosti. Alpine jsem volil z duvodu jednoduchosti, velikosti(samotny rootfs ma cca 4.3M). Jednotlive images jsem dostal do beziciho stavu. Jiz jsem se nedostal k nastudovani propojeni jednotlivych dockeru spolu. Dale bych postupoval nastavenim phpmyadmina na docker mysql, aby bylo mozno phpmyadmin pouzit.) HA by pravdepodobne probihalo pomoci docker swarm. 

Cele dockery bych prenesl pomoci ansible do centosu, nebo alpine linuxu spustenym vagrantem, pravdepodobne ve virtualboxu, nebo kvm.

Jednotlive hotove casti:

###### phpadmin 
build probiha pomoci v adresari phpmyadmin

`docker create -t phpmyadmin . `

docker se spousti pomoci prikazu 

`docker run -ti -p 8089:80  phpmyadmin`

nasledne na localhostu na portu 8089 uvidime phpmyadmin.. (tento aktualne neni nikam navazan, takze se nemuzeme prihlasit)

###### mysql 
build probiha pomoci v adresari mysql

`docker create -t mysql .`

docker se spousti pomoci prikazu 

` docker run -ti -p 5306:3306 mysql`

a nasledne se muzem na mysql pripojhit pomoci hesla "mojeheslo"

`mysql -u root -p -h 127.0.0.1 -P 5306`



