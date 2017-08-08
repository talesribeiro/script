#!/bin/bash

#COMANDOS
sudo apt-get upgrade && sudo apt-get update && sudo apt-get install
#sudo apt-get install git make screen build-essential autotools-dev autoconf libcurl3 libcurl4-gnutls-dev -y
sudo apt-get install screen build-essential autotools-dev autoconf libcurl3 libcurl4-gnutls-dev -y
sudo apt install build-essential automake dh-autoreconf libusb-1.0-0-dev cmake g++ -y
sudo apt-get install libcurl4-openssl-dev libncurses5-dev pkg-config automake yasm -y

# BCC:SUPERNOVA.CC
wget https://github.com/pooler/cpuminer/releases/download/v2.5.0/pooler-cpuminer-2.5.0.tar.gz
tar xzf pooler-cpuminer-*.tar.gz
cd cpuminer-*
CFLAGS="-march=native" ./configure
make
sudo make install
screen minerd -o stratum+tcp://xmr.suprnova.cc:5222 -u talesribeiro.work01 -p x