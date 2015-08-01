FROM ohac/buildbase
RUN git clone https://github.com/bitzeny/cpuminer.git
ADD run.sh /
RUN bash run.sh
WORKDIR /cpuminer
ENTRYPOINT ["/bin/cp"]
CMD ["minerd", "/target/minerd.bitzeny"]
