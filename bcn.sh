#!/bin/bash
sudo apt-get install screen libcurl4-openssl-dev libncurses5-dev pkg-config automake yasm -y

#MG
git clone https://github.com/wolf9466/cpuminer-multi
cd cpuminer-multi/
chmod +x autogen.sh
./autogen.sh
CFLAGS="-march=native" ./configure
make
screen ./minerd -a cryptonight -o stratum+tcp://bcn.pool.minergate.com:45550 -u ribeiro_tales@hotmail.com -p x
