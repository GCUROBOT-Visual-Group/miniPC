#!/bin/sh

# Anaconda3
cd ~/workspace/apps/Anaconda/Python-3.6-version
./Anaconda3-5.2.0-Linux-x86_64.sh
echo 'export PATH=/home/gcu/anaconda3/bin:$PATH"' >> ~/.bashrc

# bazel 0.24.1
cd ~/workspace/apps/bazel/0.24.1
./bazel-0.24.1-installer-linux-x86_64.sh --user
echo 'export PATH="$PATH:$HOME/bin"' >> ~/.bashrc
	# add at the end
	# export PATH="$PATH:$HOME/bin"
	# save and exit
source ~/.bashrc

exit
