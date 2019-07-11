#!/bin/bash

cd /tmp/polybar

mkdir build
cd build
cmake ..
make -j4
make install
