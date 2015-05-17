FROM debian
RUN apt-get update
RUN apt-get install -y apt-p2p
RUN apt-get install -y vim
RUN apt-get install -y patch
ADD apt-p2p.conf.patch /
ADD HTTPServer.py.patch /
RUN cd /etc/apt-p2p && patch -p0 < /apt-p2p.conf.patch
RUN cd /usr/lib/pymodules/python2.7/apt_p2p && patch -p0 < /HTTPServer.py.patch
EXPOSE 9977
CMD /usr/sbin/apt-p2p
# docker run -d --name apt-p2p -p 9977:9977 -v $PWD/../data/apt-p2p:/var/cache/apt-p2p ohac/apt-p2p

# docker0 172.17.42.1
