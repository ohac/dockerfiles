FROM ubuntu:14.04
RUN apt-get update
RUN apt-get install -y git gnome-common fcitx-libs-dev fcitx-libs-qt5-dev \
    g++ gobject-introspection libgio2.0-cil-dev libglib2.0-dev libgee-0.8-dev \
    libjson-glib-dev valac cmake qt4-qmake libqt4-dev
RUN git clone https://github.com/ueno/libskk.git
RUN git clone https://github.com/fcitx/fcitx-skk.git
#RUN cd libskk && ./autogen.sh && ./configure && make install
#RUN cd fcitx-skk && cmake . && make install
#RUN rm /usr/local/lib/libskk.so*

RUN apt-get install -y fcitx-bin fcitx-data fcitx-modules skk skkdic gir1.2-skk-1.0
RUN apt-get build-dep -y libskk
#RUN apt-get install -y debhelper
RUN apt-get source -y libskk
RUN cd libskk-1.0.0 && dpkg-buildpackage -uc -us
RUN dpkg -i libskk0_1.0.0-1_amd64.deb libskk-common_1.0.0-1_all.deb libskk-dev_1.0.0-1_amd64.deb

RUN curl -sO http://ftp.de.debian.org/debian/pool/main/f/fcitx-skk/fcitx-skk_0.1.1-1.debian.tar.xz
RUN curl -sO http://ftp.de.debian.org/debian/pool/main/f/fcitx-skk/fcitx-skk_0.1.1.orig.tar.gz
RUN curl -sO http://ftp.de.debian.org/debian/pool/main/f/fcitx-skk/fcitx-skk_0.1.1-1.dsc
RUN tar xf fcitx-skk_0.1.1.orig.tar.gz
RUN cd fcitx-skk-0.1.1 && tar xf ../fcitx-skk_0.1.1-1.debian.tar.xz && dpkg-buildpackage -uc -us
