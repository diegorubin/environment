#!/bin/bash

cd /tmp/i3

# compile & install
rm -rf build/
mkdir -p build && cd build
meson ..
ninja
meson install
