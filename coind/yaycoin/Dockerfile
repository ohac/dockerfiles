FROM ohac/buildbase
RUN git clone https://github.com/dkwzjw/yaycoin.git
ADD yaycoin.sh /
RUN bash yaycoin.sh
WORKDIR /yaycoin/src
ENTRYPOINT ["/bin/cp"]
CMD ["yaycoind", "/target"]
