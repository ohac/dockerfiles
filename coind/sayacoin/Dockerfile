FROM ohac/buildbase
RUN git clone https://github.com/umiyuki/sayacoin.git
ADD sayacoin.sh /
RUN bash sayacoin.sh
WORKDIR /sayacoin/src
ENTRYPOINT ["/bin/cp"]
CMD ["sayacoind", "/target"]
