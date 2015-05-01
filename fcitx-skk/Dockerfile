FROM ubuntu:15.04
RUN apt-get update
RUN apt-get install -y git gnome-common fcitx-libs-dev libfcitx-qt5-dev \
    g++ gobject-introspection libgio2.0-cil-dev libglib2.0-dev libgee-0.8-dev \
    libjson-glib-dev valac cmake qt4-qmake libqt4-dev

#RUN git clone https://github.com/ueno/libskk.git
RUN git clone https://github.com/ohac/libskk.git
RUN git clone https://github.com/fcitx/fcitx-skk.git
#RUN cd libskk && ./autogen.sh && ./configure && make install
#RUN cd fcitx-skk && cmake . && make install
#RUN rm /usr/local/lib/libskk.so*

RUN apt-get install -y fcitx-bin fcitx-data fcitx-modules skk skkdic gir1.2-skk-1.0
RUN apt-get build-dep -y libskk
RUN apt-get source -y libskk
RUN cd libskk-1.0.2 && dpkg-buildpackage -uc -us
RUN dpkg -i libskk0_1.0.2-3_amd64.deb libskk-common_1.0.2-3_all.deb libskk-dev_1.0.2-3_amd64.deb
