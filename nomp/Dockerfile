FROM ohac/buildbase
RUN apt-get -y install redis-server redis-tools
RUN apt-get -y install npm
RUN apt-get -y install software-properties-common
RUN add-apt-repository -y ppa:chris-lea/node.js
RUN apt-get update
RUN apt-get -y install nodejs
RUN git clone https://github.com/zone117x/node-open-mining-portal.git nomp
ADD run.sh /
ADD config.json /nomp/
ADD coins/sha1coin.json /nomp/coins/
ADD pool_configs/sha1coin.json /nomp/pool_configs/
RUN cd nomp && npm update
#RUN bash run.sh
#WORKDIR /nomp
#ENTRYPOINT ["/bin/cp"]
#CMD ["minerd", "/target/slimminerd"]
