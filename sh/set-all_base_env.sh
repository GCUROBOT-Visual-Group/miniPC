#!/bin/sh

sudo apt-get install sl
sl
cd ~/workspace/sh/
sudo chmod +x *

#chrome
#./install-chrome-stable.sh
#sl

# gcc/g++ version 4.8.5
#./change-gcc_version_to-4.8.5.sh
#sl

# opencv-4.1.0
#./build-opencv.sh
#sl

# Anaconda3 and bazel 0.24.1
./install_Anaconda3_and_bazel.sh

exit
