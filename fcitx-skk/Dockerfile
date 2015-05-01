FROM ubuntu:15.04
RUN apt-get update
RUN apt-get install -y git gnome-common fcitx-libs-dev libfcitx-qt5-dev \
    g++ gobject-introspection libgio2.0-cil-dev libglib2.0-dev libgee-0.8-dev \
    libjson-glib-dev valac cmake qt4-qmake libqt4-dev vim wget
ENV LANG en_US.UTF-8
RUN locale-gen $LANG

#RUN git clone https://github.com/ueno/libskk.git
RUN git clone https://github.com/ohac/libskk.git
RUN git clone https://github.com/fcitx/fcitx-skk.git
#RUN cd libskk && ./autogen.sh && ./configure && make install
#RUN cd fcitx-skk && cmake . && make install
#RUN rm /usr/local/lib/libskk.so*

RUN apt-get install -y fcitx-bin fcitx-data fcitx-modules skk skkdic gir1.2-skk-1.0
RUN apt-get build-dep -y libskk
RUN apt-get source -y libskk
#RUN cd libskk-1.0.2 && dpkg-buildpackage -uc -us
ADD changelog.txt /libskk/
RUN wget -q https://launchpad.net/~ohachige/+archive/ubuntu/ppa/+files/libskk_1.0.2-3.orig.tar.gz
RUN mv libskk-1.0.2/ libskk-1.0.2-orig && \
    mv libskk-1.0.2-orig/debian/ libskk/ && \
    mv libskk libskk-1.0.2 && \
    cd libskk-1.0.2 && \
    cat changelog.txt debian/changelog >debian/changelog.new && \
    mv -f debian/changelog.new debian/changelog
ADD format /libskk-1.0.2/debian/source/
#RUN cd libskk-1.0.2 && dpkg-buildpackage -uc -us
RUN cd libskk-1.0.2 && dpkg-buildpackage -S -uc -us
WORKDIR libskk-1.0.2

# docker build -t ohac/skk .
# docker run -it --rm -v $PWD/tmp:/tmp ohac/skk bash -c 'cp /libskk_* /tmp'
# sudo chown -R ohashi: tmp
# cd tmp
# debsign libskk_1.0.2-3-ohac2_source.changes
# dput ppa:ohachige/ppa libskk_1.0.2-3-ohac2_source.changes
