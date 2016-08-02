#!/bin/bash
ROOTFS=rootfs
BUSYBOX_VERSION=busybox-1.25.0
rm -rf BUSYBOX_VERSION
tar -xvf $BUSYBOX_VERSION.tar.bz2
cd $BUSYBOX_VERSION
make defconfig
sed -i "s/.*CONFIG_STATIC.*/CONFIG_STATIC=y/" .config
make CC=../$ROOTFS/usr/bin/musl-gcc
make CONFIG_PREFIX=../$ROOTFS install
