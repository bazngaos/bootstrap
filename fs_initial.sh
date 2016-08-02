#!/bin/bash
ROOTFS=rootfs
rm -rf $ROOTFS
mkdir -p $ROOTFS/usr/sbin
mkdir -p $ROOTFS/usr/bin
mkdir -p $ROOTFS/usr/lib
ln -s usr/sbin $ROOTFS/sbin
ln -s usr/bin $ROOTFS/bin
ln -s usr/lib $ROOTFS/lib
