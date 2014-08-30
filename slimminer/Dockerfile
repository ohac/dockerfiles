FROM ohac/buildbase
RUN git clone https://github.com/slimcoin/slimminer.git
ADD run.sh /
RUN bash run.sh
WORKDIR /slimminer
ENTRYPOINT ["/bin/cp"]
CMD ["minerd", "/target/slimminerd"]
