FROM ohac/base
RUN apt-get -y install curl
RUN apt-get -y install libboost-system1.55.0 libboost-filesystem1.55.0 libboost-program-options1.55.0 libboost-thread1.55.0 libdb6.0++ libminiupnpc8
ADD bin/minerd /usr/bin/
ADD bin/sha1coind /usr/bin/
ADD run-minerd.sh /
ADD run-sha1coind.sh /
