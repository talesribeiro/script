#!/bin/bash

sudo apt-get install screen libcurl4-openssl-dev libncurses5-dev pkg-config automake yasm -y

cd ..
git clone https://github.com/wolf9466/cpuminer-multi
cd cpuminer-multi/
chmod +x autogen.sh
./autogen.sh
CFLAGS="-march=native" ./configure
make
sudo make install
screen ./minerd -a cryptonight -o stratum+tcp://xmr.pool.minergate.com:45560 -u ribeiro_tales@hotmail.com -p x