FROM ubuntu:latest

RUN apt-get update
RUN apt-get upgrade -y

RUN apt-get -y -d install wget curl htop vim

# for cpuminer
RUN apt-get -y -d install git automake m4 libcurl4-openssl-dev make
RUN apt-get -y -d install g++
