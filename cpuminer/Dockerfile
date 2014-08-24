FROM ohac/base
RUN apt-get -y install git automake m4 libcurl4-openssl-dev make g++
RUN git clone https://github.com/ohac/sha1coin-cpuminer.git
ADD run.sh /
RUN bash run.sh
ENTRYPOINT /sha1coin-cpuminer/minerd -t 2 -a sha1coin -o stratum+tcp://nomp.sighash.info:3032 -O SVNGMa87FSJUed4YCzZqfvhf7LvNSMTkVn:x -f KonoHa
