FROM ohac/withbin

RUN apt-get -y install wget curl htop vim
RUN apt-get -y install supervisor
RUN apt-get -y install git python-crypto
RUN apt-get -y install python2.7 postgresql-9.3 python-psycopg2
RUN useradd coind
RUN git clone https://github.com/ohac/bitcoin-abe.git
RUN cd bitcoin-abe && python setup.py install
ADD sha1coin.conf /etc/supervisor/conf.d/
ADD sakuracoin.conf /etc/supervisor/conf.d/
ADD startup.sh /
ADD abe.conf /
EXPOSE 2750 9513 9301
ENTRYPOINT ["/bin/bash", "startup.sh"]

# MEMO: docker run -p 2750:2750 -p 9513:9513 -p 9301:9301 -v $PWD/../datadir:/mnt/datadir -it -d thisimagehash
