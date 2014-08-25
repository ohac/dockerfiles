FROM ohac/buildbase
RUN git clone https://github.com/ohac/sakuracoin
ADD sakuracoin.sh /
RUN bash sakuracoin.sh
WORKDIR /sakuracoin/src
ENTRYPOINT ["/bin/cp"]
CMD ["sakuracoind", "/target"]
