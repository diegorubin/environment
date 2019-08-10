#!/bin/bash

cd /tmp/i3lock-color

autoreconf --force --install

mkdir build
cd build

../configure \
  --prefix=/usr \
  --sysconfdir=/etc \
  --disable-sanitizers

make
make install

