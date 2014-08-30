FROM ohac/buildbase
RUN git clone https://github.com/slimcoin/slimcoin.git
ADD slimcoin.sh /
RUN bash slimcoin.sh
WORKDIR /slimcoin/src
ENTRYPOINT ["/bin/cp"]
CMD ["slimcoind", "/target"]
