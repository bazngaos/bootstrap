#!/bin/bash
ROOTFS=rootfs
TOYBOX_VERSION=toybox-0.7.1
rm -rf TOYBOX_VERSION
tar -xvf $TOYBOX_VERSION.tar.gz
cd $TOYBOX_VERSION
make defconfig
make
PREFIX=../$ROOTFS make install
