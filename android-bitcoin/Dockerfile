# https://github.com/y12studio/bkbc-tools/blob/master/projects/lighthouse-docker/Dockerfile
# https://github.com/gfx/docker-android-project/blob/master/Dockerfile
FROM ubuntu:14.04
MAINTAINER OHASHI Hideya <ohachige@gmail.com>

RUN locale-gen --no-purge en_US.UTF-8
ENV LANG en_US.UTF-8
ENV LANGUAGE en_US.UTF-8
ENV LC_ALL en_US.UTF-8
RUN update-locale

ENV DEBIAN_FRONTEND noninteractive
ENV HOME /root

RUN apt-get -y update
RUN apt-get -y upgrade
RUN apt-get install -yq curl wget git software-properties-common vim

# Install Java.
RUN \
  echo oracle-java8-installer shared/accepted-oracle-license-v1-1 select true | debconf-set-selections && \
  add-apt-repository -y ppa:webupd8team/java && \
  apt-get update && \
  apt-get install -y oracle-java8-installer

ENV JAVA_HOME /usr/lib/jvm/java-8-oracle/

# install maven
ENV MAVEN_VERSION 3.2.3
ENV M2_HOME /opt/maven
ENV M2 $M2_HOME/bin

RUN wget -qO- http://archive.apache.org/dist/maven/maven-3/${MAVEN_VERSION}/binaries/apache-maven-${MAVEN_VERSION}-bin.tar.gz  | tar xvz -C /tmp && \
    mv /tmp/apache-maven-* $M2_HOME && \
    chmod +x $M2/mvn

ENV PATH $PATH:$JAVA_HOME/bin:$M2

RUN cd /opt && git clone https://github.com/bitcoinj/bitcoinj && cd bitcoinj && mvn install -DskipTests

# Install dependencies
RUN dpkg --add-architecture i386 && \
    apt-get update && \
    apt-get install -yq libstdc++6:i386 zlib1g:i386 libncurses5:i386 --no-install-recommends && \
    apt-get clean

# Download and untar SDK
ENV ANDROID_SDK_URL http://dl.google.com/android/android-sdk_r24.1.2-linux.tgz
RUN curl -L "${ANDROID_SDK_URL}" | tar --no-same-owner -xz -C /usr/local
ENV ANDROID_HOME /usr/local/android-sdk-linux
ENV ANDROID_SDK /usr/local/android-sdk-linux
ENV PATH ${ANDROID_HOME}/tools:$ANDROID_HOME/platform-tools:$PATH

# Install Android SDK components
ENV ANDROID_SDK_COMPONENTS platform-tools,build-tools-22.0.1,android-16,extra-android-m2repository,extra-google-m2repository
RUN echo y | android update sdk --no-ui --all --filter "${ANDROID_SDK_COMPONENTS}"

RUN git clone https://github.com/schildbach/bitcoin-wallet.git
RUN cd /bitcoin-wallet && mvn clean

RUN cd /bitcoin-wallet && mv pom.xml pom.xml.orig && grep -v sample pom.xml.orig > pom.xml && mvn install -DskipTests=true

ENV ANDROID_SDK_COMPONENTS platform-tools,build-tools-22.0.1,android-16,extra-android-m2repository,extra-google-m2repository
RUN echo y | android update sdk --no-ui --all --filter "${ANDROID_SDK_COMPONENTS}"

ENV ANDROID_SDK_COMPONENTS android-14
RUN echo y | android update sdk --no-ui --all --filter "${ANDROID_SDK_COMPONENTS}"
RUN git clone https://github.com/ohac/sakuracoinj
RUN git clone https://github.com/ohac/sakuracoin-wallet
RUN cd /sakuracoinj && mvn install -DskipTests
RUN cd /sakuracoin-wallet && mvn clean

WORKDIR bitcoin-wallet
