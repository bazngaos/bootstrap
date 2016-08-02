#!/bin/bash
ROOTFS=rootfs
MUSL_VERSION=musl-1.1.9
rm -rf MUSL_VERSION
tar -xvf $MUSL_VERSION.tar.gz
cd $MUSL_VERSION
./configure --prefix=../$ROOTFS
make
make install
