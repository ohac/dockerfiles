FROM ubuntu:14.04
RUN apt-get update
RUN apt-get install -y git gnome-common fcitx-libs-dev fcitx-libs-qt5-dev \
    g++ gobject-introspection libgio2.0-cil-dev libglib2.0-dev libgee-0.8-dev \
    libjson-glib-dev valac cmake qt4-qmake libqt4-dev
RUN git clone https://github.com/ueno/libskk.git
RUN git clone https://github.com/fcitx/fcitx-skk.git
RUN cd libskk && ./autogen.sh && ./configure && make install
RUN cd fcitx-skk && cmake . && make install
