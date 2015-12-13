FROM ohac/buildbase
RUN git clone https://github.com/dogecoin/dogecoin.git
COPY dogecoin.sh /dogecoin/
RUN apt-get update && \
    apt-get -y install wget curl htop vim git git automake m4 \
                    libcurl4-openssl-dev make g++ libboost1.55-all-dev \
                    libdb5.3-dev libdb5.3++-dev libminiupnpc-dev libtool && \
    apt-get clean
# libdb5.3-dev
# libdb6.0-dev
WORKDIR /dogecoin
RUN bash dogecoin.sh
