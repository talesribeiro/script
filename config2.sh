#!/bin/bash

#COMANDOS

#sudo apt-get upgrade && sudo apt-get update && sudo apt-get install
#sudo apt-get install git make screen build-essential autotools-dev autoconf libcurl3 libcurl4-gnutls-dev -y
#sudo apt-get install qt5-default screen build-essential autotools-dev autoconf libcurl3 libcurl4-gnutls-dev -y
#sudo apt install build-essential automake dh-autoreconf libusb-1.0-0-dev cmake g++ -y
#sudo apt-get install libcurl4-openssl-dev libncurses5-dev pkg-config automake yasm -y

sudo apt-get install git -y
sudo add-apt-repository main -y
sudo add-apt-repository universe -y
sudo add-apt-repository restricted -y
sudo add-apt-repository multiverse -y

sudo apt-get update

sudo apt install ocl-icd-opencl-dev -y
sudo apt-get install libmicrohttpd-dev libssl-dev cmake build-essential -y
sudo apt-get install automake libtool make gcc -y
sudo apt-get install libjansson-dev -y
sudo apt-get update
sudo add-apt-repository ppa:ubuntu-toolchain-r/test -y

sudo apt-get update

sudo apt-get install g++-5 -y

sudo apt-get upgrade

sudo update-initramfs -u -y
sudo apt-get install libopenblas-dev liblapack-dev -y
sudo apt-get install linux-image-generic linux-image-extra-virtual -y
sudo apt-get install linux-source linux-headers-generic -y
sudo apt-get install libglu1-mesa libxi-dev libxmu-dev -y
sudo apt-get — yes install build-essential -y
sudo apt-get install python-pip python-dev -y
sudo apt-get install python-numpy python-scipy -y
sudo apt-get install libglu1-mesa libxi-dev libxmu-dev libglu1-mesa-dev -y
sudo apt-get install apt-file && apt-file update -y

sudo apt-get upgrade

sudo apt-get install software-properties-common -y
sudo add-apt-repository ppa:george-edison55/cmake-3.x -y

sudo apt-get update

sudo apt-get install cmake -y

sudo apt-get upgrade

git clone https://github.com/fireice-uk/xmr-stak-cpu.git

cd xmr-stak-cpu
cmake -DCMAKE_CXX_COMPILER=/usr/bin/g++-5 -DCMAKE_CC_COMPILER=/usr/bin/gcc5
make install
cd bin
chmod +x xmr-stak-cpu
chmod +x start.sh


# BCC:SUPERNOVA.CC
#git clone https://github.com/feeleep75/nheqminer.git
#cd nheqminer/nheqminer
#mkdir build && cd build
#cmake ..
#make

#screen ./nheqminer -l zec.pool.minergate.com:3357 -u ribeiro_tales@hotmail.com
