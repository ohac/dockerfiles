FROM ohac/buildbase
RUN apt-get -y install libtool
RUN apt-get -y install beignet-dev opencl-headers ocl-icd-opencl-dev
RUN git clone https://github.com/holo-n94/sph-sgminer.git
ADD sgminer.sh /
RUN bash sgminer.sh
WORKDIR /sph-sgminer
ENTRYPOINT ["/bin/cp"]
CMD ["sgminer", "/target"]
