FROM ohac/withbin

RUN apt-get -y install wget curl htop vim
RUN apt-get -y install supervisor
RUN apt-get -y install git python-crypto
RUN apt-get -y install python2.7 postgresql-9.3 python-psycopg2
RUN apt-get -y install nginx
RUN useradd coind
RUN git clone https://github.com/ohac/bitcoin-abe.git
RUN cd bitcoin-abe && python setup.py install
ADD sha1coin.conf /etc/supervisor/conf.d/
ADD sakuracoin.conf /etc/supervisor/conf.d/
ADD startup.sh /
ADD abe.conf /
ADD nginx.abe.conf /etc/nginx/sites-available/
RUN rm /etc/nginx/sites-enabled/default 
RUN ln -s /etc/nginx/sites-available/nginx.abe.conf /etc/nginx/sites-enabled/
EXPOSE 80 9513 9301
ENTRYPOINT ["/bin/bash", "startup.sh"]

# MEMO: docker run -p 80:80 -p 9513:9513 -p 9301:9301 -v $PWD/../datadir:/mnt/datadir -it -d ohac/abe
