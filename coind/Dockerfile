FROM ohac/cpuminer
RUN apt-get -y install libboost-dev libdb6.0++-dev libminiupnpc-dev
RUN git clone https://github.com/ohac/sha1coin
RUN apt-get -y install libboost1.55-all-dev
ADD sha1coin.sh /
RUN bash sha1coin.sh
WORKDIR /sha1coin/src
ENTRYPOINT ["/bin/cp"]
CMD ["sha1coind", "/target"]
