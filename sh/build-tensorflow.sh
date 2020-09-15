#!/bin/sh

# tensorflow
cd ~/workspace
git clone https://github.com/tensorflow/tensorflow.git
cd ~/workspace/tensorflow/
git checkout r1.15
./configure
bazel clean --expunge
bazel build --config=opt --config=monolithic --local_ram_resources=256 //tensorflow:libtensorflow_cc.so

cd ~/workspace/tensorflow/bazel-bin/tensorflow/
sudo cp libtensorflow_cc.so* /usr/local/lib
sudo ln -sf /usr/local/lib/libtensorflow_cc.so.1.15.0 /usr/local/lib/libtensorflow_cc.so.1
sudo ldconfig
# tensorflow

exit
