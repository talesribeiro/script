#!/bin/bash

apt-get install software-properties-common -y && apt-get install git -y && apt-get install screen -y && add-apt-repository main && add-apt-repository universe && add-apt-repository restricted && add-apt-repository multiverse && apt-get update -y && apt install ocl-icd-opencl-dev -y && apt-get install libmicrohttpd-dev libssl-dev cmake build-essential -y && apt-get install automake libtool make gcc -y && apt-get install libjansson-dev -y && apt-get update -y && add-apt-repository ppa:ubuntu-toolchain-r/test -y && apt-get update -y && apt-get install g++-5 -y

apt-get upgrade -y

update-initramfs -u -y && apt-get install libopenblas-dev liblapack-dev -y && apt-get install linux-image-generic linux-image-extra-virtual -y && apt-get install linux-source linux-headers-generic -y
 
apt-get install libglu1-mesa libxi-dev libxmu-dev -y && apt-get install build-essential && apt-get install python-pip python-dev -y && apt-get install python-numpy python-scipy -y && apt-get install libglu1-mesa libxi-dev libxmu-dev libglu1-mesa-dev -y && apt-get install apt-file -y && apt-file update -y

sudo update-alternatives --install /usr/bin/gcc gcc /usr/bin/gcc-5 1 --slave /usr/bin/g++ g++ /usr/bin/g++-5
curl -L http://www.cmake.org/files/v3.4/cmake-3.4.1.tar.gz | tar -xvzf - -C /tmp/
cd /tmp/cmake-3.4.1/ && ./configure && make && sudo make install && cd -
sudo update-alternatives --install /usr/bin/cmake cmake /usr/local/bin/cmake 1 --force
sudo apt install libmicrohttpd-dev libssl-dev libhwloc-dev -y

sudo apt-get autoremove -y

git clone https://github.com/talesribeiro/xmr-stak-cpu.git && cd xmr-stak-cpu && cmake -DCMAKE_CXX_COMPILER=/usr/bin/g++-5 -DCMAKE_CC_COMPILER=/usr/bin/gcc5 -DHWLOC_ENABLE=OFF && make install && cd bin && chmod +x xmr-stak-cpu

sudo sysctl -w vm.nr_hugepages=128
sudo ./xmr-stak-cpu config.txt

