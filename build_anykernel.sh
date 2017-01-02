#!/bin/bash
#
# Copyright - CrazyGamerGR
#     		 ________     __   ___
#    		/ ______|    |  | /  |
#    		|  |         |  |/  /
#   		|  |_____    |      \              
#   		\_______|    |__|\___|
##########################################
export ARCH=arm64
export CROSS_COMPILE=/home/francesco/aarch64-linux-android-4.9-kernel/bin/aarch64-linux-android-
##########################################
mkdir outputh830
mkdir outputh850
##########################################
make -C $(pwd) O=outputh830 cyanogenmod_h830_defconfig
make -C $(pwd) O=outputh830

make -C $(pwd) O=outputh850 cyanogenmod_h850_defconfig
make -C $(pwd) O=outputh850
##########################################
cp outputh830/arch/arm64/boot/Image $(pwd)/arch/arm64/boot/zImage
cp outputh850/arch/arm64/boot/Image $(pwd)/arch/arm64/boot/zImage
