FROM ohac/buildbase
#RUN git clone https://github.com/ohac/sha1coin-cpuminer.git
RUN git clone https://github.com/holo-n94/sha1coin-cpuminer.git
ADD run.sh /
RUN bash run.sh
WORKDIR /sha1coin-cpuminer
ENTRYPOINT ["/bin/cp"]
CMD ["minerd", "/target"]
