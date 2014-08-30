FROM ohac/withbin

RUN apt-get -y install wget curl htop vim
RUN apt-get -y install supervisor
RUN apt-get -y install git python-crypto
RUN apt-get -y install python2.7 postgresql-9.3 python-psycopg2
RUN apt-get -y install nginx

# for NOMP
RUN apt-get -y install redis-server redis-tools
RUN apt-get -y install npm
RUN apt-get -y install software-properties-common
RUN add-apt-repository -y ppa:chris-lea/node.js
RUN apt-get update
RUN apt-get -y install nodejs

RUN git clone https://github.com/zone117x/node-open-mining-portal.git nomp
RUN cd nomp && npm update
ADD nomp/config.json /nomp/
ADD nomp/coins/sha1coin.json /nomp/coins/
ADD nomp/pool_configs/sha1coin.json /nomp/pool_configs/

RUN useradd coind
RUN git clone https://github.com/ohac/bitcoin-abe.git
RUN cd bitcoin-abe && python setup.py install
ADD sha1coin.conf /etc/supervisor/conf.d/
ADD sakuracoin.conf /etc/supervisor/conf.d/
ADD sayacoin.conf /etc/supervisor/conf.d/
ADD yaycoin.conf /etc/supervisor/conf.d/
ADD sv-abe.conf /etc/supervisor/conf.d/
ADD sv-nomp.conf /etc/supervisor/conf.d/
ADD startup.sh /
ADD abe.conf /
ADD nginx.abe.conf /etc/nginx/sites-available/
ADD nginx.nomp.conf /etc/nginx/sites-available/
RUN rm /etc/nginx/sites-enabled/default 
RUN ln -s /etc/nginx/sites-available/nginx.abe.conf /etc/nginx/sites-enabled/
RUN ln -s /etc/nginx/sites-available/nginx.nomp.conf /etc/nginx/sites-enabled/
EXPOSE 80 9513 9301 8666 8484 3032
ENTRYPOINT ["/bin/bash", "startup.sh"]

# MEMO: docker run -p 80:80 -p 9513:9513 -p 9301:9301 -p 8666:8666 -p 8484:8484 -p 3032:3032 -v $PWD/../datadir:/mnt/datadir -it -d ohac/abe
