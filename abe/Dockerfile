FROM ohac/withbin

RUN apt-get -y install wget curl htop vim
RUN apt-get -y install supervisor
RUN apt-get -y install git python-crypto
RUN useradd sha1coin
RUN git clone https://github.com/ohac/bitcoin-abe.git
RUN cd bitcoin-abe && python setup.py install
ADD sha1coin.conf /etc/supervisor/conf.d/
ADD startup.sh /
ADD abe.conf /
EXPOSE 2750 9513
WORKDIR /
ENTRYPOINT ["/bin/sh", "startup.sh"]

# MEMO: docker run -v $PWD/datadir:/mnt/datadir -it --rm thisimagehash
