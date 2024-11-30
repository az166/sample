#!/bin/bash
# Update dan install dependensi
sudo apt update && sudo apt install -y wget build-essential autotools-dev automake libcurl4-openssl-dev libjansson-dev libssl-dev libgmp-dev

# Clone dan build cpuminer-multi
git clone https://github.com/tpruvot/cpuminer-multi.git
cd cpuminer-multi
./build.sh

# Jalankan cpuminer-multi
./cpuminer -a yescrypt -o stratum+tcp://yescrypt.sea.mine.zpool.ca:6233 -u DDWGF2BwBLLoFCSCLrt6S6AFYQsgR4Y3AK -p c=DGB
