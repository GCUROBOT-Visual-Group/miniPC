#!/bin/sh

# opencv-4.1.0
sudo apt-get install build-essential
sudo apt-get install cmake git libgtk2.0-dev pkg-config libavcodec-dev libavformat-dev libswscale-dev
sudo apt update
sudo add-apt-repository "deb http://security.ubuntu.com/ubuntu xenial-security main"
sudo apt update
sudo apt-get install python-dev python-numpy libjasper1 libtbb2 libtbb-dev libjpeg-dev libpng-dev libtiff-dev libjasper-dev libdc1394-22-dev

cd ~/workspace/opencv-4.1.0
mkdir build
cd ~/workspace/opencv-4.1.0/build
cmake -DCMAKE_BUILD_TYPE=Release \
      -DCMAKE_INSTALL_PREFIX=/usr/local \
      -DBUILD_opencv_python2=OFF \
      -DBUILD_opencv_python3=ON \
      -DWITH_TBB=ON \
      -DWITH_GTK=ON \
      -DOPENCV_EXTRA_MODULES_PATH=../opencv_contrib-4.1.0/modules \
      -DOPENCV_GENERATE_PKGCONFIG=YES \
      ../

NUM_CPU=$(nproc)
make -j$(($NUM_CPU - 1))
sudo make install

#sudo gedit /etc/ld.so.conf.d/opencv.conf
echo '/usr/local/lib' >> /etc/ld.so.conf.d/opencv.conf
	# add at the end 
	# /usr/local/lib
	# save and exit

#sudo gedit /etc/bash.bashrc
echo 'PKG_CONFIG_PATH=$PKG_CONFIG_PATH:/usr/local/lib/pkgconfig' >> /etc/bash.bashrc
echo 'export PKG_CONFIG_PATH' >> /etc/bash.bashrc
	# add at the end
	# PKG_CONFIG_PATH=$PKG_CONFIG_PATH:/usr/local/lib/pkgconfig
	# export PKG_CONFIG_PATH
	# save and exit

sudo ldconfig
# opencv-4.1.0

exit

