FROM ohac/base
RUN apt-get -y install git automake m4 libcurl4-openssl-dev make g++
RUN git clone https://github.com/ohac/sha1coin-cpuminer.git
ADD run.sh /
RUN bash run.sh
WORKDIR /sha1coin-cpuminer
ENTRYPOINT ["/bin/cp"]
CMD ["minerd", "/target"]
