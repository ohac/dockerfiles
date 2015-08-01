FROM ohac/base
RUN apt-get -y install curl
RUN apt-get -y install libboost-system1.55.0 libboost-filesystem1.55.0 libboost-program-options1.55.0 libboost-thread1.55.0 libdb6.0++ libminiupnpc8
COPY bin/sha1coind \
    bin/sakuracoind \
    bin/minerd \
    bin/minerd.bitzeny \
    /usr/bin/
COPY run-minerd.sh \
    run-sha1coind.sh \
    run-coinds.sh \
    /
