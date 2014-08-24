FROM ohac/buildbase
RUN git clone https://github.com/ohac/sha1coin
ADD sha1coin.sh /
RUN bash sha1coin.sh
WORKDIR /sha1coin/src
ENTRYPOINT ["/bin/cp"]
CMD ["sha1coind", "/target"]
