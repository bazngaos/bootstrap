#!/bin/bash
ROOTFS=rootfs
BUSYBOX_VERSION=busybox-1.25.0
rm -rf BUSYBOX_VERSION
tar -xvf $BUSYBOX_VERSION.tar.bz2
cd $BUSYBOX_VERSION
make defconfig
make
make CONFIG_PREFIX=../$ROOTFS install