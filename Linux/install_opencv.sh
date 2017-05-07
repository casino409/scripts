#!/bin/bash

# =========================================
# OpenCV ( in ~/opencv and opencv_release )

# I'm not sure
# $ sudo apt-get install libopencv-dev python-opencv

sudo apt-get install build-essential cmake git libgtk2.0-dev pkg-config libavcodec-dev libavformat-dev libswscale-dev python-dev python-numpy libtbb2 libtbb-dev libjpeg-dev libpng-dev libtiff-dev libjasper-dev libdc1394-22-dev

# it make take a very long time!
git clone https://github.com/opencv/opencv.git  ~/opencv

mkdir opencv_release
cd opencv_release
cmake -D CMAKE_BUILD_TYPE=RELEASE -D CMAKE_INSTALL_PREFIX=/usr/local  ~/opencv
make
sudo make install
