#!/bin/sh

# gcc/g++ version 4.8.5
sudo apt-get install -y gcc-4.8
sudo apt-get install -y g++-4.8
sudo rm /usr/bin/gcc
sudo ln -s /usr/bin/gcc-4.8 /usr/bin/gcc
sudo rm /usr/bin/g++
sudo ln -s /usr/bin/g++-4.8 /usr/bin/g++
gcc --version
g++ --version
# gcc/g++ version 4.8.5

exit
